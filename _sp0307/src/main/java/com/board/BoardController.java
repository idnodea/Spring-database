package com.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import chap02.AppContext;
import chap02.Greeter;

@WebServlet("/")
public class BoardController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public BoardController() {
        super();
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
                                 throws ServletException, IOException {
        
    	AnnotationConfigApplicationContext ctx = 
				new AnnotationConfigApplicationContext(AppContext.class);
		Greeter g = ctx.getBean("greeter", Greeter.class);
		String msg = g.greet("스프링");
		System.out.println(msg);
		
		BoardService boardService = ctx.getBean(BoardService.class);
		ctx.close();  //main쪽에서 복사해옴
    	
    	String view = null;

        // URL에서 프로젝트 이름 뒷 부분의 문자열 얻어내기
        String uri = request.getRequestURI();
        String conPath = request.getContextPath();
        String com = uri.substring(conPath.length());

        // 주어진 URL에 따라 지정된 동작 수행
        if (com.equals("/list") || com.equals("/")) {
            String tmp = request.getParameter("page");
            int pageNo = (tmp != null && tmp.length() > 0)
                    ? Integer.parseInt(tmp) : 1;

            request.setAttribute("msgList",
                    //new BoardService().getMsgList(pageNo));
            		boardService.getMsgList(pageNo));
            request.setAttribute("pgnList",
                   // new BoardService().getPagination(pageNo));
            		boardService.getPagination(pageNo));
            view = "list.jsp";

        } else if (com.equals("/view")){
            int num = Integer.parseInt(request.getParameter("num"));

//            request.setAttribute("msg", new BoardService().getMsg(num));
            request.setAttribute("msg", boardService.getMsg(num));
            view = "view.jsp";

        } else if (com.equals("/write")){
            String tmp = request.getParameter("num");
            int num = (tmp != null && tmp.length() > 0)
                    ? Integer.parseInt(tmp) : 0;

            BoardDto dto = new BoardDto();
            String action = "insert";

            if (num > 0) {
//                dto = new BoardService().getMsgForWrite(num);
                dto = boardService.getMsgForWrite(num);
                action = "update?num=" + num;
            }

            request.setAttribute("msg", dto);
            request.setAttribute("action", action);
            view = "write.jsp";

        } else if (com.equals("/insert")){
            request.setCharacterEncoding("utf-8");
            String writer  = request.getParameter("writer" );
            String title   = request.getParameter("title"  );
            String content = request.getParameter("content");
            String num = request.getParameter("memberno");
            int memberno = Integer.parseInt(num);

            try {
//                new BoardService().writeMsg(writer, title, content, memberno);
                boardService.writeMsg(writer, title, content, memberno);
                view = "redirect:list";

            } catch(Exception e) {
                request.setAttribute("errorMessage", e.getMessage());
                view = "errorBack.jsp";
            }

        } else if (com.equals("/update")){
            request.setCharacterEncoding("utf-8");
            int num = Integer.parseInt(request.getParameter("num"));
            String writer  = request.getParameter("writer" );
            String title   = request.getParameter("title"  );
            String content = request.getParameter("content");

            try {
//                new BoardService().updateMsg(writer, title, content, num);
                boardService.updateMsg(writer, title, content, num);
                view = "redirect:list";

            } catch(Exception e) {
                request.setAttribute("errorMessage", e.getMessage());
                view = "errorBack.jsp";
            }

        } else if (com.equals("/delete")){
            int num = Integer.parseInt(request.getParameter("num"));

//            new BoardService().deleteMsg(num);
            boardService.deleteMsg(num);
            view = "redirect:list";
        } else if (com.equals("/loginForm")) {
        	view = "loginForm.jsp";
        } else if (com.equals("/login")) {
        	String id = request.getParameter("id");
        	String pw = request.getParameter("pw");
        	MemberDto memberDto = new MemberDao().selectMember(id, pw);
        	if (memberDto.getMemberno() == 0) {
        		System.out.println("로그인 실패");
        		view = "redirect:loginForm";
        	} else {
        		System.out.println(memberDto);
        		HttpSession session = request.getSession();
        		session.setAttribute("member", memberDto);
        		view = "redirect:list";
        	}
        	
        }

        // view에 담긴 문자열에 따라 포워딩 또는 리다이렉팅
        if (view.startsWith("redirect:")) {
            response.sendRedirect(view.substring(9));
        } else {
            request.getRequestDispatcher(view).forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                                  throws ServletException, IOException {
        doGet(request, response);
    }
}
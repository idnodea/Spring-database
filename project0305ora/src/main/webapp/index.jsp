<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="icon" type="image/png" href="http://example.com/myicon.png"> 
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script|Nanum+Gothic:400,700,800|Nanum+Myeongjo:400,700,800|Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=DM+Serif+Display:400,400i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Aleo:400,400i,700&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <script src="https://kit.fontawesome.com/97e21da77b.js" crossorigin="anonymous"></script> 
     <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
<link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        *{padding: 0; margin: 0; position: relative;}
         a:link {  text-decoration: none;} 
            a:visited { text-decoration: none;} 
            a:hover { }
        .warp{position: relative; margin: 0 auto; background:black;
              width:  100vw; height:  100vh;  }
        /*header*/
        .header{
    margin: 0 auto;
    display: flex;
    position: fixed;
    transform: translate3d(0,0,0);
    transform: translate3d(0,0,0);
    top: 0;
    left: 0;
    width: 100%;
    height: 9vh;
    z-index: 105;
    background-color: #242424;
    border:none;
    /*box-shadow: 0 1px 0 0 rgba(255,255,255,.5); */
    box-sizing: border-box;
    text-align: center;
    font-family:'Nanum Gothic' ,sans-serif;
    transform: translateY(0px);
    transition: all 1s cubic-bezier(0.19, 1, 0.22, 1);}
        .header>.menu_logo{margin: 1vw 0 0 2vw;max-width: 187px;width: 12vw; cursor: pointer;}
        .header>.menu_logo img{width: 100%; }
        .header .menu_ul{margin: auto;position: absolute;left: 5vw;right: 0;padding: 1.5vw 0 1vw;text-align: center; width: 63vw; display: flex; list-style: none;
        letter-spacing: 4px; max-width: ; cursor: pointer; height: 7vh;}
        .header .menu_ul a{display: inline-block; width: 100%; height: ;padding: 0 1vw 0 1.2vw; color: white; text-decoration: none;
        
        }
        .header .menu_ul a:hover{background-image: url(img/icon_current_left.png), url(img/icon_current_right.png);
        background-position: 0 0, right 0;
        background-repeat: no-repeat;
        background-size: contain;
        border-bottom: 1px solid rgba(0, 0, 0, 0);
        border-top: 1px solid rgba(0, 0, 0, 0);
        padding: 0 1vw 0 1.2vw;}
        .header .menu_ul li{display: block;font-size: 1.4vw; color: white;}
        /*login box*/
        .header .login_box{text-align: center;margin: 0 12vw 0 0;position: relative;z-index: 2; margin: 0;justify-content:space-between; align-items: center; letter-spacing: 4px; height:45px; position: absolute; top: 0; right: 0;}
        .header .login_box>.login_btn{width: 100%; }
        /* 로그인 버튼 <a> 태그 스타일 */
		.header .login_box>.login_btn a {
   			 display: block; /* 블록 요소로 변경하여 전체 영역이 클릭 가능하게 함 */
  		 	 width: 12vw;
   			 min-width: 126px;
   			 margin: 0;
   			 height: 9vh;
  			  background-image: linear-gradient(90deg, #860404 0%, #c51212 100%);
  			  text-align: center;
  			  line-height: 9vh; /* p 태그 대신 여기서 높이를 조정하여 세로 중앙 정렬 */
   			 color: white; /* 텍스트 색상 */
   			 text-decoration: none; /* 밑줄 제거 */
   			 cursor: pointer;
		}

		/* 로그인 버튼 호버 효과 */
		.header .login_box>.login_btn a:hover {
   			 text-decoration: underline; /* 호버 시 밑줄 표시 */
   			 background-image: linear-gradient(60deg, #c51212 100%,#860404 0%);
   			 color: #BEEFFF;
   			 transition: background-color 0.5s;
   			 text-decoration: none;
		}
			
        align-items: center; justify-content: center; padding: 1.5vw 0 1vw;}
        @media (max-width:349px){
            .header .menu_ul{display: none;}
          
        }
        
        @media (min-width:350px) and (max-width:800px){
    .header{
    background: rgba(0, 0, 0, 0.8);
    border-bottom: ;
    letter-spacing: 2px;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 99;}   
        
    .header .menu_logo{display: flex;
    width: 30vw;
    margin: 1vw 0 0 2%;
    min-width: 120px;
    text-align: right;
    position: relative;
    z-index: 2;}  
     .header .menu_ul{display: none;}  
     .header .ham_bar{
    background-size: 100% auto;
    cursor: pointer;
    text-align: center;
    display: block;
    width: 3vw;
    height: 50%;
    line-height: 0;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 3;}  
    .header .login_box>.login_btn p{
    font-size: 1.4vw;
    padding-top: 2vw;
    line-height: 4vh;        }        
        }
        
            
        @media (min-width:801px) and (max-width:1600px){
            .header .ham_bar{display: ;}
            .header .login_box>.login_btn p{font-size: 1.4vw; text-align: center;
            align-items: center; justify-content: center; padding-top: 1vw;}
        }
        @media(min-width:1601px){
            .header{padding-bottom: 2%;}
            .header .login_box>.login_btn p{font-size: 1.4vw; text-align: center;
            align-items: center; justify-content: center; padding-top: 1vw;}
        }
        
        .ham_group{
    top: 2vw;
    right: 1.5vw;
    margin-left:30px;}
        
        .ham_group span:nth-child(1){
    position: absolute;
    top:50%;
    left: 1px;
    width: 100%;
    height: 2px;
    background: #ff0d29;
    border-radius: 10px;
    
    transition: all 330ms;}
       .ham_group span:nth-child(2){
    position: absolute;
    top:70%;
    left: 1px;
    width: 100%;
    height: 2px;
    background: #ff0d29;
    border-radius: 10px;
    
    transition: all 330ms;} 
            .ham_group span:nth-child(3){
    position: absolute;
    bottom:0px;
    left: 1px;
    width: 100%;
    height: 2px;
    background: #ff0d29;
    border-radius: 10px;
    
    transition: all 330ms;}
    
        /*x바 변환*/
         .x_bar{ cursor: pointer; z-index: 3;}
        .x_bar>span{display:inline-block;
            background-color:white;}
        .x_bar>span:nth-child(1){transform:translate(0,0) rotate(330deg);}
        .x_bar>span:nth-child(2){transform:translate(0,0) rotate(330deg);}
        .x_bar>span:nth-child(3){transform:translate(0,0) rotate(-210deg);}  
        /*home menu*/
        .pop_black{width:100vw; height: 100vh; background-color: rgba(0, 0, 0, 0.8); position: fixed; top:0; left: 0; z-index: 11; display: none; max-width: 1100px;}
        .home_menu{max-width:1100px; width:100%; margin: 0 auto; display:none; position: fixed; top:100px; left: 0px; background-color: black; z-index: 12}
        .home_menu ul{font-size: 60px; transition: 0.3s 0.1s; box-sizing: border-box; box-shadow: 0 -3 5px rgba(2,0,0,0.5), inset; 
        }
        .home_menu ul li{text-align: center; border-bottom: 1px solid white; }
        .home_menu ul li a{color: white; cursor: pointer; text-decoration: none;}
        .home_menu ul li:nth-last-child(){border-bottom:none; justify-content: center; align-items: center;}
        /*page*/
        .page_group{width:100vw; height: 100vh; margin: 0 auto;}
        /*section1*/
        .section1{
        margin: 0 auto; 
        justify-content: center; 
        align-items: center;
        width: 100vw; height: 100vh;
        perspective: 1px;
        transform-style: preserve-3d;}
        
        .section1>.item1>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0; z-index: 2;}
        
        
        .section1>.item2{}
        
        
        .section1>.item3{}
        
        .section1>.item4{
        position: absolute;
        z-index: 3;
        margin: 0 auto; 
        box-sizing:;
        overflow:; 
        
        top: 80%; left: 5%;
        align-items: center; justify-content: center; 
        background-color: ;
        width: 90%; height: 100px;
        text-align: center; color:;
        display: flex;}
        
        .section1>.item5{position: absolute;z-index: 1; margin: 0 auto;top: 0; left: 0;}
        
        .section1>.item4{}
       
        .section1>.item4>.content{position: relative; height: 100%; background-color:#060c21; justify-content: center; align-items: center;
        border:none; padding:0 5px; cursor: pointer;
        margin-right: 30px; box-sizing: border-box; width: 30%;}
        .section1>.item4>.content:last-child{margin-right: 0;}
        .section1>.item4>.content:before{
          content: '';
          position: absolute;
          top: -2px;  
          bottom: -2px;  
          left: -2px;  
          right: -2px; 
          background: #000;  
           transform: skew(2deg,2deg);
            z-index: -1;
            
        }
        .section1>.item4>.content:nth-child(1):hover {
            animation:bordern1 2s infinite; 
        }
        @keyframes bordern1{
            0%{background: linear-gradient(315deg,#3a18cb,#e64a19);}
            100%{background: linear-gradient(315deg,#e64a19,#3a18cb);}
        }
        .section1>.item4>.content:nth-child(2):hover {
            animation:bordern2 2s infinite; 
        }
        @keyframes bordern2{
            0%{background: linear-gradient(315deg,#3a18cb,#19e6e6);}
            100%{background: linear-gradient(315deg,#19e6e6,#3a18cb);}
        }
        .section1>.item4>.content:nth-child(3):hover {
            animation:bordern3 2s infinite; 
        }
        @keyframes bordern3{
            0%{background: linear-gradient(315deg,#19e6e6,#19e648);}
            100%{background: linear-gradient(315deg,#19e648,#19e6e6);}
        }
        
        .section1>.item4 .content:nth-child(1):before{
            background: linear-gradient(315deg,#3a18cb,#e64a19);
        }
        .section1>.item4 .content:nth-child(2):before{
            background: linear-gradient(315deg,#3a18cb,#19e6e6);
        }
        .section1>.item4 .content:nth-child(3):before{
            background: linear-gradient(315deg,#19e6e6,#19e648);
        }
        .section1>.item4>.content>h2{position: absolute; top: -0px;
        right:20px; margin: 0; padding: 0; font-size: 3em; color: rgba(255,255,255,0.2);
        transition: 0.3s;}
        @media (max-width:570px){
            .section1>.item4>.content>h2{font-size: 1em !important;}
        }
        .section1>.item4>.content:hover h2{color: rgba(255,255,255,0.8);}
        .section1>.item4>.content:hover h3{color:rgba(255,255,255,0.2); }
        .section1>.item4>.content:hover a{
         opacity:1;    
        transition: 0.4s;
        visibility:visible;
        transform: translateY(-45px);     
        }
        .section1>.item4>.content a:hover{
        color: #fff;
        background-color: #000;
            border:1px solid #fff;
        }
        
        .section1>.item4>.content>h3{color: #fff; font-size: 2em; line-height: 2em;}
        
        .section1>.item4>.content>a{
        position: relative;
        margin: 0; padding: 0px 20px;
            line-height: 10px;
        text-decoration: none;
        
        display: inline-block;
         color: #000;
        background-color: #fff;
            border:1px solid #000;
        opacity: 0;    
        transition: 0.4s;
        visibility: hidden;
        transform: translateY(0px);
        cursor: pointer;
        height: 30px;}
        
        .section1>.item4>.content p{padding-top: 10px; font-size: 16px;}
       
        @media(min-width:851px){
       .section1>.item1{width:80vw; left:calc(50% - 40vw);  height: 70vh; top:9%; margin: 0 auto;
        position:absolute; display:block; justify-content: center; align-items: center;} 
        .section1>.item2{position:absolute;z-index: 5; top: 58%; left: calc(50% - 30vw);
        display: flex;justify-content: space-around; 
        margin: 0 auto; align-items: center; width: 60vw; height: 100px; }
             
        .section1>.item3{position: absolute;z-index: 4;margin: 0 auto;
            top: 68%; left: 35vw;  margin: 0 auto; align-items: center; width: 30vw; height: 100px; text-align: center; color: white;}   
         .section1>.item2>img{width:10vw; height:5vh; margin-right: 1vw; }  
            
        }
        @media (min-width:551px) and (max-width:850px){
            .section1>.item1{
            width: 70vw;
            left: calc(50% - 35vw);
            height: 40vh;
            top:10%; 
            margin: 0 auto;
            position:absolute;
            display:block; 
            justify-content: center; 
            align-items: center;     
            }
            .section1>.item2{position:absolute;z-index: 5; top: 48%; left:calc(50% - 25vw);
        display: flex;justify-content: space-around; 
        margin: 0 auto; align-items: center; width: 50vw; height: 100px; }
            .section1>.item3{position: absolute;z-index: 4;margin: 0 auto;
            top: 58%; left: 35vw;  margin: 0 auto; align-items: center; width: 30vw; height: 100px; text-align: center; color: white;}
            .section1>.item2>img{width:15vw; height:5vh; margin-right: 1vw; }
        }
        @media (max-width:550px) {
            .section1>.item1{
            width: 80vw;
            left: calc(50% - 40vw);
            height: 40vh;
                top:10%; }
            .section1>.item2{    
    position: absolute;
    z-index: 5;
    top: 48%;
    left:calc(50% - 25vw);
    display: ;
    justify-content: space-around;
    margin: 0 auto;
    align-items: center;
    width: 30vw;
    height: 100px;}
            .section1>.item2>img{margin-bottom: 12px;}
            .section1>.item3{
                display: none;
    position: absolute;
    z-index: 4;
    margin: 0 auto;
    top: 58%;
    left: 35vw;
    margin: 0 auto;
    align-items: center;
    width: 30vw;
    height: 100px;
    text-align: center;
    color: white;
            }
            .section1>.item3>h1{position: absolute; top: 0; left: 0;}
            
        }
         /*section2*/
        .section2{margin: 0 auto; 
            width: 100vw; height: 100vh;
            background-image: url(img/bg_about.jpg);
             background-size: cover;
            background-repeat: no-repeat;
        }
        .section2>.item1{top: 0%; left:;width:30vw; height:10vh;
        transition: all 1s 0.4s cubic-bezier(0.19, 1, 0.22, 1);}
        .section2 .title_text{padding-right: 2vw;padding-left:2vw; padding-top: 10vh;
            margin-left: 1vw; }
        .section2 .title_text h1{letter-spacing: -2px; text-shadow: 0 0 16px #000; position:absolute; top: 110%; left: 1.5%;
        letter-spacing: 2px;
        }
        .section2 .underbar{width: 35vw; height: 30px;  top:208%; left: -4.3%; position: absolute; transform: scaleX(1);}
        .section2 .underbar>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0; }
        .section2 .redbar{width: 15vw; height: 20px;   top:230%; left: -4.3%; position: absolute; transform: scaleX(1);}
        .section2 .redbar>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0;}
        .section2 .bluebar{width: 10vw; height: 20px;   top:230%; left: 30%; position: absolute; transform: scaleX(1);}
        .section2 .bluebar>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0;}
        /*폰트결정 font*/
        .section2 .title_text h1{font-family: 'DM Serif Display', serif;}
        .section2 .item2{font-family: 'Aleo', serif; font-weight: ligtht; letter-spacing: 1px;}
        .section2 .item3{font-family: 'Aleo', serif; font-weight: 300;}
        .section3 .title_text h1
        .section4 .title_text h1{font-family: 'DM Serif Display', serif;}
        .section4 .item2{font-family: 'Aleo', serif; font-weight: ligtht; letter-spacing: 1px;}
        .section4 .item3{font-family: 'Aleo', serif; font-weight: 300;}
        
        @media(max-width:600px){
            .title_text h1{    
    position: absolute;
    top: 148%;
    left: -4.3%;}
            .item3{padding-top:25vh; font-size: 4vw !important;}  
        }
        
        @media(max-width:814px){
            .section2 .title_text{height: 10vh;}
            .section2 .title_text h1{font-size: 10vw; color: white; z-index: 2;}
    }
        @media(min-width:815px){
            .section2 .title_text h1{font-size: 10vh;color: white;z-index: 2}
    }
        
        @media(max-width:975px){
            .section2>.item1{
               
            }    
        .section2 .item2{
           
        font-size: 4.6vw;
        padding-right: 2vw;
        padding-left:2vw;
        padding-top: 19vh; 
        width:80vw; height:10vh; 
        margin-left: 1vw;}
        .section2 .item2 p{color: white; background-color: rgba(0,0,0,0.6);}    
        .section2 .item3{
           
        font-size: 3.2vw;
        padding-right: 2vw;
        padding-left: 2vw;
        padding-top: 35vh;
        width: 85vw;
        height: 10vh;
        margin-left: 1vw;}
        .section2 .item3 p{color: white;
        }
        .section2 .item4{
         width: 100%; height: 100%;   
        }
        .section2 .item4>img{
         width: 100%; height: 100%;   
        }    
    }
         @media(min-width:976px) and (max-width:1441px){
             .section2 .item2{
        font-size: 2.5vw;
        padding-right: 2vw;
        padding-left:2vw;
        padding-top: 20vh; 
        width:60vw; height:10vh; 
        margin-left: 1vw;}  
        .section2 .item2 p{color: white;}     
             .section2 .item3{
        font-size: 3.2vw;
        padding-right: 2vw;
        padding-left: 2vw;
        padding-top: 25vh;
        width: 80vw;
        height: 10vh;
        margin-left: 1vw;} 
        .section2 .item3 p{color: white; background-color: rgba(0,0,0,0.6);
        }     
        .section2 .item4{position: absolute;
            top: 0; left: 0;
         width: 100%; height: 100%;   
        }
        .section2 .item4>img{
         width: 100%; height: 100%;   
        }       
    }
        @media(min-width:1442px){
             .section2 .item2{
        font-size: 2.3vw;
        padding-right: 2vw;
        padding-left:2vw;
        padding-top: 20vh; 
        width:70vw; height:10vh; 
        margin-left: 1vw;}  
        .section2 .item2 p{color: white;}     
             .section2 .item3{
        font-size: 2.2vw;
        padding-right: 2vw;
        padding-left: 2vw;
        padding-top: 23vh;
        width: 80vw;
        height: 10vh;
        margin-left: 1vw;} 
        .section2 .item3 p{color: white;background-color: rgba(0,0,0,0.6);
        }     
        .section2 .item4{position: absolute;
            top: 0; left: 0;
         width: 100%; height: 100%;   
        }
        .section2 .item4>img{
         width: 100%; height: 100%;   
        }       
            
        }
         /*border_more*/
        .border_more{
        
         transition: 0.4s;  
        cursor: pointer;
        }
        @keyframes border_grad1{
            0%{background: #ff0d29; opacity: 0;}
            100%{background: #12f3f6;opacity: 1;}
        }
        @keyframes border_grad2{
            0%{background: linear-gradient(90deg, #ff0d29 30%, #12f3f6 50%);
            opacity: 0;}
            100%{background:linear-gradient(90deg, #12f3f6 30%, #ff0d29 50%);
            opacity: 1;}
        }
        @keyframes border_grad3{
            0%{background: #12f3f6;
            opacity: 0;}
            100%{background: #ff0d29;
            opacity: 1;}
        }
        @keyframes border_grad4{
            0%{background:linear-gradient(90deg, #ff0d29 45%, #12f3f6 70%);
            opacity: 0;}
            100%{background:linear-gradient(90deg, #12f3f6 45%, #ff0d29 70%);
            opacity: 1;}
        }
        .border_more>span:nth-child(1){position: absolute;
    left: 0; 
    background: #ff0d29;
    width: 1px;
    height: 100%;
    top: 0;}
        .border_more>span:nth-child(2){position: absolute;
    top:0;
    background: linear-gradient(90deg, #ff0d29 30%, #12f3f6 50%);
    width: 100%;
    height: 1px;
    left: 0;}
        .border_more>span:nth-child(3){position: absolute;
    right: 0;
    background: #12f3f6;
    width: 1px;
    height: 100%;
    top: 0;}
        .border_more>span:nth-child(4){position: absolute;
    bottom: 0;
    background: linear-gradient(90deg, #ff0d29 45%, #12f3f6 70%);
    width: 100%;
    height: 1px;
    left: 0;}
        .border_more:hover span:nth-child(1){animation: border_grad1 2s infinite;}
        .border_more:hover span:nth-child(2){animation: border_grad2 2s 0.2s infinite;}
        .border_more:hover span:nth-child(3){animation: border_grad3 2s 0.3s infinite;}
       .border_more:hover span:nth-child(4){animation: border_grad4 2s 0.4s infinite;}  
        
        
        
        /*section3*/
          .section3{margin: 0 auto; 
            width: 100vw; height: 100vh;
            background-color:rgba(0, 0, 0, 0.4);
            background-image: url();
             background-size: ;
            background-repeat: ;
            position:;
        }
        .section3>.item1{top: 0%; left:0;width:30vw; height:10vh;
        transition: all 1s 0.4s cubic-bezier(0.19, 1, 0.22, 1); z-index: 3;}
        .section3 .title_text{padding-right: 2vw;padding-left:2vw; padding-top: 10vh;
            margin-left: 1vw; }
        .section3 .title_text h1{letter-spacing: -2px; text-shadow: 0 0 16px #000; position:absolute; top: 110%; left: 1.5%;font-family: 'DM Serif Display', serif;
        letter-spacing: 2px;
        }
        .section3 .underbar{width: 35vw; height: 30px;  top:208%; left: -4.3%; position: absolute; transform: scaleX(1);}
        .section3 .underbar>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0; }
        .section3 .redbar{width: 15vw; height: 20px;   top:230%; left: -4.3%; position: absolute; transform: scaleX(1);}
        .section3 .redbar>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0;}
        .section3 .bluebar{width: 10vw; height: 20px;   top:230%; left: 30%; position: absolute; transform: scaleX(1);}
        .section3 .bluebar>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0;}
        .section3 .item2{display: none;}
        .section3 .item3{display: none;}
        
        @media(max-width:814px){
            .section3 .title_text{height: 10vh;}
            .section3 .title_text h1{font-size: 10vw; color: white; z-index: 2;}
    }
        @media(min-width:815px){
            .section3 .title_text h1{font-size: 10vh;color: white;z-index: 2}
    }
        
        @media(max-width:975px){
            .section3>.item1{
               
            }    
        .section3 .item2{
           
        font-size: 4.6vw;
        padding-right: 2vw;
        padding-left:2vw;
        padding-top: 19vh; 
        width:80vw; height:10vh; 
        margin-left: 1vw;}
        .section3 .item2 p{color: white;}    
        .section3 .item3{
           
        font-size: 3.2vw;
        padding-right: 2vw;
        padding-left: 2vw;
        padding-top: 25vh;
        width: 85vw;
        height: 10vh;
        margin-left: 1vw;}
        .section3 .item3 p{color: white;
        }
        .section3 .item4{
         width: 100%; height: 100%;   
        }
        .section3 .item4>img{
         width: 100%; height: 100%;   
        }
        .section3 .item5{position: absolute; top: 100px;left: 0;}     
        .section3 .item6{position: absolute; bottom: 100px; left:calc(50% - 100px);
             width: 200px; height: 50px; background-color: white; display: none;}     
        .section3 .item6>.border_more{position: absolute; top: 0; left: 0;
            text-align: center;line-height: 50px;font-size: 20px;
            background: rgba(0, 0, 0, 0.2);
            color: rgba(255,255,255,0.6);
            width: 100%;}       
    }
         @media(min-width:976px) and (max-width:1441px){
             .section3 .item2{
        font-size: 2.5vw;
        padding-right: 2vw;
        padding-left:2vw;
        padding-top: 20vh; 
        width:40vw; height:10vh; 
        margin-left: 1vw;}  
        .section3 .item2 p{color: white;}     
             .section3 .item3{
        font-size: 3.2vw;
        padding-right: 2vw;
        padding-left: 2vw;
        padding-top: 25vh;
        width: 80vw;
        height: 10vh;
        margin-left: 1vw;} 
        .section3 .item3 p{color: white;
        }     
        .section3 .item4{position: absolute;
            top: 0; left: 0;
         width: 100%; height: 100%;   
        }
        .section3 .item4>img{
         width: 100%; height: 100%;   
        }
        .section3 .item5{}     
        .section3 .item6{position: absolute; bottom: 100px; left:calc(50% - 100px);
             width: 200px; height: 50px; background-color: white; display: none;}     
        .section3 .item6>.border_more{position: absolute; top: 0; left: 0; text-align: center; line-height: 50px;font-size: 30px;
             background: rgba(0, 0, 0, 0.2);
             color: rgba(255,255,255,0.6);
             width: 100%;}    
             
    }
        @media(min-width:1442px){
              .section3 .item2{
        font-size: 2.5vw;
        padding-right: 2vw;
        padding-left:2vw;
        padding-top: 20vh; 
        width:40vw; height:10vh; 
        margin-left: 1vw;}  
        .section3 .item2 p{color: white;}     
             .section3 .item3{
        font-size: 3.2vw;
        padding-right: 2vw;
        padding-left: 2vw;
        padding-top: 25vh;
        width: 80vw;
        height: 10vh;
        margin-left: 1vw;} 
        .section3 .item3 p{color: white;
        }     
        .section3 .item4{position: absolute;
            top: 0; left: 0;
         width: 100%; height: 100%;   
        }
        .section3 .item4>img{
         width: 100%; height: 100%;   
        }
        .section3 .item5{}     
        .section3 .item6{position: absolute; top:calc(50% - 25px); left:calc(50% - 100px);
             width: 200px; height: 50px; background-color: white; display: none;}     
        .section3 .item6>.border_more{position: absolute; top: 0; left: 0;
            text-align: center;line-height: 50px;font-size: 30px;
            background: rgba(0, 0, 0, 0.2); color: rgba(255,255,255,0.6);
            width: 100%;}
            
        }
        /*section3 slide*/
         /*main*/
        
        /*각 아이템*/
        .section3{}
        .section3 .slide_box{position:absolute;top:0;left:0;background:;
            width:100vw; height:100vh; overflow-x: hidden;}
        .section3 .slide_item{
            cursor: pointer;
            position:absolute;
            transition: 0.4s ease;
            width:0px; height:40vh;
            left:calc(50% - 0px);
            top:calc(50% - 20vh);

            overflow:;
        }
        .slide_item>*{}
        .slide_item>.back-img{position:absolute; 
            left:calc(50% - 50vw);
            top:calc(50% - 50vh);
            width:100vw; height:100vh; 
            background-size:cover; background-position: center center; 
            }
        .slide_item>.back-img1{background-image:url(img/BG-n.jpg);}
        .slide_item>.back-img2{background-image:url(img/BG-n2.jpg);}
        .slide_item>.back-img3{background-image:url(img/BG-n3.jpg);}
        .slide_item>.back-img4{background-image:url(img/BG-n4.jpg);}
        .slide_item>.back-img5{background-image:url(img/BG-n5.jpg);}
        .slide_item>.view{
            left:calc(50% - 50vw);
            top:calc(50% - 50vh);
            width:100vw; height:100vh;display:flex; align-items:center; justify-content:center;}
        .slide_item>.view>img{ 
            }
        .slide_item .con_title{position: absolute; top: 0; left: 0; color: #f0eaea; background-color: rgba(0,0,0,0.7); font-size: 3vw; width: 100%; text-align: center; letter-spacing: -2px;}
        .slide_item:hover .con_title{letter-spacing: 1px; font-size: 3.5vw; background-color:rgba(0,0,0,0.5); transition: 0.4s ease; color:white;}
        .slide_item>.con_subtitle{position: absolute; bottom: 1.5vh; left: 0; color: white; background-color: rgba(0,0,0,0.6); font-size: 2.0vw; width: 100%; text-align: center; z-index: 2;}
        .slide_item:hover .con_subtitle{transition: 0.5s ease;
         background-color: rgba(0,0,0,0.4); font-size: 2.2vw; color: aliceblue; 
        }
        .slide_item>.contents{}
        .slide_item>.contents>*{margin:0 auto;}
        .slide_item>.contents .article{}
       
        .slide_item>.contents h1{margin:20px auto;}
        .slide_item>.contents h1{font-size:3vw;}
        .slide_item>.contents p{ margin-top:5px; margin-bottom:10px;
        font-size:1.3vw;line-height:25px;color:#666666; text-indent: 16px;}
        
        .section3 .slide_item:hover span:nth-child(1){animation: border_grad1 2s infinite;}
        .section3 .slide_item:hover span:nth-child(2){animation: border_grad2 2s 0.2s infinite;}
        .section3 .slide_item:hover span:nth-child(3){animation: border_grad3 2s 0.3s infinite;}
        .section3 .slide_item:hover span:nth-child(4){animation: border_grad4 2s 0.4s infinite;} 
      /*section4*/
          .section4{margin: 0 auto; 
            width: 100vw; height: 100vh;
            background-image: url(img/bg_system.jpg);
             background-size: cover;
            background-repeat: no-repeat;
        }
        .section4 .border_more{
         position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
         transition: 0.4s;  
        cursor: pointer;
        }
        .section4>.item1{top: 0%; left:0;width:30vw; height:10vh;
        transition: all 1s 0.4s cubic-bezier(0.19, 1, 0.22, 1);}
        .section4 .title_text{padding-right: 2vw;padding-left:2vw; padding-top: 10vh;
            margin-left: 1vw; }
        .section4 .title_text h1{letter-spacing: -2px; text-shadow: 0 0 16px #000; position:absolute; top: 110%; left: 1.5%;font-family: 'DM Serif Display', serif;
        letter-spacing: 2px;}
        .section4 .underbar{width: 35vw; height: 30px;  top:208%; left: -4.3%; position: absolute; transform: scaleX(1);}
        .section4 .underbar>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0; }
        .section4 .redbar{width: 15vw; height: 20px;   top:230%; left: -4.3%; position: absolute; transform: scaleX(1);}
        .section4 .redbar>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0;}
        .section4 .bluebar{width: 10vw; height: 20px;   top:230%; left: 30%; position: absolute; transform: scaleX(1);}
        .section4 .bluebar>img{width: 100%; height: 100%; position: absolute; top: 0; left: 0;}
        .section4 .item2{}
        .section4 .item3{}
        
        @media(max-width:814px){
            .section4 .title_text{height: 10vh;}
            .section4 .title_text h1{font-size: 10vw; color: white; z-index: 2;}
    }
        @media(min-width:815px){
            .section4 .title_text h1{font-size: 10vh;color: white;z-index: 2}
    }
        
        @media(max-width:975px){
            .section4>.item1{
               
            }    
        .section4 .item2{
           
        font-size: 5vw;
        padding-right: 2vw;
        padding-left:2vw;
        padding-top: 20vh; 
        width:80vw; height:10vh; 
        margin-left: 1vw;}
        .section4 .item2 p{color: white; background-color: rgba(0,0,0,0.6);}    
        .section4 .item3{
           
        font-size: 3.4vw;
        padding-right: 2vw;
        padding-left: 2vw;
        padding-top: 25vh;
        width: 85vw;
        height: 10vh;
        margin-left: 1vw;}
        .section4 .item3 p{color: white;
        }
        .section4 .item4{
         width: 100%; height: 100%;   
        }
        .section4 .item4>img{
         width: 100%; height: 100%;   
        }    
    }
         @media(min-width:976px) and (max-width:1440px){
             .section4 .item2{
        font-size: 2.5vw;
        padding-right: 2vw;
        padding-left:2vw;
        padding-top: 20vh; 
        width:40vw; height:10vh; 
        margin-left: 1vw;}  
        .section4 .item2 p{color: white;}     
             .section4 .item3{
        font-size: 3.4vw;
        padding-right: 2vw;
        padding-left: 2vw;
        padding-top: 25vh;
        width: 80vw;
        height: 10vh;
        margin-left: 1vw;} 
        .section4 .item3 p{color: white;background-color: rgba(0,0,0,0.6);
        }     
        .section4 .item4{position: absolute;
            top: 0; left: 0;
         width: 100%; height: 100%;   
        }
        .section4 .item4>img{
         width: 100%; height: 100%;   
        }       
    }   
        @media(min-width:1441px){
          .section4 .item2{
        font-size: 2.3vw;
        padding-right: 2vw;
        padding-left:2vw;
        padding-top: 20vh; 
        width:70vw; height:10vh; 
        margin-left: 1vw;}  
        .section4 .item2 p{color: white;}     
        .section4 .item3{
        font-size: 2.2vw;
        padding-right: 2vw;
        padding-left: 2vw;
        padding-top: 23vh;
        width: 80vw;
        height: 10vh;
        margin-left: 1vw;} 
        .section4 .item3 p{color: white;background-color: rgba(0,0,0,0.6);
        }     
        .section4 .item4{position: absolute;
            top: 0; left: 0;
         width: 100%; height: 100%;   
        }
        .section4 .item4>img{
         width: 100%; height: 100%;   
        }       
                
        } 
       
        /*footer*/
        .footer{
        }
        /*footer item1*/
        .footer>.item1{}
        .footer>.item1>h1{}
        .footer>.item1>p{}
        .footer>.item1>.icon_group2{}
        .footer>.item1>.icon_group2>nav{}
        .footer>.item1>.icon_group2>nav>ul{display: flex;}
        .footer>.item1>.icon_group2>nav>ul>li{display: inline-block;
        }
        .footer>.item1>.icon_group2>nav>ul> a{}
        .footer>.item1>.icon_group2>nav>ul> i{}
        /*footer item2*/
        .footer>.item2>.left_box{width: 49%;}
        .footer>.item2>.left_box>h1{}
        .footer>.item2>.left_box>.infobox{}
        .footer>.item2>.left_box>.infobox>div:nth-child(1){}
        .footer>.item2>.left_box>.infobox>div:nth-child(1)>p:nth-child(1){}
        .footer>.item2>.left_box>.infobox>div:nth-child(1)>p:nth-child(2){}
        .footer>.item2>.left_box>.infobox>div:nth-child(5){}
        .footer>.item2>.left_box>.infobox>div:nth-child(5)>p:nth-child(1){}
        .footer>.item2>.left_box>.infobox>div:nth-child(5)>p:nth-child(2){}
        .footer>.item2>.left_box>.settiopbox{}
        
        .footer>.item2>.right_box{width: 49%;}
        .footer>.item2>.right_box>div:nth-child(1){}
        .footer>.item2>.right_box>div:nth-child(2){}
        .footer>.item2>.right_box>div:nth-child(2)>p{}
        /*footer .item3*/
        .footer>.item3{}
        .footer>.item3>.div{}
        .footer>.item3>p{}
        /*footer .item4*/
        .footer>.item4{}
        .footer>.item4>p:nth-child(1){}
        .footer>.item4>p:nth-child(2){}
   
        @media(max-width:975px){
             .footer{margin: 0 auto; 
        justify-content: center; 
        align-items: center;
        width: ; height: ;
        perspective: 1px;
        transform-style: preserve-3d;
        background: #17181e;
                 color: #c3c3c3;
                height: auto;}
            
            .footer{display: ;
            
            padding-right: 2.1vw; padding-left: 2vw;}
            
         .footer>.item1{width: 100%; text-align: center;
            padding-top: 7vh;}
        .footer>.item1>h1{font-size:8vw; }
        .footer>.item1>p{font-size: 3vw;}
        .footer>.item1>.icon_group2{width: 100%;}
        .footer>.item1>.icon_group2>nav{}
        .footer>.item1>.icon_group2>nav>ul{display: ; justify-content: center; padding-left: 1.8vw;}
        .footer>.item1>.icon_group2>nav>ul>li{display: inline-block;
        font-size: 10vw; padding-right: 15px;}
        .footer>.item1>.icon_group2>nav>ul> a{}
        .footer>.item1>.icon_group2>nav>ul> i{}
        /*footer item2*/
            .footer>.item2{display: ;}    
        .footer>.item2>.left_box{width: 100%; padding-right: 2.5%;}
        .footer>.item2>.left_box>h1{font-size: 5.5vw; text-align: center;}
        .footer>.item2>.left_box>.infobox{padding-left: 2px; padding-right: 2px;}
        .footer>.item2>.left_box>.infobox>div{display: flex;
        justify-content: space-between; border-bottom: 1px solid #666666;}
        .footer>.item2>.left_box>.infobox>div>p:nth-child(1){ font-size: 5vw;}    
        .footer>.item2>.left_box>.infobox>div>p:nth-child(2){padding-top: 1vh;
            font-size: 3vw;} 
            
      
        .footer>.item2>.left_box>.settopbox{width: 100%; height: ; padding-top: 10px; }
        .footer>.item2>.left_box>.settopbox>img{width: 100%; height: 100%;}
            
        .footer>.item2>.right_box{width: 100%; padding-right: 0.1vw; padding-left: 1vw; display: flex;
            padding-top: 5vh;}
        .footer>.item2>.right_box>div:nth-child(1){width: 28%;}
        .footer>.item2>.right_box>div:nth-child(1)>img{width: 80%; padding-top: 5vh; padding-left: 2vw;}
        .footer>.item2>.right_box>div:nth-child(2){width: 60%; padding-right: 1%; padding-left: 1%;}
        .footer>.item2>.right_box>div:nth-child(2)>p{font-size: 3vw;line-height: 2;}
        /*footer .item3*/
        .footer>.item3{padding-top: 1.3vh; }
        .footer>.item3>div{}
        .footer>.item3>div ul{display: flex; list-style: none; justify-content: center; align-items: center; border-top: solid #444 1px; }
        .footer>.item3>div ul li{padding-right: 20px; font-size: 2vw; display: inline-block;}
        .footer>.item3>div ul li>img { width: 80%;
            height: 80%;  }   
        .footer>.item3>p{border-bottom: solid #444 1px; text-align: center; font-size: 1.2vw;
            padding-right: 2.5%;}
        /*footer .item4*/
        .footer>.item4{padding-bottom: 1px;}
        .footer>.item4>p:nth-child(1){text-align: center;}
        .footer>.item4>p:nth-child(2){text-align: center;}
   
        }
        @media(min-width:976px) and (max-width:1441px){
         .footer{margin: 0 auto; 
        justify-content: center; 
        align-items: center;
        width: 100vw; height: 100vh;
        perspective: 1px;
        transform-style: preserve-3d;
        background: #17181e;
                 color: #c3c3c3;
                height: auto;}
            .footer{display: block;
            padding-right: 3vw; padding-left: 3vw;}
        .footer>.item1{width: 800px; left: calc(50% - 400px); text-align: center;
            padding-top: 7vh;}
        .footer>.item1>h1{font-size:4vw; }
        .footer>.item1>p{font-size: 1.2vw;}
        .footer>.item1>.icon_group2{width: 100%;}
        .footer>.item1>.icon_group2>nav{}
        .footer>.item1>.icon_group2>nav>ul{display: flex; justify-content: center;}
        .footer>.item1>.icon_group2>nav>ul>li{display: inline-block;
        font-size: 3.5vw; padding-right: 15px;}
        .footer>.item1>.icon_group2>nav>ul> a{}
        .footer>.item1>.icon_group2>nav>ul> i{}
        /*footer item2*/
            .footer>.item2{display: flex;}    
        .footer>.item2>.left_box{width: 49%;}
        .footer>.item2>.left_box>h1{font-size: 1.8vw;}
        .footer>.item2>.left_box>.infobox{}
        .footer>.item2>.left_box>.infobox>div{display: flex;
        justify-content: space-between; border-bottom: 1px solid #666666;}
        .footer>.item2>.left_box>.infobox>div>p:nth-child(1){ font-size: 1.4vw;}    
        .footer>.item2>.left_box>.infobox>div>p:nth-child(2){padding-right: 3vw;
            font-size: 1.4vw;} 
            
      
        .footer>.item2>.left_box>.settopbox{width: 13vw; height: ; padding-top: 10px; }
        .footer>.item2>.left_box>.settopbox>img{width: 100%; height: 100%;}
            
        .footer>.item2>.right_box{width: 49%; padding-right: 0.1vw; padding-left: 1vw; display: flex;
            padding-top: 5vh;}
        .footer>.item2>.right_box>div:nth-child(1){width: 28%;}
        .footer>.item2>.right_box>div:nth-child(1)>img{width: 80%; padding-top: 5vh; padding-left: 2vw;}
        .footer>.item2>.right_box>div:nth-child(2){width: 60%; padding-right: 1%; padding-left: 1%;}
        .footer>.item2>.right_box>div:nth-child(2)>p{font-size: 1.4vw;line-height: 2;}
        /*footer .item3*/
        .footer>.item3{padding-top: 1.3vh;}
        .footer>.item3>div{}
        .footer>.item3>div ul{display: flex; list-style: none; justify-content: center; align-items: center; border-top: solid #444 1px; }
        .footer>.item3>div ul li{padding-right: 20px; font-size: 2vw; display: inline-block;}
        .footer>.item3>div ul li>img { width: 80%;
            height: 80%;  }   
        .footer>.item3>p{border-bottom: solid #444 1px; text-align: center; font-size: 1.2vw;}
        /*footer .item4*/
        .footer>.item4{padding-bottom: 1px;}
        .footer>.item4>p:nth-child(1){text-align: center;}
        .footer>.item4>p:nth-child(2){text-align: center;}
   
        }
        
        @media (min-width:1442px){
          .footer{margin: 0 auto; 
        justify-content: center; 
        align-items: center;
        width: 100vw; height: ;
        perspective: 1px;
        transform-style: preserve-3d;
        background: #17181e;
                 color: #c3c3c3;}
            .footer{display: block;
            padding-right: 3vw; padding-left: 3vw;}
        .footer>.item1{width: 100%; text-align: center;
            padding-top: 7vh;}
        .footer>.item1>h1{font-size:4vw; }
        .footer>.item1>p{font-size: 1.2vw;}
        .footer>.item1>.icon_group2{width: 100%;}
        .footer>.item1>.icon_group2>nav{}
        .footer>.item1>.icon_group2>nav>ul{display: flex; justify-content: center;}
        .footer>.item1>.icon_group2>nav>ul>li{display: inline-block;
        font-size: 3.5vw; padding-right: 15px;}
        .footer>.item1>.icon_group2>nav>ul> a{}
        .footer>.item1>.icon_group2>nav>ul> i{}
        /*footer item2*/
            .footer>.item2{display: flex;}    
        .footer>.item2>.left_box{width: 49%;}
        .footer>.item2>.left_box>h1{font-size: 1.8vw;}
        .footer>.item2>.left_box>.infobox{}
        .footer>.item2>.left_box>.infobox>div{display: flex;
        justify-content: space-between; border-bottom: 1px solid #666666;}
        .footer>.item2>.left_box>.infobox>div>p:nth-child(1){ font-size: 1.4vw;}    
        .footer>.item2>.left_box>.infobox>div>p:nth-child(2){padding-right: 3vw;
            font-size: 1.4vw;} 
            
      
        .footer>.item2>.left_box>.settopbox{width: 13vw; height: ; padding-top: 10px; }
        .footer>.item2>.left_box>.settopbox>img{width: 100%; height: 100%;}
            
        .footer>.item2>.right_box{width: 49%; padding-right: 0.1vw; padding-left: 1vw; display: flex;
            padding-top: 5vh;}
        .footer>.item2>.right_box>div:nth-child(1){width: 28%;}
        .footer>.item2>.right_box>div:nth-child(1)>img{width: 80%; padding-top: 5vh; padding-left: 2vw;}
        .footer>.item2>.right_box>div:nth-child(2){width: 60%; padding-right: 1%; padding-left: 1%;}
        .footer>.item2>.right_box>div:nth-child(2)>p{font-size: 1.4vw;line-height: 2;}
        /*footer .item3*/
        .footer>.item3{padding-top: 1.3vh;}
        .footer>.item3>div{}
        .footer>.item3>div ul{display: flex; list-style: none; justify-content: center; align-items: center; border-top: solid #444 1px; }
        .footer>.item3>div ul li{padding-right: 20px; font-size: 2vw; display: inline-block;}
        .footer>.item3>div ul li>img { width: 80%;
            height: 80%;  }   
        .footer>.item3>p{border-bottom: solid #444 1px; text-align: center; font-size: 1.2vw;}
        /*footer .item4*/
        .footer>.item4{padding-bottom: 1px;}
        .footer>.item4>p:nth-child(1){text-align: center;}
        .footer>.item4>p:nth-child(2){text-align: center;}
      
        }
        
        
        /*sns icon*/
        .icon_group{position: absolute; top: 3vh; right: 5vw;  display: none;}
        .icon_group>nav>ul{display: flex; list-style: none;
        }
        .icon_group>nav>ul>li .fab,.fas{color: white; padding: 0 1vw 0 1.2vw;
                                        font-size: 1.2vw;}
        /*되돌이표, pop메뉴*/
        .top_btn{position: fixed; left:87%; bottom: 20px; background-image: url(img/top_btn.png); background-repeat: no-repeat; background-size: cover; width:45px; height: 45px; text-align: center; line-height: 42px; z-index: 10; cursor: pointer; border-radius:10px; }
        .pop_wrap{display: none;}
        .pop_black{display: none; width:100vw; height: 100vh; background-color: rgba(0,0,0,0.8); position: fixed; top: 0; left: 0; z-index: 10; max-width: 1100px;}
        .pop_group{display: none; width: 100vw; height: 100vh; background-color: rgba(0,0,0,0.8); position: fixed; top:0; left: 0; display: flex; align-items: center; justify-content: center; z-index: 11; max-width: 1100px;}
        .pop{display: none;  width:calc(100% - 100px); background-color: white; box-shadow: 0 0 10px rgba(0,0,0,0.3);
        border-radius: 3px;}
        .pop span{display: inline-block; text-align: center; width: 80px; height: 80px; background-color: antiquewhite; border-radius: 50%; cursor: pointer; }
    </style>
</head>
<body>
<!--되돌이창-->
<div class="top_btn"></div> 

<!--헤더-->
<div class="warp">
    <div class="pop_wrap">   
       <div class="pop_black"></div>
          <div class="pop_group">
            <div class="pop pop1">
               <div class="pop_top"><h1>popup one</h1><span>X</span></div>
               <div class="pop_middle"><p>행복하세요</p></div>
               <div class="pop_bottom"><span>close</span></div>
            </div>
       </div>
    </div>  
 <header class="header">
     <div class="menu_logo"><a href="dmc5(plaform)%20.html"><img src="img/logo_dmc5.png"></a></div>
  <nav>
      <ul class="menu_ul">
          <li><a href="about.html">ABOUT</a></li>
          <li><a href="charater.html">CHARACTER</a></li>
         <li><a href="system.html">SYSTEM</a></li>
          <li><a href="media.html">MEDIA</a></li>
          <li><a href="news.html">NEWS</a></li>
          <li><a href="dlc.html">DLC</a></li> 
      </ul>
  </nav>
 
  <div class="login_box">
    	<div class="login_btn">
       		 <a href="loginForm.jsp">login</a> <!-- <p> 태그 대신 직접 텍스트를 배치 -->
   	 	</div>
	</div>
   <div class="ham_group">
       <div class="ham_bar">
           <span class="span_t"></span>
           <span class="span_m"></span>
           <span class="span_b"></span>
       </div>
   </div>
   <div class="home_menu">
        <ul>
          <li><a href="about.html">ABOUT</a></li>
          <li><a href="charater.html">CHARACTER</a></li>
         <li><a href="system.html">SYSTEM</a></li>
          <li><a href="media.html">MEDIA</a></li>
          <li><a href="news.html">NEWS</a></li>
          <li><a href="dlc.html">DLC</a></li> 
            
        </ul>    
    </div>
    <div class="pop_black"></div>
  <div class="icon_group">
   <nav>
     <ul>
         <li><a href="#"><i class="fab fa-twitter"></i></a></li>
         <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
         <li><a href="#"><i class="fab fa-youtube"></i></a></li>
         <li><a href="#"><i class="fas fa-envelope"></i></a></li>
      </ul>
    </nav>
  </div>
 </header>
 <!--본문-->
 <div class="page_group">
   <section class="section section1">
    <div class="main_logo item item1"><img src="img/logo_dmc5_main.png" alt="Devil May Cry5"></div>
    <div class="platform_logo item item2"><img src="img/logo_xbox.png"><img src="img/logo_ps4.png"><img src="img/logo_steam.png"></div>
     <div class="main_text item item3">
       <h1 class="main_h1">Available Now</h1>

     </div>
  
  
  <!---->
    <div class="trailer_box item item4">
      <div class="content content1" onclick="trailer1()">
          <h2>DMC5</h2>
          <h3>Main Trailer</h3>
           <a><p>More</p></a>
      </div>
      <div class="content content2" onclick="trailer2()">
          <h2>Plus</h2>
          <h3>Charater Trailer</h3>
          <a><p>More</p></a>
      </div>
      <div class="content content3" onclick="trailer3()">
          <h2>Palace</h2>
          <h3>Update Trailer</h3>
          <a><p>More</p></a>
      </div>
    </div>
    <div class="main_video item item5">
    	<video id="mainVideo" muted autoplay loop></video>
	</div>
    </section>
    <section class="section section2">
      <div class="title_text item item1 fade_i">
       <h1>ABOUT</h1>
       <div class="underbar"><img src="img/title_underbar_products.png"></div>
       <div class="bluebar"><img src="img/title_underbar_green.png"></div>
       <div class="redbar"><img src="img/title_underbar_red.png"></div>
      </div>
      <div class="sub_text item item2 fade_i">
          <p>Legendary DMC action returns, made all the more stylish</p>
          <p>by thepower modern gaming has to offer.</p>
      </div>
      <div class="content_text item item3 fade_i">
        <p>The Devil May Cry series boasts over 16 million sales worldwide.
        The first game in this popular series to make its debut in the current generation, bringing stylish mayhem against
        fiendish foes at the hands of Devil Hunters with demon blood in their veins.</p>
      </div>
      
    </section>
    <section class="section section3">
      <div class="title_text item item1 fade_i">
       <h1>News</h1>
       <div class="underbar"><img src="img/title_underbar_products.png"></div>
       <div class="bluebar"><img src="img/title_underbar_green.png"></div>
       <div class="redbar"><img src="img/title_underbar_red.png"></div>
      </div>
      <div class="sub_text item item2 fade_i">
          <p>AUTO-ASSIST</p>
          <p>More Combo, More Action</p>
      </div>
      <div class="content_text item item3 fade_i">
        <p>Try out auto-assist if you want to chain together a slick combo without too much fuss.
    Use the same attack inputs to dish out stylish techniques with ease.</p>
      </div>
      <div class="content_text item item4 fade_i">
        
      </div>
      <div class="slide_box item item5">
         
          <div class="slide_item">
             <div class="back-img back-img1"></div>
             <div class="view"><img src="img/slideimg/img_ver2.jpg"></div>
             <div class="contents">
                 <h1>Devil May Cry Demo Alive</h1>
                 <div class="article article-img">
                     <p>Bash baddies with the new Devil Breaker "Punch Line," and take a look inside Nico's shop!</p>
                     <div class="cont_img">
                         
                     </div>
                     
                 </div>
                <div class="article border_more">
                  <p>First step</p>
                      
                </div>
                <div class="con_subtitle border_more">
                   <p>Bash baddies with the new Devil Breaker "Punch Line," and take a look inside Nico's shop!</p>
                   <span></span>
                   <span></span>
                   <span></span>
                   <span></span>
                </div>
          </div>
          <div class="con_title">
               <h1>Devil May Cry Demo Alive</h1>
                   <span></span>
                   <span></span>
                   <span></span>
                   <span></span>
            </div>
        </div>
        <div class="slide_item">
             <div class="back-img back-img2"></div>
             <div class="view"><img src="img/slideimg/thumb_collectors.jpg"></div>
             <div class="contents">
                 <h1>Complete Edition</h1>
                 <div class="article article-img">
                     <p>Deluxe Edition Available Now</p>
                     <div class="cont_img">
                         
                     </div>
                     
                 </div>
                <div class="article">
                     <p>Second step</p> 
            </div>
          </div>
          <div class="con_title border_more">
               <h1>Complete Edition</h1>
                   <span></span>
                   <span></span>
                   <span></span>
                   <span></span>
            </div>
            <!--
            <div class="con_subtitle border_more">
               <p>Deluxe Edition Available Now</p>
                   <span></span>
                   <span></span>
                   <span></span>
                   <span></span>
            </div>
            -->
        </div>
        <div class="slide_item">
             <div class="back-img back-img3"></div>
             <div class="view"><img src="img/slideimg/bloody_05.jpg"></div>
             <div class="contents">
                 <h1>Freedom Battle stage</h1>
                 <div class="article article-img">
                     <p>Free Update: Bloody Palace Available Now !</p>
                     <div class="cont_img">
                        
                     </div>
                     
                 </div>
                <div class="article">
                     <p>Third step</p> 
                </div>
                <div class="con_subtitle border_more">
                   <p>Free Update: Bloody Palace Available Now !</p>
                   <span></span>
                   <span></span>
                   <span></span>
                   <span></span>
                </div>
          </div>
          <div class="con_title border_more">
               <h1>Freedom Battle stage</h1>
                   <span></span>
                   <span></span>
                   <span></span>
                   <span></span>
            </div>
        </div>
        <div class="slide_item">
             <div class="back-img back-img4"></div>
             <div class="view"><img src="img/default.jpg"></div>
             <div class="contents">
                 <h1>New architecture, by Capcom</h1>
                 <div class="article article-img">
                     <p>More DLC</p>
                     <div class="cont_img">
                         
                     </div>
                     
                 </div>
                <div class="article">
                     <p>Another step.</p> 
                </div>
                
           </div>
           <div class="con_title border_more">
               <h1>New architecture, by Capcom</h1>
                   <span></span>
                   <span></span>
                   <span></span>
                   <span></span>
            </div>
            <div class="con_subtitle border_more">
                   <p>New architecture, by Capcom</p>
                   <span></span>
                   <span></span>
                   <span></span>
                   <span></span>
            </div>
        </div>
      </div>
      <div class="more_box item item6">
        <div class="border_more">More
            <span class="more_left"></span>
            <span class="more_top"></span>
            <span class="more_right"></span>
            <span class="more_bottom"></span>
        </div>
          
      </div>
      
     </section>
      <section class="section section4">
      <div class="title_text item item1 fade_i">
       <h1>SYSTEM</h1>
       <div class="underbar"><img src="img/title_underbar_products.png"></div>
       <div class="bluebar"><img src="img/title_underbar_green.png"></div>
       <div class="redbar"><img src="img/title_underbar_red.png"></div>
      </div>
      <div class="sub_text item item2 fade_i">
          <p>AUTO-ASSIST</p>
          <p>More Combo, More Action</p>
      </div>
      <div class="content_text item item3 fade_i">
        <p>Try out auto-assist if you want to chain together a slick combo without too much fuss.
        Use the same attack inputs to dish out stylish techniques with ease.</p>
      </div>
    </section>
    <div class="footer">
     <div class="item item1">
         <h1>We are Created Action over Action</h1>
         <p>Check here for the latest information</p>
         <div class="icon_group2">
            <nav>
              <ul>
                 <li><a href="https://twitter.com/devilmaycry/"><i class="fab fa-twitter"></i></a></li>
                 <li><a href="https://www.facebook.com/devilmaycry/"><i class="fab fa-facebook-f"></i></a></li>
                 <li><a href="https://www.youtube.com/devilmaycry/"><i class="fab fa-youtube"></i></a></li>
                 <li><a href="https://www.instagram.com/devilmaycrygame/"><i class="fab fa-instagram"></i></a></li>
               </ul>
           </nav>     
         </div>
         
     </div>
     <div class="item item2">
        <div class="left_box">
          <h1>DEVIL MAY CRY 5</h1>
          <div class="infobox">
              <div><p>Players：</p><p>Single player (1-3 players online)</p></div>
              <div><p>Platforms：</p><p>Xbox One/PlayStation®4/PC（Steam)</p></div>
              <div><p>Genre：</p><p>Stylish Action</p></div>
              <div><p>Releas：</p><p>Available Now</p></div>
              <div><p>Rating : </p><p>M</p></div>
          </div>
          <div class="settopbox"><img src="img/esrb_icon.png"></div>
          
        </div>
        <div class="right_box">
          <div><img src="img/reengine.jpg"></div>
          <div><p>Behold stunning visuals built upon the technology that brought you Resident Evil 7 biohazard.
            High framerate graphics and flexible design give our creators what they need to offer fans the latest and greatest DMC experience.</p></div>
        </div>
      </div>
      <div class="item item3">
          <div>
             <nav>
              <ul>
                 <li><img src="img/logo_xbox.png"></li>
                 <li><img src="img/logo_ps4.png"></li>
                 <li><img src="img/logo_steam.png"></li>
               </ul>
           </nav>    
          </div>
          <p>"PlayStation" and the "PS" Family logo are registered trademarks and "PS4" is a trademark of Sony Interactive Entertainment Inc.<br>
            ©Valve Corporation. Steam and the Steam logo are trademarks and/or registered trademarks of Valve Corporation in the U.S. and/or other countries.</p>
      </div>
      <div class="item item4">
          <p>Privacy Policy</p>
          
          <p>© CAPCOM CO.,LTD. 2019 ALL RIGHTS RESERVED.</p>  
      </div>
  </div>
  </div>
  
</div>  
</body>
</html>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="jquery-mousewheel-main/jquery.mousewheel.js"></script>
<script>
    //문서시작
    let num = 0;
    let scr_t, ani_img, fade_i;

    $(document).ready(function () {
        //fade_i=$('.fade_i');
        //fade_i.css({opacity:0.1,transform:'translateY(0px)'});
        text_x();
    });
    //스크롤이동
    $(window).scroll(function () {
        text_x();
    });

    //탑버튼숨기거나 등장시키기

    scr_t = $(window).scrollTop();
    if (scr_t == 0 || scr_t <= 300) {

        $('.top_btn').stop().fadeOut(200);

    } else {

        $('.top_btn').stop().fadeIn(200);
    }


    //탑메뉴이동
    $('.top_btn').click(function () {
        $('html,body').stop().animate({ scrollTop: 0 });
    });

    //hambar xbar
    $('.ham_bar').click(function () {
        //$('.ham_bar').addClass('x_bar')
        //$('.x_bar').removeClass('ham_bar')
        $('.ham_bar').addClass('x_bar')
        $('.home_menu').stop().slideToggle();
        $('.pop_black').stop().fadeIn(200);
        //$('body').css('overflow','hidden')

    });
    $('.pop_black').click(function () {
        $('.home_menu').stop().fadeOut();
        $('.ham_bar').removeClass('x_bar');
        $('.ham_bar').stop().css({ 'display': 'block' });
        $('.pop_black').stop().fadeOut();
        //$('body').css('overflow','auto')
    });

    //마우스휠값 선언
    $('.page_group').on('mousewheel DomMouseScroll', function (e, delta) {
        e.preventDefault();
        ani_img = $('html,.item').is(':animated');
        console.log('ani' + ani_img + 'delta:' + delta);
        if (delta < 0 && num < 6 && !ani_img) {

            num++;
            movea();
        } else if (delta > 0 && num > 0 && !ani_img) {
            num--;
            movea();
        };


    });

    //키보드상단하단이동(이동함수 mover)     
    $(window).keydown(function (e) {
        if (e.which == 38 && num > 0) {
            num = num - 1;
            movea();
        } else if (e.which == 40 && num < 6) {
            num = num + 1;
            movea();
        }
    });

    //함수 무버(mover)정의     
    function movea() {

        let win_height = $(window).height();
        console.log('함수mover값:' + num);
        $('html').stop().animate({ scrollTop: win_height * num }, 500, function () {

        });

    };

    //숨겨졌다 보이기  
    function text_x() {
        $('.fade_i').each(function (index) {
            let this_top = $(this).offset().top;
            let this_height = $(this).height();
            let scr_top = $(window).scrollTop();
            let win_height = $(window).height();

            console.log(index + ':' + this_top + ',' + this_height);

            if (scr_top + win_height > this_top && scr_top < this_top + this_height) {
                $(this).css({ opacity: 1, transform: 'translateX(0px)', transition: '1.3s' })

            } else {
                $(this).css({ opacity: 0, transform: 'translateX(-200px)', transition: '1.3s' })
            };
        });
    };

    ////////////////////////////////////    /*slide 영역*/
    //background 이미지변경
    /*
    $('.item').each(function(index){
        i=index+1
        $(this).find('.back-img').css({backgroundImage:'url(1224/img'+i+'.jpg)'})
    });    
    */

    //초기값
    let item_width, item_height, win_width, active_num, s_item;

    active_num = 1; //변경가능함 ,몇번째를 가운데로?  

    //이벤트:문서가 열렸을때
    $(document).ready(function () {
        $('.slide_item').eq(active_num).addClass('active');
        item_left();

    });

    //이벤트:윈도우사이즈가 바뀌었을때
    let resizeTimer; //클리어하기 위해서는 꼭 전역변수로 지정해야함.
    $(window).resize(function () {
        clearTimeout(resizeTimer)
        resizeTimer = setTimeout(item_left, 200)
    });
    //item left위치 함수   
    function item_left() {
        win_width = $(window).width();
        let win_height = $(window).height();

        /*window너비에 따라서, 썸네일 크기를 지정*/
        if (win_width > 1400) {
            item_width = 800;
            s_item = 120;
        } else if (win_width > 800 && win_width <= 1400) {
            item_width = 600
            s_item = 100;
        } else if (win_width <= 800 && win_width > 600) {
            item_width = 500
            s_item = 50;
        } else if (win_width <= 600) {
            item_width = win_width - 100
            s_item = 30;
        }
        /*window높이에 따라서, 썸네일 길이를 지정*/
        if (win_height > 800) {
            item_height = 700;
        } else if (win_height <= 800 && win_height > 700) {
            item_height = win_height - 300;
        } else {
            item_height = win_height - 200;
        }
        //console.log(item_height+'/'+item_height);
        /*아이템 위치값*/
        $('.slide_item').each(function (index) {
            let box_left = win_width * 0.5 - item_width * 0.5 + item_width - s_item;
            //양옆 살짝보이는 박스 길이: s_item; 
            let center_left = win_width * 0.5 - item_width * 0.5;
            let move_num = index - active_num;  //중간에 가있을 넘버
            //active_item
            //console.log('box_left:'+box_left);
            //console.log('center_left:'+center_left);
            // console.log('move_num:'+move_num+',index:'+index+',active_num:'+active_num);  //0 1 2 3 4 순 배치

            $(this).stop().animate({
                width: item_width,
                height: item_height,
                left: move_num * box_left + center_left,
                //left:center_left*move_num +box_left
                //left:win_width*0.5-item_width*0.5,
                top: win_height * 0.5 - item_height * 0.5
            }, 500, function () {
                //active_item.addClass('active');
                $('.slide_item').eq(active_num).addClass('active');
                $('.slide_item').css({ overflow: 'hidden' });
            });
        }); //아이템 위치값&크기 끝

    }; //item left 위치함수 끝

    //

    //start: 펼쳐졌을 때의 함수: 햄바변경, 아래 페이지넘버숨기고, navi숨기고, 양옆숨김
    function spread_hide() {
        let active_item = $('.slide_item').eq(active_num);
        $('.section3 .item1').stop().fadeOut(300);
        $('.view img').stop().fadeOut(400);
        $('.slide_item').not(active_item).stop().fadeOut(500);
        $('.con_subtitle').stop().fadeOut(400);



    };
    //펼쳐졌을 때 함수 끝

    //spread 닫았을 때
    function spread_show() {
        let active_item = $('.slide_item').eq(active_num);
        $('.section3 .item1').stop().fadeIn(300);
        $('.view img').stop().fadeIn(400);
        $('.slide_item').not(active_item).stop().fadeIn(500);
        $('.con_subtitle').stop().fadeIn(400);


    };

    //아이템을 클릭했을때-
    $('.slide_item').click(function () {
        active_num = $(this).index();
        let active_item = $('.slide_item').eq(active_num);
        //active_item.addClass('active'); -x
        $('.slide_item').not(active_item).removeClass('active');

        //1 -클라스에 아이템만 있는 경우(아이템):-->위치이동
        //2 -클라스에 액티브가 있는 경우(아이템,액티브):-->펼쳐져서 내용이 보여지도록하고, 메뉴가 안보이게끔
        //3 -클라스에 액티브되어 펼쳐져 있는 경우(이미 spread가 실행되고 있는 경우,아이템,액티브,spead):-->썸네일이 작아지도록
        let this_item = $(this).attr('class');
        console.log('클릭한아이템 상태:' + this_item);

        //switch start=3가지 상황에 따른 조건문
        switch (this_item) {
            case 'slide_item':
                item_left(); // 크기와 위치값
                break;
            case 'slide_item active':
                spread_hide();
                active_item.stop().animate({
                    width: '100vw', height: '100vh', top: 0, left: 0 //
                }, 500, function () {
                    active_item.addClass('spread')
                    $('html,body').css({ overflowY: 'visible' });
                    $('.spread').css({ overflow: 'visible' });
                });
                break;
            case 'slide_item active spread':
                if ($(window).scrollTop() == 0 || $(window).scrollTop() <= 450) {
                    console.log(win_scrTop);
                    let win_scrTop = $(window).scrollTop();


                    active_item.removeClass('spread')
                    //active_item.removeClass('active')
                    $('html,body').css({ overflowY: 'hidden' });
                    $('.slide_item').css({ overflow: 'hidden' });
                    item_left();
                    spread_show();
                };
                break;

        };

    });//click end

    //액티브버튼을 클릭하면
    $(document).on('click', '.spread', function () {
        $('.section3').stop().animate({ scrollTop: 0 }, 500, function () {
            let active_item = $('.slide_item').eq(active_num);
            active_item.removeClass('spread')

            item_left(spread_show());
        });
    });
    
    function trailer1() {
        let mainVideo = document.getElementById("mainVideo");
        mainVideo.src = "Devil May Cry 5 - Game Movie (All Cutscenes) 2019.mp4";
        mainVideo.play();
       
        // 요소의 표시 상태를 토글
        $(".main_logo, .platform_logo").toggle();
    }

    function trailer2() {
        let mainVideo = document.getElementById("mainVideo");
        mainVideo.src = "Devil May Cry 5 - final Traile.mp4";
        mainVideo.play();
        
        // 요소의 표시 상태를 토글
        $(".main_logo, .platform_logo").toggle();
    }

    function trailer3() {
        let mainVideo = document.getElementById("mainVideo");
        mainVideo.src = "Devil May Cry 5 - final Traile.mp4";
        mainVideo.play();
        
        // 요소의 표시 상태를 토글
        $(".main_logo, .platform_logo").toggle();
    }
</script>
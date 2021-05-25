<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="CSS/design.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 92%, 63% 100%, 17% 93%, 0 100%, 0 0);
            }
        </style>
    </head>
    <body>
        <%--<%@include file="WEB-INF/view/navebar.jsp" %>  --%>    
        <%@include file="navebar.jsp" %>
        <div class="container-fluid p-0 m-0">
             <main role="main">
                <div class="jumbotron primary-background text-white banner-background ">
                  <div class="col-sm-8 mx-auto">
                      <br>
                    <h3 class="display-3"><span class="fas fa-wallet fa-3x" style="color:black"></span> Digital Pocket</h3>
                    <p> It work as a id card holder which can helps your all id proof save <br>as well as store all your id card information in a one place.</p>
                    <br>
                    <p>
                      <a class="btn btn-primary" href="RegisterPage.jsp<%--
                         request.getRequestDispatcher("WEB-INF/view/RegisterPage.jsp").forward(request,response);
                         --%>" role="button"><span class="fa fa-2x fa-user-circle"></span> Sign Up</a>
                      <a class="btn btn-primary" href="LoginPage.jsp<%--
                          request.getRequestDispatcher("WEB-INF/view/LoginPage.jsp").forward(request,response);
                        --%>" role="button"><span class="fa fa-user-plus fa-2x fa-spin"></span> Login</a>
                    </p>
                    <%--
                        request.getRequestDispatcher("WEB-INF/view/RegisterPage.jsp").forward(request,response);
                        request.getRequestDispatcher("WEB-INF/view/LoginPage.jsp").forward(request,response);
                    --%>
                  </div>
                </div>
            </main>       
        </div>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    </body>
</html>

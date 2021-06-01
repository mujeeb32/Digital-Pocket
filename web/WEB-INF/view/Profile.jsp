<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.User" %>
<% 
    User user=(User)session.getAttribute("currentUser");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="../../CSS/design.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="<c:url value="/CSS/design.css" />" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="#"><span class="fas fa-wallet fa-1x" style="color:white"></span>  Digital Pocket</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp"><span class="fas fa-home fa-1x"></span> Home </a>
                    </li>
                    
                </ul>
                
                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#!" data-toggle="modal" data-target="#profile-modal"> <span class="fa fa-1x fa-user-circle "></span> <%= user.getFname()%> <%= user.getLname()%> </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link text-white" href="Logout"> <span class="fa fa-user-plus "></span> Logout</a>
                    </li>
                </ul>
                
            </div>
        </nav>
        
                    

                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
        <!-- Button trigger modal -->
        
<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white text-center">
        <h5 class="modal-title" id="exampleModalLabel"> Digital Pocket</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              
              <h5 class="modal-title" id="exampleModalLabel"> <%= user.getFname()%> <%= user.getLname()%> </h5><br>
              <div class="profile-details">
                <table class="table">
                  <tbody>
                    <tr>
                      <th scope="row">Name:</th>
                      <td><%= user.getFname()%> <%= user.getLname()%></td>
                    </tr>
                    <tr>
                      <th scope="row" >Email</th>
                      <td><%= user.getEmail()%></td>
                    </tr>
                    <tr>
                      <th scope="row" >Phone Number</th>
                      <td><%= user.getPhone() %></td>
                    </tr>
                    <tr>
                        <th scope="row" >City Name</th>
                      <td><%= user.getCity() %></td>
                    </tr>
                    <tr>
                      <th scope="row" >State Name</th>
                      <td><%= user.getState() %></td>
                    </tr>
                    <tr>
                      <th scope="row" >Country Name</th>
                      <td><%= user.getCountry() %></td>
                    </tr>
                  </tbody>
                </table>
              </div>
                    <div class="profile-edit" style="display: none;">
                        <h2>Edit</h2>
                    </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" id="edit-profile-button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>
        
        
        
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
                                        $(document).ready(function () {
                                    let editStatus = false;
                                    $('#edit-profile-button').click(function ()
                                    {
                                        if (editStatus == false)
                                        {
                                            $("#profile-details").hide()
                                            $("#profile-edit").show();
                                            editStatus = true;
                                            $(this).text("Back")
                                        } else
                                        {
                                            $("#profile-details").show()
                                            $("#profile-edit").hide();
                                            editStatus = false;
                                            $(this).text("Edit")
                                        }
                                    })
                                });
    </script>
    </body>
</html>

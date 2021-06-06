<%@page import="models.ErrorMessage"%>
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
        <link href="<c:url value="/CSS/profileDesign.css" />" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="index.jsp"><span class="fas fa-wallet fa-1x" style="color:white"></span>  Digital Pocket</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp"><span class="fas fa-home fa-1x"></span> Home </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#" data-toggle="modal" data-target="#add-post-model"><span class="fas fa-upload"></span> Upload Documents </a>
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
                            <%
                                ErrorMessage m = (ErrorMessage) session.getAttribute("msg");
                                if (m != null) {
                            %>
                            <div class="alert <%= m.getCssClass() %>" role="alert">
                                <%= m.getContent() %>
                            </div> 


                            <%        
                                    session.removeAttribute("msg");
                                }
                            %>

                            
<!-- Main body of the page -->    
<main >
    <div class="container">
        
    </div>
    
</main>
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
              <%
                  String pt="/img/"+user.getImg();
              %>
              <img src="<c:url value="<%= pt %>" />"  class="img-fluid" style="border-radius:50%;max-width: 150px;;" />
              <br>
              <h5 class="modal-title" id="exampleModalLabel"> <%= user.getFname()%> <%= user.getLname()%> </h5><br>
              <div id="profile-details">
                <table class="table">
                  <tbody>
                    <tr>
                      <th scope="row">Name:</th>
                      <td><%= user.getFname()%> <%= user.getLname()%> </td>
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
                    
                    <div id="profile-edit" style="display: none;">
                                <h3 class="mt-2">Please Edit Carefully</h3>
                                <form action="EditProfile" method="post" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>ID :</td>
                                            <td><%= user.getUid()%></td>
                                        </tr>
                                        <tr>
                                            <td>Email :</td>
                                            <td> <input type="email" class="form-control" name="email" value="<%= user.getEmail()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Fname :</td>
                                            <td> <input type="text" class="form-control" name="firstname" value="<%= user.getFname()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Lname :</td>
                                            <td> <input type="text" class="form-control" name="lastname" value="<%= user.getLname()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Password :</td>
                                            <td> <input type="password" class="form-control" name="password" value="<%= user.getPass()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Phone Number :</td>
                                            <td> <input type="text" class="form-control" name="phone" value="<%= user.getPhone()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Gender :</td>
                                            <td> <%= user.getGender().toUpperCase()%> </td>
                                        </tr>
                                        <tr>
                                            <td>City :</td>
                                            <td> <input type="text" class="form-control" name="city" value="<%= user.getCity()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>State :</td>
                                            <td> <input type="text" class="form-control" name="state" value="<%= user.getState()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>Country :</td>
                                            <td> <input type="text" class="form-control" name="country" value="<%= user.getCountry()%>" > </td>
                                        </tr>
                                        <tr>
                                            <td>New Profile:</td>
                                            <td>
                                                <input type="file" name="image" class="form-control" >
                                            </td>
                                        </tr>

                                    </table>

                                    <div class="container">
                                        <button type="submit" class="btn btn-outline-primary">Save</button>
                                    </div>

                                </form>    

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
        
       

<!-- Modal -->
<div class="modal fade" id="add-post-model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Details of Documents</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form id="add-post-form" action="AddPost" method="Post">
                <div class="form-group">
                    <label>Title Name</label>
                  <input name="name" type="text" placeholder="Enter Documents Name" class="form-control" />
                </div>
                <div class="form-group">
                    <label>File Extension</label>
                  <input name="extension" type="text" placeholder="File Extension:(documents,image only)" class="form-control" />
                </div>
              <div>
                  <label>Select Documents</label><br>
                  <input name="file" type="file"/>
              </div>
              <div class="container text-center">
                       <button type="submit" class="btn btn-outline-primary">Post </button>
              </div>
          </form>
      </div>
      
    </div>
  </div>
</div>
        
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
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
        
        <script>
            $(document).ready(function (e) {
                //
                $("#add-post-form").on("submit", function (event) {
                    //this code gets called when form is submitted....
                    event.preventDefault();
                    console.log("you have clicked on submit..")
                    let form = new FormData(this);
                    //now requesting to server
                    $.ajax({
                        url: "AddPost",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            //success ..
                            console.log(data);
                            if (data.trim() == 'done')
                            {
                                swal("Good job!", "saved successfully", "success");
                            } else
                            {
                                swal("Error!!", "Something went wrong try again...", "error");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            //error..
                            swal("Error!!", "Something went wrong try again...", "error");
                        },
                        processData: false,
                        contentType: false
                    })
                })
            })
        </script>
    </body>
</html>

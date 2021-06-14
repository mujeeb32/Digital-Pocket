<%@page import="models.User"%>
<%@page import="java.util.List"%>
<%@page import="models.Post"%>
<%@page import="controller.PostSetDB"%>
<%@page import="models.Pojo"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
    User user=(User)session.getAttribute("currentUser");
    
%>
                    <%
                    PostSetDB d=new PostSetDB(Pojo.getConnection());
                    int cid=Integer.parseInt(request.getParameter("cid"));
                    List<Post> posts=null;
                    if(cid==0){
                        posts=d.getAllPost(user.getUid());
                    }else if(cid==1){
                        posts=d.getAllPhoto(user.getUid());
                    }else if(cid==2){
                        posts=d.getAllPdf(user.getUid(), "DoxAndPdf");
                    }else{
                        posts=d.getAllPost(user.getUid());
                    }
                    if(posts.size()==0){
                %>
                <h3>Data empty please Upload Data chose upload button......</h3>
                <%
                    }else{
                        for(int i=0;i<posts.size();i++){
                            Post p1=posts.get(i);
                %>
                        <div class="row">
                        <div class="card " style="width: 26rem; height: 30rem;">

                                <%
                                if(p1.getDoc_type()=="Photo"){
                                    String pos1="/Allpost/"+p1.getDoc_location();
                                    %>

                                    <img src="<c:url value="<%= pos1 %>" />"  class="profile_image"  />
                            <%
                                }else{
                                    String pos1="/AllPost/"+p1.getDoc_location();
                                    %>
                                    <iframe src="<c:url value="<%= pos1 %>" />" height="100%" width="100%">  </iframe>
                                    <%
                                }
                                %>

                            <div class="card-body">
                                <h5 class="card-title"><%= p1.getDoc_filename() %></h5>
                                <p class="card-text">Upload time.<%= p1.getDoc_datetime() %> And Size.<%= p1.getDoc_size() %>kb</p>
                                <a href="#" onclick="getPost1(<%= p1.getDoc_id() %>)" class="btn btn-primary">Delete</a>
                            </div>
                        </div>
                            <%
                                i++;
                                if(i<posts.size()){
                                    p1=posts.get(i);
                            %>
                            <div class="card " style="width: 26rem;height: 30rem;">
                            <%
                                if(p1.getDoc_type()=="Photo"){
                                    String pos2="/AllPost/"+p1.getDoc_location();
                                    %>
                                    <img src="<c:url value="<%= pos2 %>" />"  class="profile_image"  />
                                    <%
                                }else{
                                    String pos2="/AllPost/"+p1.getDoc_location();
                                    %>
                                    <iframe src="<c:url value="<%= pos2 %>" />" height="100%" width="100%">  </iframe>
                                    <%
                                }
                                %>

                            <div class="card-body">
                                <h5 class="card-title"><%= p1.getDoc_filename() %></h5>
                                <p class="card-text">Upload time.<%= p1.getDoc_datetime() %> And Size.<%= p1.getDoc_size() %>kb </p>
                                <a href="#"onclick="getPost1(<%= p1.getDoc_id() %>)" class="btn btn-primary">Delete</a>
                            </div>
                        </div>
                            <%
                                }else{
                                    break;
                                }
                            %>
                            <%
                                i++;
                                if(i<posts.size()){
                                    p1=posts.get(i);
                            %>
                            <div class="card " style="width: 26rem;height: 30rem;">
                            <%
                                if(p1.getDoc_type()=="Photo"){
                                    String pos2="/AllPost/"+p1.getDoc_location();
                                    %>
                                    <img src="<c:url value="<%= pos2 %>" />"  class="profile_image"  />
                                    <%
                                }else{
                                    String pos2="/AllPost/"+p1.getDoc_location();
                                    %>
                                    <iframe src="<c:url value="<%= pos2 %>" />" height="100%" width="100%"></iframe>
                                    <%
                                }
                                 %>

                            <div class="card-body">
                                <h5 class="card-title"><%= p1.getDoc_filename() %></h5>
                                <p class="card-text">Upload time.<%= p1.getDoc_datetime() %> And Size.<%= p1.getDoc_size() %>kb</p>
                                <a href="#" onclick="getPost1(<%= p1.getDoc_id() %>)" class="btn btn-primary">Delete</a>
                            </div>
                        </div>
                            <%
                                }else{
                                    break;
                                }
                            %>
                        </div>
                            <% }
                              d=null;
                              posts=null;
                            }
                            %>                
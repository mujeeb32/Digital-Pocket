
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="CSS/design.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <style>
            .primary-background{
                background:#09af00;
            }
            .primary-background1{
                background:#b9b2c2;
            }
            .primary-background2{
                background:#ddd6e7;
            }
        </style>
    </head>
    <body>
        <%@include file="navebar_1.jsp" %>
        
        <div class="container ">
            <div class="card-header text-center primary-background1 ">
                <span class="fa fa-3x fa-user-circle"></span><br>
                <p>Register Here</p>
                
            </div>
            
            <div class="col-lg-12 well">
                <div class="row">
                    <div class="card-body primary-background2">
                        <form action="" method="Post">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
                                                                <input type="text" placeholder="Enter First Name Here.." class="form-control" name="firstname">
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
                                                                <input type="text" placeholder="Enter Last Name Here.." class="form-control" name="lastname">
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label>
                                                                <input type="text" name="city" placeholder="Enter City Name Here.." class="form-control">
							</div>	
							<div class="col-sm-4 form-group">
								<label>State</label>
								<input type="text" name="state" placeholder="Enter State Name Here.." class="form-control">
							</div>	
							<div class="col-sm-4 form-group">
								<label for="country">Country</label><span style="color: red !important; display: inline; float: none;">*</span>      
                                                                        <select id="country" name="country" class="form-control">
                                                                             <option value="Afghanistan">Afghanistan</option>
                                                                             <option value="Åland Islands">Åland Islands</option>
                                                                             <option value="Albania">Albania</option>
                                                                             <option value="Algeria">Algeria</option>
                                                                             <option value="American Samoa">American Samoa</option>
                                                                             <option value="Andorra">Andorra</option>
                                                                             <option value="Angola">Angola</option>
                                                                             <option value="Anguilla">Anguilla</option>
                                                                             <option value="Antarctica">Antarctica</option>
                                                                             <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                                                             <option value="Argentina">Argentina</option>
                                                                             <option value="Armenia">Armenia</option>
                                                                             <option value="Aruba">Aruba</option>
                                                                             <option value="Australia">Australia</option>
                                                                             <option value="Austria">Austria</option>
                                                                             <option value="Azerbaijan">Azerbaijan</option>
                                                                             <option value="Bahamas">Bahamas</option>
                                                                             <option value="Bahrain">Bahrain</option>
                                                                             <option value="Bangladesh">Bangladesh</option>
                                                                             <option value="Barbados">Barbados</option>
                                                                             <option value="Belarus">Belarus</option>
                                                                             <option value="Belgium">Belgium</option>
                                                                             <option value="Belize">Belize</option>
                                                                             <option value="Benin">Benin</option>
                                                                             <option value="Bermuda">Bermuda</option>
                                                                             <option value="Bhutan">Bhutan</option>
                                                                             <option value="Bolivia">Bolivia</option>
                                                                             <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                                                             <option value="Botswana">Botswana</option>
                                                                             <option value="Bouvet Island">Bouvet Island</option>
                                                                             <option value="Brazil">Brazil</option>
                                                                             <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                                                                             <option value="Brunei Darussalam">Brunei Darussalam</option>
                                                                             <option value="Bulgaria">Bulgaria</option>
                                                                             <option value="Burkina Faso">Burkina Faso</option>
                                                                             <option value="Burundi">Burundi</option>
                                                                             <option value="Cambodia">Cambodia</option>
                                                                             <option value="Cameroon">Cameroon</option>
                                                                             <option value="Canada">Canada</option>
                                                                             <option value="Cape Verde">Cape Verde</option>
                                                                             <option value="Cayman Islands">Cayman Islands</option>
                                                                             <option value="Central African Republic">Central African Republic</option>
                                                                             <option value="Chad">Chad</option>
                                                                             <option value="Chile">Chile</option>
                                                                             <option value="China">China</option>
                                                                             <option value="Christmas Island">Christmas Island</option>
                                                                             <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                                                             <option value="Colombia">Colombia</option>
                                                                             <option value="Comoros">Comoros</option>
                                                                             <option value="Congo">Congo</option>
                                                                             <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
                                                                             <option value="Cook Islands">Cook Islands</option>
                                                                             <option value="Costa Rica">Costa Rica</option>
                                                                             <option value="Cote D'ivoire">Cote D'ivoire</option>
                                                                             <option value="Croatia">Croatia</option>
                                                                             <option value="Cuba">Cuba</option>
                                                                             <option value="Cyprus">Cyprus</option>
                                                                             <option value="Czech Republic">Czech Republic</option>
                                                                             <option value="Denmark">Denmark</option>
                                                                             <option value="Djibouti">Djibouti</option>
                                                                             <option value="Dominica">Dominica</option>
                                                                             <option value="Dominican Republic">Dominican Republic</option>
                                                                             <option value="Ecuador">Ecuador</option>
                                                                             <option value="Egypt">Egypt</option>
                                                                             <option value="El Salvador">El Salvador</option>
                                                                             <option value="Equatorial Guinea">Equatorial Guinea</option>
                                                                             <option value="Eritrea">Eritrea</option>
                                                                             <option value="Estonia">Estonia</option>
                                                                             <option value="Ethiopia">Ethiopia</option>
                                                                             <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                                                             <option value="Faroe Islands">Faroe Islands</option>
                                                                             <option value="Fiji">Fiji</option>
                                                                             <option value="Finland">Finland</option>
                                                                             <option value="France">France</option>
                                                                             <option value="French Guiana">French Guiana</option>
                                                                             <option value="French Polynesia">French Polynesia</option>
                                                                             <option value="French Southern Territories">French Southern Territories</option>
                                                                             <option value="Gabon">Gabon</option>
                                                                             <option value="Gambia">Gambia</option>
                                                                             <option value="Georgia">Georgia</option>
                                                                             <option value="Germany">Germany</option>
                                                                             <option value="Ghana">Ghana</option>
                                                                             <option value="Gibraltar">Gibraltar</option>
                                                                             <option value="Greece">Greece</option>
                                                                             <option value="Greenland">Greenland</option>
                                                                             <option value="Grenada">Grenada</option>
                                                                             <option value="Guadeloupe">Guadeloupe</option>
                                                                             <option value="Guam">Guam</option>
                                                                             <option value="Guatemala">Guatemala</option>
                                                                             <option value="Guernsey">Guernsey</option>
                                                                             <option value="Guinea">Guinea</option>
                                                                             <option value="Guinea-bissau">Guinea-bissau</option>
                                                                             <option value="Guyana">Guyana</option>
                                                                             <option value="Haiti">Haiti</option>
                                                                             <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
                                                                             <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                                                             <option value="Honduras">Honduras</option>
                                                                             <option value="Hong Kong">Hong Kong</option>
                                                                             <option value="Hungary">Hungary</option>
                                                                             <option value="Iceland">Iceland</option>
                                                                             <option value="India">India</option>
                                                                             <option value="Indonesia">Indonesia</option>
                                                                             <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                                                                             <option value="Iraq">Iraq</option>
                                                                             <option value="Ireland">Ireland</option>
                                                                             <option value="Isle of Man">Isle of Man</option>
                                                                             <option value="Israel">Israel</option>
                                                                             <option value="Italy">Italy</option>
                                                                             <option value="Jamaica">Jamaica</option>
                                                                             <option value="Japan">Japan</option>
                                                                             <option value="Jersey">Jersey</option>
                                                                             <option value="Jordan">Jordan</option>
                                                                             <option value="Kazakhstan">Kazakhstan</option>
                                                                             <option value="Kenya">Kenya</option>
                                                                             <option value="Kiribati">Kiribati</option>
                                                                             <option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
                                                                             <option value="Korea, Republic of">Korea, Republic of</option>
                                                                             <option value="Kuwait">Kuwait</option>
                                                                             <option value="Kyrgyzstan">Kyrgyzstan</option>
                                                                             <option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
                                                                             <option value="Latvia">Latvia</option>
                                                                             <option value="Lebanon">Lebanon</option>
                                                                             <option value="Lesotho">Lesotho</option>
                                                                             <option value="Liberia">Liberia</option>
                                                                             <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                                                                             <option value="Liechtenstein">Liechtenstein</option>
                                                                             <option value="Lithuania">Lithuania</option>
                                                                             <option value="Luxembourg">Luxembourg</option>
                                                                             <option value="Macao">Macao</option>
                                                                             <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
                                                                             <option value="Madagascar">Madagascar</option>
                                                                             <option value="Malawi">Malawi</option>
                                                                             <option value="Malaysia">Malaysia</option>
                                                                             <option value="Maldives">Maldives</option>
                                                                             <option value="Mali">Mali</option>
                                                                             <option value="Malta">Malta</option>
                                                                             <option value="Marshall Islands">Marshall Islands</option>
                                                                             <option value="Martinique">Martinique</option>
                                                                             <option value="Mauritania">Mauritania</option>
                                                                             <option value="Mauritius">Mauritius</option>
                                                                             <option value="Mayotte">Mayotte</option>
                                                                             <option value="Mexico">Mexico</option>
                                                                             <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
                                                                             <option value="Moldova, Republic of">Moldova, Republic of</option>
                                                                             <option value="Monaco">Monaco</option>
                                                                             <option value="Mongolia">Mongolia</option>
                                                                             <option value="Montenegro">Montenegro</option>
                                                                             <option value="Montserrat">Montserrat</option>
                                                                             <option value="Morocco">Morocco</option>
                                                                             <option value="Mozambique">Mozambique</option>
                                                                             <option value="Myanmar">Myanmar</option>
                                                                             <option value="Namibia">Namibia</option>
                                                                             <option value="Nauru">Nauru</option>
                                                                             <option value="Nepal">Nepal</option>
                                                                             <option value="Netherlands">Netherlands</option>
                                                                             <option value="Netherlands Antilles">Netherlands Antilles</option>
                                                                             <option value="New Caledonia">New Caledonia</option>
                                                                             <option value="New Zealand">New Zealand</option>
                                                                             <option value="Nicaragua">Nicaragua</option>
                                                                             <option value="Niger">Niger</option>
                                                                             <option value="Nigeria">Nigeria</option>
                                                                             <option value="Niue">Niue</option>
                                                                             <option value="Norfolk Island">Norfolk Island</option>
                                                                             <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                                                             <option value="Norway">Norway</option>
                                                                             <option value="Oman">Oman</option>
                                                                             <option value="Pakistan">Pakistan</option>
                                                                            
                                                                    </select>
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Recovery Question?</label>
                                                                <input type="text" name="question" placeholder="Enter Recovery Question Here.." class="form-control">
							</div>		
							<div class="col-sm-6 form-group">
								<label>Recovery Answer</label>
                                                                <input type="text" name="answer" placeholder="Enter Recovery Answer Here.." class="form-control">
							</div>	
						</div>						
					<div class="form-group">
						<label>Phone Number</label>
						<input type="text" name="phone" placeholder="Enter Phone Number Here.." class="form-control">
					</div>		
					<div class="form-group">
						<label>Email Address</label>
                                                <input type="text" name="email" placeholder="Enter Email Address Here.." class="form-control">
					</div>	
                                        <div class="form-group">
						<label>Password</label>
						<input type="password"  placeholder="Enter password Address Here.." name="password" class="form-control">
					</div>
                                        <div class="form-group">
                                            <label for="gender">Select Gender</label>
                                            <br>
                                            <input type="radio" id="gender" name="gender">Male
                                            <input type="radio" id="gender" name="gender">Female
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1">agree term and conditons</label>
                                        </div>
                                            <br>
                                            <div  class="row">
                                                <button type="submit" class="btn btn-lg btn-info col-md-6">Submit</button>
                                        </form>          
                                                    
                                                <form action="Login" method="Post">
                                                    <button type="submit" class="btn btn-primary col-md-12 text-left"role="button"><span class="fa fa-user-plus fa-2x "></span> Login</button>
            
                                                </form>
                                                <%--<button id="gotosignin"><a href="LoginPage.jsp" id="gotosignin" class="tab">Login Form</a></button>--%>
                                            </div>
					</div>
				
                </div>
				</div>
	</div>
	</div>
        
        
      
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    </body>
</html>

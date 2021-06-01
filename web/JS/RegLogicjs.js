
            $(document).ready(function () {
                console.log("loaded........")
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $("#sumbimt-btn").hide();
                    $("#loader").show();
                    //send register servlet:
                    $.ajax({
                        url: "Registration",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
                            $("#sumbimt-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done'){
                                swal("Registered successfully..We are going to redirect to login page")
                                        .then((value) => {
                                            window.location = "LoginPage"
                                        });
                            }else if (data.trim() === 'exist'){
                                swal("This User Account already exists")
                                        .then((value) => {
                                            window.location = "Register"
                                        });
                            }else{
                                swal(data)                                                                
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#sumbimt-btn").show();
                            $("#loader").hide();
                            swal("something went wrong..try again");
                        },
                        processData: false,
                        contentType: false
                    });
                });
            });
            

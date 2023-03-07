<!DOCTYPE html>

<html lang="en">

    <head>

        <meta charset="UTF-8">

        <title>Soulsoft || Contact</title> 



<?php include './header.php'; ?>



<!--<section class="contact_area">-->

<section class="blog sec-padd2">

    <div class="home-google-map">

<!--        <div 

            class="google-map" 

            id="contact-google-map" 

            data-map-lat="40.713603" 

            data-map-lng="-74.083533" 

            data-icon-path="images/logo/map-marker.png"

            data-map-title="Chester"

            data-map-zoom="11" >



        </div>-->







    </div>

    <div class="container">

        <div class="contact-bg">

            <h1 class="headding">Contact our support guys or make appointment <br>with our consultants</h1>

            <div class="contact-form">

                <div class="row">

                        <div class="col-md-6 col-sm-12">

                            <p>Please contact us using the information below. For additional <br>information on our management consulting services, please visit the appropriate page on our site.</p>

                            <ul class="contact-info">

                                <li><i class="fa fa-map-signs"></i><h4>Corporate Office Address :</h4><br>Shop 10-B, 2nd Floor,<br>Topten Imperial, Above Relaince Digital,<br>College Road, Sangamner - 422605, <br>Ahmednagar <br><!--a href="#"><i class="fa fa-street-view"></i>view on map</a--></li>

                                <li><i class="fa fa-map-signs"></i><h4>Reg. Office Address :</h4><br>Flat No. 6, Jaybhadra Complex,<br>Shriram Chouk,Golden city,<br>Gunjalwadi Sangamner-422605, <br>Ahmednagar <br><!--a href="#"><i class="fa fa-street-view"></i>view on map</a--></li>

                                <li><i class="icon-telephone"></i> +918055798579 | +917020622324</li>

                                <li>

                                    <i class="icon-note"></i>hr@soulsoftinfotech.in /<br>

                                                             prasad.godage@gmail.com
                                </li>

                            </ul>

                        </div>

                        <div class="col-md-6 col-sm-12">

                            <div class="default-form-area">

                                <form id="contact-form" name="contact_form" class="default-form" action="contactus.php" method="post">

                                    <div class="row clearfix">

                                        <div class="col-md-12 col-sm-12 col-xs-12">



                                            <div class="form-group">

                                                <input type="text" name="form_name" class="form-control" value="" placeholder="Your Name *" required="">

                                            </div>

                                        </div>

                                        <div class="col-md-12 col-sm-12 col-xs-12">

                                            <div class="form-group">

                                                <input type="email" name="form_email" class="form-control required email" value="" placeholder="Your Mail *" required="">

                                            </div>

                                        </div>

                                        <div class="col-md-6 col-sm-6 col-xs-12">

                                            <div class="form-group">

                                                <input type="text" name="form_phone" class="form-control" value="" placeholder="Phone">

                                            </div>

                                        </div>

                                        <div class="col-md-6 col-sm-6 col-xs-12">

                                            <div class="form-group">

                                                <input type="text" name="form_subject" class="form-control" value="" placeholder="Subject">

                                            </div>

                                        </div>

                                        <div class="col-md-12 col-sm-12 col-xs-12">

                                            <div class="form-group">

                                                <textarea name="form_message" class="form-control textarea required" placeholder="Write...."></textarea>

                                            </div>

                                        </div> 

                                        <div id="form-messages" class="alert" role="alert"></div>

                                        <div class="col-md-12 col-sm-12 col-xs-12">

                                            <div class="form-group">

                                                <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">

                                                <button class="thm-btn thm-color" type="submit" data-loading-text="Please wait...">Submit</button>

                                            </div>

                                        </div>   



                                    </div>

                                    

                                </form>

                            </div>



                        </div>

                    

                </div>

                <!--////-->

            </div>

        </div>



    </div>





</section>







<?php include './footer.php'; ?>



 <script>

        

         $('#contact-form').on('submit', function (e) {



        e.preventDefault();

        var formdata = new FormData(this);

        $.ajax({



                url: 'contactus.php',



                type: 'POST',



                data: formdata,



                cache: false,



                contentType: false,



                processData: false,



                dataType: 'json',



                success: function (response) {

                    $('#form-messages').html('<p style="color:#17a05d">'+response.Message+'</p>');

               // console.log(response);

               //alert(response.Message);

                }



            });

    });

        

        

        

        </script>







<!DOCTYPE html>

<html lang="en">

    <head>

        <meta charset="UTF-8">

        <title>Soulsoft || SKS</title> 
<?php include '../header1.php';?>

<link href="css/ourclient-style.css" rel="stylesheet"/></head>
<body>
   <section class="service sec-padd2" style="background-color: #203364;padding: 20px 0 0px;margin-bottom: 10px;">
        <div class="container">
            <div class="section-title center" style="margin-bottom: 20px;">
            <h3 style="color: white;"><span style="text-transform:uppercase;">  <?php echo  $_SESSION['ShopName'] ; ?></span></h3> 
                <h5 style="font-weight:bolder;color: #d0d8f1;">SHETKARI KRUSHI SOFTWARE </h5>
                
            </div>              
        </div>
    </section> 
  


</body>
</html>
            <div class="border"></div>

            


<?php include '../footer1.php'; ?>

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










<?php
// $servername = "localhost";

// $username = "soulsoftin_root";

// $password = "soulshiv@1987#Soul";
// $dbName = "soulsoftin_SKS_Prasad";
// $con = mysqli_connect($servername, $username, $password, $dbName);

// if($con) 
// {
//     echo "Success"
// }


?>

<!DOCTYPE html>

<html lang="en">

    <head>

        <meta charset="UTF-8">

        <title>Soulsoft || SKS</title> 
<?php include './header1.php';?>

<link href="cust_css/ourclient-style.css" rel="stylesheet"/></head>
<body>
   <section class="service sec-padd2" style="background-color: #203364;padding: 20px 0 0px;margin-bottom: 10px;">
        <div class="container">
            <div class="section-title center" style="margin-bottom: 20px;">
            <h3 style="color: white;"><span style="text-transform:uppercase;">  <?php echo  $_SESSION['ShopName'] ; ?></span></h3> 
                <h5 style="font-weight:bolder;color: #d0d8f1;">SHETKARI KRUSHI SOFTWARE </h5>
                
            </div>              
        </div>
    </section> 
  

<section class="why-chooseus">

<div class="container">

 <div class="row" style="margin-left:70px;">

 <!-- Set The Date  -->
       <div class="col-md-12 col-sm-12 col-xs-12">
        <form action="DTBackend.php" style="margin-left: 800px; margin-top:30px; margin-bottom:60px;" method="POST">
        <div class="form-gruop">
          <label for="date"><h4><strong>Date:</strong></h4></label>
          <!-- <input type="date" id="date" name="date" value=""> -->
           <input type="date" id="date" name="date" value="<?php echo date('y-m-d'); ?>">
           <!-- <button type="submit" class="btn-primary mt-5">Get Data</button> -->
        </div>
        </form>
    </div>
    <br>
    <br> 
<!---------- end ----------->

<div class="col-md-12 col-sm-12 col-xs-12 shadow p-3">
        <form class="form-horizontal" style="margin-left:20px;">        
            <CENTER><h3><B>DAILY TRANSACTIONS</B></h3></CENTER><BR>

              <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups" style="margin-bottom:10px;">

              <div class="col-md-2 col-xs-12">
                </div>
              
              <div class="col-md-2 col-xs-12 text-center">
                <div class="btn-group" role="group" aria-label="First group">
                 <button type="button" class="btn btn-secondary p-3"><a href="Stock.php"><B><h5><strong>TOTAL</strong></h5></B></a></button> 
                </div>
              </div>
               <div class="col-md-2 col-xs-12 text-center">
                <div class="btn-group" role="group" aria-label="Second group">
                 <button type="button" class="btn btn-secondary p-3"><a href="Stock.php"><B><h5><strong>CASH</strong></h5></B></a></button>
                </div>
               </div>
               <div class="col-md-2 col-xs-12 text-center">
                <div class="btn-group" role="group" aria-label="Third group">
                 <button type="button" class="btn btn-secondary p-3"><a href="Stock.php"><B><h5><strong>BANK</strong></h5></B></a></button>
                </div>
               </div>
              <div class="col-md-2 col-xs-12 text-center">
                <div class="btn-group" role="group" aria-label="Third group">
                 <button type="button" class="btn btn-secondary p-3"><a href="Stock.php"><B><h5><strong>CREDIT</strong></h5></B></a></button>
                </div>
              </div>
              </div>
      
              <div class="row">
                  <div class="form-horizontal">
                      <div class="form-group col-md-12 col-xs-12">
                          <div class="col-md-2 col-xs-12">
                              <label class="control-label"><h5><strong>SALES</strong></h5></label>
                          </div>
                                <div class="col-md-2 col-xs-12">
                                <input id="percentage" class="form-control" type="text" placeholder="" Value="<?php echo $row['totSales']?>">
                                </div>
                                <div class="col-md-2 col-xs-12">
                                    <input id="flat" class="form-control" type="text" placeholder="" Value="<?php echo $row['cashSales']?>">
                                </div>
                                <div class="col-md-2 col-xs-12">
                                    <input id="percentage" class="form-control" type="text" placeholder="" Value="<?php echo $row['bankSales']?>">
                                </div>
                                <div class="col-md-2 col-xs-12">
                                    <input id="flat" class="form-control" type="text" placeholder=""
                                    Value="<?php echo $row['creditSales']?>">
                                </div>
                      </div>
                  </div>
              </div>
            

              <div class="row">
                  <div class="form-horizontal">
                      <div class="form-group col-md-12 col-xs-12">
                          <div class="col-md-2 col-xs-12">
                              <label class="control-label"><h5><strong>PURCHASE</strong></h5></label>
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="percentage" class="form-control" type="text" placeholder="">
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="flat" class="form-control" type="text" placeholder="">
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="percentage" class="form-control" type="text" placeholder="">
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="flat" class="form-control" type="text" placeholder="">
                          </div>
                      </div>
                  </div>
              </div>

              <div class="row">
                  <div class="form-horizontal">
                      <div class="form-group col-md-12 col-xs-12">
                          <div class="col-md-2 col-xs-12">
                              <label class="control-label"><h5><strong>RECEIPT</strong></h5></label>
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="percentage" class="form-control" type="text" placeholder="">
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="flat" class="form-control" type="text" placeholder="">
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="percentage" class="form-control" type="text" placeholder="">
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="flat" class="form-control" type="text" placeholder="">
                          </div>
                      </div>
                  </div>
              </div>

              <div class="row">
                  <div class="form-horizontal">
                      <div class="form-group col-md-12 col-xs-12">
                          <div class="col-md-2 col-xs-12">
                              <label class="control-label"><h5><strong>PAYMENT</strong></h5></label>
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="percentage" class="form-control" type="text" placeholder="">
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="flat" class="form-control" type="text" placeholder="">
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="percentage" class="form-control" type="text" placeholder="">
                          </div>
                          <div class="col-md-2 col-xs-12">
                              <input id="flat" class="form-control" type="text" placeholder="">
                          </div>
                      </div>
                  </div>
              </div>


          </form>

     </div> 
<!-- --------- Transaction Table end ------------------- -->
</section>

</body>
</html>

            <div class="border"></div>

            <?php include './footer1.php'; ?>

     <script>
        
    document.getElementById('date').valueAsDate = new Date();

    </script>
    

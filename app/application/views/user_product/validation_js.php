<script>

$(function() {

    $("#addUserproductForm").validate( {

        ignore: [], rules: {

            userId: {

                required: true

            }
           , productId: {

                required: true

            }
         ,   installationDate: {

                required: true

            }
         ,   installationAmount: {

                required: true, minlength: 2, maxlength: 255

            }
         ,   amcAmountPerYear: {

                required: true, minlength: 2, maxlength: 255

            }
         ,   upcommingAmcDate: {

                required: true

            }
            
        }

        , messages: {

            userId: {

                required: 'Enter User Name'

            }  ,
            productId: {

                required: 'Enter Product Name'

            }  ,
            installationDate: {

                required: 'Enter Installation Date'

            }  ,
            installationAmount: {

                required: 'Enter Installation Amount', minlength: 'please enter more Number', maxlength: 'length is exceed'

            }  ,
            amcAmountPerYear: {

                required: 'Enter AMC Amount/Year', minlength: 'please enter more Number', maxlength: 'length is exceed'

            }  ,
            upcommingAmcDate: {

                required: 'Enter Upcoming Date'

            }  

            

        }

    });

});

//add amc
$(function() {

    $("#addamcForm").validate( {

        ignore: [], rules: {

            amc_amount: {

                required: true,number:true

            }
           , amc_date: {

                required: true

            }
            
        }

        , messages: {

            amc_amount: {

                required: 'Enter Amc Amount',number:'Please enter valid number'

            }  ,
            amc_date: {

                required: 'Enter Amc Date'

            }  

        }

    });

});


</script>
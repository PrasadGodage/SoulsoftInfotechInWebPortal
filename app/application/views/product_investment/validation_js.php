<script>

$(function() {

    $("#addProductInvestForm").validate( {

        ignore: [], rules: {

            investment: {

                required: true, minlength: 2, maxlength: 255

            }
            
        }

        , messages: {

            investment: {

                required: 'Enter investment amount', minlength: 'please enter more word', maxlength: 'length is exceed'

            }
         
            

        }

    });

});



</script>
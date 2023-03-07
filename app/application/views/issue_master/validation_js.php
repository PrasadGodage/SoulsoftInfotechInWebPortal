<script>

$(function() {

    $("#addIssuemasterForm").validate( {

        ignore: [], rules: {

            issue: {

                required: true, minlength: 2, maxlength: 255

            }
          ,  call_date: {

                required: true

            }
                       
        }

        , messages: {

            issue: {

                required: 'Enter Issue', minlength: 'please enter more word', maxlength: 'length is exceed'

            }
          ,  call_date: {

                required: 'Enter call date'

            }
         
        }

    });

});



</script>
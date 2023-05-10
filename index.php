<?php

  include 'inc/header.php';
  include 'Controller/Message.php';
  $msg = new Message();

  if(isset($_POST['sendmsg'])){
    $result = $msg->adminmsg($_POST);
  }

  include 'inc/navbar.php';
  include 'inc/cover.php';
  include 'inc/about.php';
  include 'inc/contact.php';
  include 'inc/footer.php';
 ?>
 <script>
 $(function(){
   $( "#main_range_cover" ).slider({
         range: true,
         min: 5000,
         max: 100000,
         values: [<?php if(isset($range1) && isset($range2)){
           echo $range1.','.$range2;}
           else{?> 5000,100000 <?php } ?>],
         slide: function( event, ui ) {
           $( "#input_range_cover" ).val( "TK " + ui.values[ 0 ] + " - TK " + ui.values[ 1 ] );
         }
    });
    $( "#input_range_cover" ).val( "TK " + $( "#main_range_cover" ).slider( "values", 0 ) +
     " - TK " + $( "#main_range_cover" ).slider( "values", 1 ) );
   });
 </script>
 <!-- <script>
 $(function(){
   $( "#main_range_cover" ).slider({
         range: true,
         min: 5000,
         max: 100000,
         values: [<?php if(isset($range1) && isset($range2)){
           echo $range1.','.$range2;}
           else{?> 5000,100000 <?php } ?>],
         slide: function( event, ui ) {
           $( "#input_range_cover" ).val( "TK " + ui.values[ 0 ] + " - TK " + ui.values[ 1 ] );
         }
    });
    $( "#input_range_cover" ).val( "TK " + $( "#main_range_cover" ).slider( "values", 0 ) +
     " - TK " + $( "#main_range_cover" ).slider( "values", 1 ) );
   });
 </script> -->

<!-- <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
        function sendEmail() {
            var email = $("#email");
            var message = $("#message");

            if (isNotEmpty(email) && isNotEmpty(message)) {
                $.ajax({
                   url: 'sendEmail.php',
                   method: 'POST',
                   dataType: 'json',
                   data: {
                       email: email.val(),
                       message: message.val()
                   }, success: function (response) {
                        $('#sendEmail')[0].reset();
                        $('.sent-notification').text("Message Sent Successfully.");
                   }
                });
            }
        }

        function isNotEmpty(caller) {
            if (caller.val() == "") {
                caller.css('border', '1px solid red');
                return false;
            } else
                caller.css('border', '');

            return true;
        }
    </script> -->

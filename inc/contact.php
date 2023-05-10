<div class="contact_area" id="contact">
  <div class="contact_main container">
    <?php $h='2px'; $title = 'Contact';include 'inc/heading_title.php';?>
    <div class="contact">
      <form class="" action="https://formspree.io/f/xoqbqqyy" method="post">
        <table>
          <tr class="margin-10px;">
            <td>Email:</td>
            <td> <input class="form-control" type="text" name="email" value=""> </td>
          </tr>
          <tr>
            <td style="vertical-align:top;">Comment:</td>
            <td> <textarea class="form-control" name="body" rows="8" cols="80"></textarea> </td>
          </tr>
        </table>
        <input type="submit" class="btn btn-primary submit" name="sendmsg" value="Send">
      </form>
      <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
        function sendEmail() {
            var email = $("#email");
            var body = $("#body");

            if (isNotEmpty(email) && isNotEmpty(body)) {
                $.ajax({
                   url: 'sendEmail.php',
                   method: 'POST',
                   dataType: 'json',
                   data: {
                       email: email.val(),
                       body: body.val()
                   }, success: function (response) {
                        $('#form')[0].reset();
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
    </script>
    </div>
  </div>
</div>

<!-- <!DOCTYPE hrml>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name=:viewport" content="width-device-width, initial-scale-1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="stylee.css">
</head>
<body>

    <div class="container">
    <center>
    <?php $h='2px'; $title = 'Contact';include 'inc/heading_title.php';?>
     <form action="https://formspree.io/f/xoqbqqyy" method="POST">
            <p>Email : </p>
            <input type="email" name="Email" placeholder="Email" required>
            <br><br>
            <p>Message : </p> 
            <textarea name="Message" placeholder="Message" rows="8" cols="25" required></textarea>
            <br><br>
            <button type="submit">Send</button>
            <br><br>
        </form>
    </center>
    </div>

</body>
</html> -->

<!-- <!DOCTYPE html>
<html>
<head>
    <title>Send an Email</title>
</head>
<body>

	<center>
		<h4 class="sent-notification"></h4>

		<form id="myForm">

			<label>Email</label>
			<input id="email" type="text" placeholder="Enter Email">
			<br>

			<p>Message</p>
			<textarea id="body" rows="5" placeholder="Type Message"></textarea>
			<br>

			<button type="button" onclick="sendEmail()" value="Send An Email">Send</button>
		</form>
	</center>

	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
        function sendEmail() {
            var email = $("#email");
            var body = $("#body");

            if (isNotEmpty(email) && isNotEmpty(body)) {
                $.ajax({
                   url: 'sendEmail.php',
                   method: 'POST',
                   dataType: 'json',
                   data: {
                       email: email.val(),
                       body: body.val()
                   }, success: function (response) {
                        $('#myForm')[0].reset();
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
    </script>

</body>
</html> -->
      
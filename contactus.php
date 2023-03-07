<?php

    // Only process POST reqeusts.
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Get the form fields and remove whitespace.
        $name = strip_tags(trim($_POST["form_name"]));
		$name = str_replace(array("\r","\n"),array(" "," "),$name);
        $email = filter_var(trim($_POST["form_email"]), FILTER_SANITIZE_EMAIL);
        $phone = trim($_POST["form_phone"]);
        $fsubject = trim($_POST["form_subject"]);
        $message = trim($_POST["form_message"]);
        $response = null;

        // Check that data was sent to the mailer.
        if ( empty($name) OR empty($message) OR !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // Set a 400 (bad request) response code and exit.
            $response = array(
            'Message' => "Oops! There was a problem with your submission. Please complete the form and try again.",
            'status' => 400
        );
        print json_encode($response);
            //http_response_code(400);
            //echo "Oops! There was a problem with your submission. Please complete the form and try again.";
            exit;
        }

        // Update this to your desired email address.
      // $recipient = "lalitrmeshram@gmail.com";
        $recipient = "prasad.godage@gmail.com";
		$subject = $fsubject;

        // Email content.
        $email_content = "Name: $name\n";
        $email_content .= "Email: $email\n\n";
        $email_content .= "Subject: $subject\n\n";
        $email_content .= "phone No: $phone\n\n";
        $email_content .= "Message: $message\n";

        // Email headers.
        $email_headers = "From: $name <$email>\r\nReply-to: <$email>";

        // Send the email.
        if (mail($recipient, $subject, $email_content, $email_headers)) {
            // Set a 200 (okay) response code.
            $response = array(
            'Message' => "Thank You! Your message has been sent.",
            'status' => 200
        );
        print json_encode($response);
            //http_response_code(200);
            //echo "Thank You! Your message has been sent.";
        } else {
            // Set a 500 (internal server error) response code.
            $response = array(
            'Message' => "Oops! Something went wrong and we couldn't send your message.",
            'status' => 500
        );
        print json_encode($response);
            //http_response_code(500);
            //echo "Oops! Something went wrong and we couldn't send your message.";
        }

    } else {
        // Not a POST request, set a 403 (forbidden) response code.
        $response = array(
            'Message' => "There was a problem with your submission, please try again.",
            'status' => 403
        );
        print json_encode($response);
        //http_response_code(403);
        //echo "There was a problem with your submission, please try again.";
    }

?>
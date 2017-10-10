<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
    <div class="row">
		
    	<div class="col-md-2">
			<form>
			<div id="contact-form" class="form-container" data-form-container>
			<div class="row">
				<div class="form-title">
					<span>Contact Us</span>
				</div>
			</div>
			<div class="input-container">
				<div class="row">
					<span class="req-input" >
						<span class="input-status" data-toggle="tooltip" data-placement="top" title="Input Your First and Last Name."> </span>
						<input type="text" data-min-length="8" placeholder="Full Name">
					</span>
				</div>
				<div class="row">
					<span class="req-input">
						<span class="input-status" data-toggle="tooltip" data-placement="top" title="Please Input Your Email."> </span>
						<input type="email" placeholder="Email">
					</span>
				</div>
				<div class="row">
					<span class="req-input">
						<span class="input-status" data-toggle="tooltip" data-placement="top" title="Please Input Your Phone Number."> </span>
						<input type="tel" placeholder="Phone Number">
					</span>
				</div>
				<div class="row">
					<span class="req-input message-box">
						<span class="input-status" data-toggle="tooltip" data-placement="top" title="Please Include a Message."> </span>
						<textarea type="textarea" data-min-length="10" placeholder="Message"></textarea>
				</div>
				<div class="row submit-row">
					<button type="button" class="btn btn-block submit-form">Submit</button>
				</div>
			</div>
			</div>
			</form>
		</div>

</body>
</html>
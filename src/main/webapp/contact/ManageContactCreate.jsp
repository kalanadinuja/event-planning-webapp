<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Contact Us</title>
  <link rel="stylesheet" href="assets/style.css" />
</head>
<body>

  <div class="container">
    <!-- Left Side: Form -->
    <div class="form-section">
      <h2>Send a Message</h2>
      <form id="contact-form" action="${pageContext.request.contextPath}/contact/submitContact" method="post">
        <div class="row">
          <input type="text" id="firstname" name="firstname" placeholder="First Name" required />
          <input type="text" id="lastname" name="lastname" placeholder="Last Name" required />
        </div>

        <div class="row">
          <input type="email" id="email" name="email" placeholder="Ex: johndoe@email.com" required />
          <input type="tel" id="phone" name="phone" placeholder="+94 712 345 678" required />
        </div>

        <div class="row">
          <textarea id="message" name="message" placeholder="Write your message here..." required></textarea>
        </div>

        <button type="submit">Send</button>
      </form>
    </div>

    <!-- Right Side: Contact Info -->
    <div class="info-section">
      <h2>Contact Info</h2>
      <p><strong>Location:</strong> Colombo 07, Sri Lanka</p>
      <p><strong>Email:</strong> onlineevent23@gmail.com</p>
      <p><strong>Phone:</strong> +94 712 345 678</p>

      <div class="social-icons">
        <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/733/733547.png" alt="Facebook" title="Facebook"></a>
        <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/733/733579.png" alt="Twitter" title="Twitter"></a>
        <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/145/145807.png" alt="LinkedIn" title="LinkedIn"></a>
        <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/2111/2111463.png" alt="Instagram" title="Instagram"></a>
      </div>

      <iframe 
        src="https://www.google.com/maps?q=Colombo+07,+Sri+Lanka&output=embed"
        allowfullscreen
        loading="lazy">
      </iframe>
    </div>
  </div>

  
</body>
</html>
    
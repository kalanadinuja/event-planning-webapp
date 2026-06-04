<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Edit Contact Message</title>
  <link rel="stylesheet" href="contact/assets/edit.css" />
</head>
<body>

  <div class="edit-container">
    <h2>Edit Contact Message</h2>

    
    <form id="edit-form" action="${pageContext.request.contextPath}/contact" method="post">

      <!-- Hidden Inputs for Action and ID -->
      <input type="hidden" name="action" value="update"/>
      <input type="hidden" name="id" value="${message.id}"/>

      <div class="row">
        <label for="firstname">First Name:</label>
        <input type="text" id="firstname" name="firstname" value="${message.firstname}" required />
      </div>

      <div class="row">
        <label for="lastname">Last Name:</label>
        <input type="text" id="lastname" name="lastname" value="${message.lastname}" required />
      </div>

      <div class="row">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${message.email}" required />
      </div>

      <div class="row">
        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" value="${message.phone}" required />
      </div>

      <div class="row">
        <label for="message">Message:</label>
        <textarea id="message" name="message" required>${message.message}</textarea>
      </div>

      <div class="buttons">
        <button type="submit">Update</button>
        <button type="button" class="cancel-btn" onclick="window.location.href='${pageContext.request.contextPath}/contact'">Cancel</button>
      </div>
    </form>
  </div>

</body>
</html>

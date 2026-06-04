<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Contact Messages</title>
  <link rel="stylesheet" href="contact/assets/messages.css" />
</head>
<body>

  <div class="container">
    <h2>Contact Messages</h2>

    <button class="back-btn" onclick="window.location.href='${pageContext.request.contextPath}/contact/ManageContactCreate.jsp'">Back to Dashboard</button>

    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th> 
          <th>Phone</th>
          <th>Message</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="message" items="${messages}">
          <tr>
            <td>${message.id}</td>
            <td>${message.firstname}</td>
            <td>${message.lastname}</td>
            <td>${message.email}</td> 
            <td>${message.phone}</td>
            <td>${message.message}</td>
            <td>
              <button class="edit-btn" onclick="window.location.href='contact?action=edit&id=${message.id}'">Edit</button>
              <button class="delete-btn" onclick="confirmAndRedirect('contact?action=delete&id=${message.id}')">Delete</button>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>

  <script>
    function confirmAndRedirect(url) {
      if (confirm("Are you sure you want to delete?")) {
        window.location.href = url;
      }
    }
  </script>

</body>
</html>

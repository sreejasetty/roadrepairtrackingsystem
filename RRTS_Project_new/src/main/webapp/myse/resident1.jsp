<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "rrts.resident.model.Resident_details" %>  
	 <%@ page import="jakarta.servlet.http.HttpSession" %>
     <%@ page import = "rrts.resident.controller.resident_servlet" %>  
     <%@ page import = "rrts.login.model.Login_details" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resident Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="user.css">
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">
        <img src="logo.jpg" alt="Logo" style="width: 40px; height: 40px; margin-right: 10px;">
        <span id="page_heading">Road Repair and Tracking System</span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-home"></i> Home
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="#footer">
                    <i class="fas fa-envelope"></i> Contact Us
                </a>
            </li>
            
        </ul>
    </div>
</nav>
<div class="container-fluid main">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3 col-lg-2 sidebar">
            <h4 class="sidebar-title">Menu</h4>
            <ul class="nav flex-column">
                 <li class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/click">
                        <i class="fas fa-user"></i>update
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="profile.jsp">
                        <i class="fas fa-user"></i> Profile
                    </a>
                </li>
              
                
                <li class="nav-item">
                    <a class="nav-link" href="raiseComplaint.jsp">
                        <i class="fas fa-file-alt"></i> Raise Complaint
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="complaintStatus.html">
                        <i class="fas fa-tasks"></i> Status of Complaints
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="settings.html">
                        <i class="fas fa-cog"></i> Settings
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="rating.html">
                        <i class="fas fa-star"></i> Rating
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">
                        <i class="fas fa-sign-out-alt"></i> Logout
                    </a>
                </li>
            </ul>
        </div>
		<%
			Login_details details = new Login_details();
		%>
        <!-- Main Content -->
        <div class="col-md-9 col-lg-10 main-content" id="main">
            <div class="container">
                <h1>Welcome,<%=details.getUsername() %></h1>
                <h5>Resident Guidelines:</h5>
                <ul>
                    <li>Ensure to keep your profile information up-to-date.</li>
                    <li>Report issues promptly through the Raise Complaint section.</li>
                    <li>Track the status of your complaints regularly.</li>
                    <li>Provide feedback in the Rating section to help us improve.</li>
                    <li>Contact support if you need assistance with settings.</li>
                </ul>
            </div>
        </div>  
    </div>
</div>    
<!-- footer -->
<footer class="bg-dark text-white pt-4 pb-3" id="footer">
    <div class="container text-center text-md-left">
        <div class="row">
            <!-- Contact Information -->
            <div class="col-md-4 mb-3">
                <h5>Contact Us</h5>
                <p>Email: rrts@gmail.com</p>
                <p>Phone: +1 234 567 890</p>
                <p>Address: Public Works Department, City Name</p>
            </div>

            <!-- About RRTS -->
            <div class="col-md-4 mb-3">
                <h5>About RRTS</h5>
                <p>The Road Repair and Tracking System (RRTS) is dedicated to efficient, transparent, and timely management of road repairs and maintenance for our city's infrastructure.</p>
            </div>

            <!-- Social Media Links -->
            <div class="col-md-4 mb-3 text-center text-md-left">
                <h5>Follow Us</h5>
                <a href="#" class="text-white mr-3"><i class="fab fa-facebook fa-2x"></i></a>
                <a href="#" class="text-white mr-3"><i class="fab fa-instagram fa-2x"></i></a>
                <a href="#" class="text-white mr-3"><i class="fab fa-twitter fa-2x"></i></a>
                <a href="#" class="text-white"><i class="fab fa-linkedin fa-2x"></i></a>
            </div>
        </div>
    </div>
    <div class="text-center py-3 mt-3">
        &copy; 2024 Road Repair and Tracking System (RRTS). All rights reserved.
    </div>
</footer>


<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seat Booking</title>
    <link rel="icon" href="uplogo.png">
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">
</head>
<body>
      <main>
        <div class="head">
            <div class="dates">
                <div style="color: rgb(43, 41, 41); font-size: 20px;">
                    <% 
                        String movieName = request.getParameter("movieName");
                        if (movieName == null || movieName.isEmpty()) {
                            movieName = "Movie";
                        }
                    %>
                    <%= movieName %>  <img style="margin-left: 5px;margin: 0px;" src="ua.png" alt="" width="30px" height="30px">
                    <br>
                    <p style="font-size: 16px;">INOX PVR AEROHUB AUDI 1 2:45PM</p>
                </div>
                <div style="color: black;opacity: 90%;">
                    12th DEC<br>
                    <p style="font-size: 16px;">Thursday</p>
                </div>
            </div>
        </div>
        <section class="seat-layout">
            <div class="seat-display">
                <p>Selected Seats: <span id="selected-seats">None</span></p>
            </div>
            <div class="seat-grid">
                <!-- Seats will be generated dynamically -->
            </div>
        </section>
        <div class="eyes">
            <img src="all_eyes-removebg-preview.png" alt="all eyes here darlin">
        </div>
        <section class="summary">
           <a href="../payment.jsp"><button class="butt" id="book-button">Pay ₹<span id="total-price">0</span></button></a>
        </section>
    </main>
    <footer class="foot">
        <div style="display: flex; flex-wrap: wrap; justify-content: space-around; padding: 20px;">
            <div>
                <h3>About FDFS</h3>
                <p style="max-width: 300px; opacity: 80%;">
                    Your ultimate destination for movies, events, and sports booking. Explore, discover, and enjoy the
                    best entertainment experiences near you.
                </p>
            </div>
            <div>
                <h3>Follow Us</h3>
                <div style="display: flex; gap: 15px;">
                    <a href="https://github.com/naveentk10" target="_blank">
                        <img src="Icons/github.png" alt="Github" width="30px">
                    </a>
                    <a href="https://x.com" target="_blank">
                        <img src="Icons/x.png" alt="Twitter" width="30px">
                    </a>
                    <a href="https://instagram.com" target="_blank">
                        <img src="Icons/instagram.png" alt="Instagram" width="30px">
                    </a>
                    <a href="https://youtube.com" target="_blank">
                        <img src="Icons/youtube.png" alt="YouTube" width="30px">
                    </a>
                </div>
            </div>
            <div>
                <h3>Contact Us</h3>
                <p style="opacity: 80%;">Email: naveentkz01@gmail.com</p>
                <p style="opacity: 80%;">Phone: +91 9876543210</p>
                <p style="opacity: 80%;">Address: Trichy, Tamil Nadu</p>
            </div>
        </div>
        <div class="copyright">
            <hr>
            <p style="opacity: 70%;">&copy; 2024 FDFS. All rights reserved to Naveen TK &copy</p>
        </div>
    </footer>
    <script src="script.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Book Your Show</title>
    <link rel="stylesheet" href="mainstyle.css">
    <link rel="icon" href="../mainhtml/uplogo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">
</head>
<body>
    <div class="navig">
        <div><img src="../mainhtml/logofdfs.png" bookmyshow logo" width="200px"></div>
        <div><input type="text" placeholder="Search for Movies,Events,Sports and Activites">
        </div>
        <div> <select name="select" id="select">
                <option value="Chennai">Chennai</option>
                <option value="Trichy">Trichy</option>
                <option value="Salem">Salem</option>
                <option value="Coimbatore">Coimbatore</option>
            </select></div>
       <div class="server">
            <button type="button" id="signin" style=" color: white;;background-color: #F84464; border: none;padding: 10px 20px; border-radius: 4px;;">
                     Welcome, <%= session.getAttribute("username") != null ? session.getAttribute("username") : "Guest" %>!
                </button>
        </div>
    </div>
    <main>
        <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="https://www.rblbank.com/" target="_blank">
                        <img src="../mainhtml/slide-1.jpg" class="d-block w-100" alt="Image 1">
                    </a>
                </div>
                <div class="carousel-item">
                    <a href="https://www.arrahman.com/" target="_blank">
                        <img src="../mainhtml/slide2.jpg" class="d-block w-100" alt="Image 2">
                    </a>
                </div>
                <div class="carousel-item">
                    <a href="https://www.wonderla.com/" target="_blank">
                        <img src="../mainhtml/slide3.jpg" class="d-block w-100" alt="Image 3">
                    </a>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExample" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExample" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>
    </main>
    <div class="utube">
        <div class="para">
            <h2>Coldplay Concert on <br> December</h2>
            <p style="font-style:initial;">Coldplay's December 2024 concerts are part of their ongoing Music of the
                Spheres World Tour. In November and early December, the band is performing in Australia and New Zealand,
                featuring vibrant shows with immersive visual effects, interactive wristbands, and powerful
                environmental messages. Their concerts are renowned for dynamic performances that include classic hits
                and newer tracks, creating a mesmerizing atmosphere for fans of all ages. As of now, specific December
                venues and dates are limited to the Southern Hemisphere, but Coldplay's tours are known for their
                extensive planning and enthusiastic global outreach.</p>
        </div>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/Fpn1imb9qZg?si=L8JWYuPP6Ck2-a76" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
    </div>

    <div class="recommended" id="movies">
        <h2>Recommended Movies</h2>
        <h6 style="text-align: right; margin-right: 50px; margin-top: 2px;"> <a href="../movies.jsp" class="textdeco">See more ></a></h6>
        <div class="movies">
            <div>
                <a href="../seats/seats.jsp?movieName=Kanguva"><img src="../mainhtml/movies/kanguva.jpg" alt="kanguva" width="210px" height="350px"></a><br><br>
                <h4>Kanguva</h4>
                Action/Period/Fantasy
            </div>
            <div>
                <a href="../seats/seats.jsp?movieName=GOAT"><img src="../mainhtml/movies/goat.jpg" alt="goat" width="210px" height="350px"></a><br><br>
                <h4>Greatest of all Time</h4>
                Action/Thriller
            </div>
            <div>
                <a href="../seats/seats.jsp?movieName=Amaran"><img src="../mainhtml/movies/amaran.jpg" alt="amaran" width="210px" height="350px"></a><br><br>
                <h4>Amaran</h4>
                Action/Drama/Thriller
            </div>
            <div>
                <a href="../seats/seats.jsp?movieName=VTV"><img src="../mainhtml/movies/vtv.jpg" alt="vtv" width="210px" height="350px"></a><br><br>
                <h4>Vinnaithaandi<br> Varuvaayaa</h4>
                Romance/Drama
            </div>
            <div>
                <a href="../seats/seats.jsp?movieName=Venom : The Last Dance"><img src="../mainhtml/movies/venom.jpg" alt="venom" width="210px" height="350px"></a><br><br>
                <h4>Venom : The Last <br>Dance</h4>
                Action/Thriller
            </div>
        </div>

    </div>

    <div class="imgcenter">
        <img src="../mainhtml/bmscentre.jpg" alt="center" width="90%">
    </div>

    <div class="events" id="events">
        <h3>The Best of Live Events!</h3>
        <div class="event-img">
            <div><img src="../mainhtml/Events/amusement.jpg" alt="amuse" width="200px" height="200px"></div>
            <div><img src="../mainhtml/Events/comedy.jpg" alt="comedy" width="200px" height="200px"></div>
            <div><img src="../mainhtml/Events/kids.jpg" alt="kids" width="200px" height="200px"></div>
            <div><img src="../mainhtml/Events/music.jpg" alt="music" width="200px" height="200px"></div>
            <div><img src="../mainhtml/Events/workshop.jpg" alt="workshop" width="200px" height="200px"></div>
        </div>

    </div>

    <div class="sport" id="sports">
        <h3>Outdoor Events</h3>
        <div class="sportpic">
            <div>
                <img src="../mainhtml/Sport/chennaiyan.jpg" alt="chennaiyan" width="210px" height="350px"><br><br>
                <h5>Chennaiyan FC ISL</h5>
                <p style="opacity: 80%;">2024-25 DEC JAN</p>

            </div>
            <div><img src="../mainhtml/Sport/hyderabad.jpg" alt="hyderabad" width="210px" height="350px">
                <br><br>
                <h5>Hyderabad FC ISL</h5>
                <p style="opacity: 80%;">2025 MAR</p>
            </div>
            <div><img src="../mainhtml/Sport/kerala.jpg" alt="kerala" width="210px" height="350px">
                <br><br>
                <h5>Kerala FC ISL</h5>
                <p style="opacity: 80%;">2024 DEC</p>
            </div>
            <div><img src="../mainhtml/Sport/runocean.jpg" alt="runicean" width="210px" height="350px">
                <br><br>
                <h5>Bengal Tigers FC ISL</h5>
                <p style="opacity: 80%;">2025 OCT</p>
            </div>
            <div><img src="../mainhtml/Sport/workshop.jpg" alt="workshop" width="210px" height="350px">
                <br><br>
                <h5>Marina Arena Waits</h5>
                <p style="opacity: 80%;">2025 APR</p>
            </div>
        </div>
    </div>

    <footer class="foot">
        <div style="display: flex; flex-wrap: wrap; justify-content: space-around; padding: 20px;">
            <div>
                <h3>About FDFS</h3>
                <p style="max-width: 300px; opacity: 80%;">
                    Your ultimate destination for movies, events, and sports booking. Explore, discover, and enjoy the best entertainment experiences near you.
                </p>
            </div>
            <div>
                <h3>Quick Links</h3>
                <ul style="list-style-type: none; padding: 0;">
                    <li><a href="#movies" style="text-decoration: none; color: white;">Movies</a></li>
                    <li><a href="#events" style="text-decoration: none; color: white;">Events</a></li>
                    <li><a href="#sports" style="text-decoration: none; color: white;">Sports</a></li>
                    <li><a href="#signin" style="text-decoration: none; color: white;">Sign In</a></li>
                </ul>
            </div>
            <div>
                <h3>Follow Us</h3>
                <div style="display: flex; gap: 15px;">
                    <a href="https://github.com/naveentk10" target="_blank">
                        <img src="../mainhtml/Icons/github.png" alt="Github" width="30px">
                    </a>
                    <a href="https://x.com" target="_blank">
                        <img src="../mainhtml/Icons/x.png" alt="Twitter" width="30px">
                    </a>
                    <a href="https://instagram.com" target="_blank">
                        <img src="../mainhtml/Icons/instagram.png" alt="Instagram" width="30px">
                    </a>
                    <a href="https://youtube.com" target="_blank">
                        <img src="../mainhtml/Icons/youtube.png" alt="YouTube" width="30px">
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
    
</body>

</body>
</html>
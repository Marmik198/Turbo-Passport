<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!--basic-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!--mobile meters-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">

    <!--site metas-->
    <title>Passport Services</title>
    <meta name="description" content="This is a passport website">
    <meta name="author" content="Marmik Shah, Divesh Thakker, Kush Vora">

    <!--favicon-->
    <link rel="icon" href="image/favicon.png">

    <!--fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!--bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <!--Style css-->
    <link rel="stylesheet" href="../../../static/style.css">
</head>


<body>


    <!--NavBar-->

    <nav class="navbar navbar-expand-sm">

        <div class="logo">
            <a href="#"><span class="logoin"><b>Passport Seva</b></span></a>
        </div>

        <ul class="hide">
            <li><a href="#Home">Home</a></li>
            <li><a href="#Services">Services</a></li>
            <li><a href="#About">About Us</a></li>
            <li><a href="#Contact">Contact Us</a></li>
        </ul>

        <form class="form-inline">
            <button class="btn btn-dark btn-success">Register</button>
            <button class="btn btn-dark btn-success">Sign In</button>
        </form>

    </nav>


    <!--Carousal-->


    <div id="carouselExampleCaptions Home" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="image/1.jpg" class="d-block w-100 carousalimage" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h2>Indian passport</h2>
                    <p>Lorem ipsum dolor sit amet.</p>
                    <button class="btn btn-danger">Foreign Affairs</button>
                    <button class="btn btn-primary">Passport Service</button>
                    <button class="btn btn-success">Videsh Bhavan</button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="image/2.jpg" class="d-block w-100 carousalimage" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h2>Videsh Bhavan, Mumbai</h2>
                    <p>Lorem ipsum dolor sit amet.</p>
                    <button class="btn btn-danger">Foreign Affairs</button>
                    <button class="btn btn-primary">Passport Service</button>
                    <button class="btn btn-success">Videsh Bhavan</button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="image/3.jpg" class="d-block w-100 carousalimage" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h2>Types of Indian Passport</h2>
                    <p>Lorem ipsum dolor sit amet.</p>
                    <button class="btn btn-danger">Foreign Affairs</button>
                    <button class="btn btn-primary">Passport Service</button>
                    <button class="btn btn-success">Videsh Bhavan</button>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>




    <!--Contact-->

    <div class="main">
        <div class="head" id="contact">
            <h1 class="heading">Contact</h1>
            <div class="para">We appreciate your suggestions and will surely work through them.<br> Feel free to contact us.</div>
        </div>

        <form action="" target="_blank">
            <input type="text" class="int" placeholder="Name" id="name">
            <input type="mail" class="int" placeholder="Email" id="mail">
            <input type="text" class="int" placeholder="Subject" id="sub">
            <input type="text" class="int" placeholder="Comment" id="comm">
            <button type="submit" class="btn btndark">Send message</button>
        </form>

    </div>

        <img src="image/map.jpg" alt="Map" class="map">



    <!--Footer-->

    <section id="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <img src="./image/logo.png" alt="" class="footer-logo d-block mx-auto">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore alias doloribus facere sequi hic maxime libero ratione assumenda inventore quae?</p>
                </div>
                <div class="col-md-3">
                    <h1>Features</h1>
                    <p>Certified Trainers</p>
                    <p>Free Consultants</p>
                    <p>Flexible Time</p>
                    <p>30 Days Free Trial</p>
                </div>
                <div class="col-md-3">
                    <h1>Quick Contacts</h1>
                    <p><i class="fa fa-phone-square"></i> +91 12345 67890</p>
                    <p><i class="fa fa-envelope"></i> passport@contact.com</p>
                    <p><i class="fa fa-home"></i> Bandra, BKC 16</p>
                    <p><i class="fa fa-globe"></i> Mumbai, India</p>
                </div>
                <div class="col-md-3">
                    <h1>Follow Us On</h1>
                    <p><i class="fa fa-facebook-official"></i> Facebook</p>
                    <p><i class="fa fa-youtube-play"></i> Youtube</p>
                    <p><i class="fa fa-linkedin"></i> Linkedin</p>
                    <p><i class="fa fa-twitter"></i> Twitter</p>
                </div>
            </div>
            <hr>

            <p class="copyright">Made with <i class="fa fa-heart-o"></i> by
                <a target="_blank" href="#">Marmik Shah</a> ,
                <a target="_blank" href="#">Kush Vora</a> ,
                <a target="_blank" href="#">Divesh Thakker</a>
            </p>
        </div>
    </section>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</body>

</html>

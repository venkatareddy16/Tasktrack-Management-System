
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>TaskTrack - Task Tracking System</title>


    <!-- Bootstrap 5 CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <!-- Bootstrap Icons -->
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
   
   <link rel="stylesheet" href="navfootstyle.css">

    <style>

        /* ================= BODY ================= */

        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
        }


        /* ================= HERO ================= */

        .hero {

            min-height: 500px;

            display: flex;

            align-items: center;

            background: linear-gradient(
                135deg,
                #eef4ff,
                #ffffff
            );

        }


        .hero-title {

            font-size: 48px;

            font-weight: 700;

            line-height: 1.2;

        }


        .hero-title span {

            color: #0d6efd;

        }


        .hero-text {

            font-size: 18px;

            color: #6c757d;

            line-height: 1.7;

        }


        .hero-btn {

            border-radius: 25px;

            padding: 12px 28px;

            font-weight: 600;

        }



        /* ================= FEATURES ================= */

        .features-section {

            padding: 70px 0;

            background: #ffffff;

        }


        .section-title {

            font-weight: 700;

            font-size: 34px;

        }


        .feature-card {

            background: white;

            border: none;

            border-radius: 18px;

            padding: 30px;

            height: 100%;

            box-shadow: 0 5px 20px rgba(0,0,0,0.07);

            transition: 0.3s;

        }


        .feature-card:hover {

            transform: translateY(-8px);

            box-shadow: 0 12px 30px rgba(0,0,0,0.12);

        }


        .feature-icon {

            width: 60px;

            height: 60px;

            border-radius: 15px;

            display: flex;

            align-items: center;

            justify-content: center;

            background: #e8f1ff;

            color: #0d6efd;

            font-size: 28px;

            margin-bottom: 20px;

        }


        .feature-card h5 {

            font-weight: 600;

        }


        .feature-card p {

            color: #6c757d;

            line-height: 1.6;

        }



        /* ================= CTA ================= */

        .cta-section {

            padding: 60px 0;

            background: #f8f9fa;

        }


        .cta-box {

            background: #0d6efd;

            color: white;

            border-radius: 25px;

            padding: 50px;

        }


        /* ================= RESPONSIVE ================= */

        @media (max-width: 991px) {

            .tasktrack-brand {

                padding: 15px 25px;

                min-width: auto;

            }


            .right-navbar {

                padding: 15px 25px;

            }


            .nav-btn {

                margin-left: 0;

                margin-right: 8px;

            }

        }


        @media (max-width: 768px) {

            .hero {

                text-align: center;

                padding: 80px 20px;

            }


            .hero-title {

                font-size: 36px;

            }


            .hero-text {

                font-size: 16px;

            }


            .cta-box {

                padding: 35px 20px;

            }


            .section-title {

                font-size: 28px;

            }

        }


        @media (max-width: 576px) {

            .tasktrack-brand {

                font-size: 21px;

                padding: 15px 20px;

            }


            .right-navbar {

                padding: 15px 20px;

            }


            .nav-btn {

                padding: 7px 16px;

            }


            .hero-title {

                font-size: 32px;

            }

        }

    </style>

</head>


<body>


<!-- NavBar -->
<%@ include file="navbar.jsp" %>


<!-- ========================================================= -->
<!-- HERO SECTION -->
<!-- ========================================================= -->

<section class="hero">

    <div class="container">

        <div class="row align-items-center">

            <div class="col-lg-8 mx-auto text-center">


                <h1 class="hero-title">

                    Manage Your Tasks

                    <span>Smarter.</span>

                </h1>



                <p class="hero-text mt-4">

                    TaskTrack is a simple and efficient task tracking
                    system that helps teams create, assign, monitor
                    and manage tasks in one place.

                </p>



                <div class="mt-4">


                    <!-- GET STARTED -->

                    <a href="register.jsp"
                       class="btn btn-primary hero-btn me-2">

                        Get Started

                        <i class="bi bi-arrow-right"></i>

                    </a>



                    <!-- LOGIN -->

                    <a href="login.jsp"
                       class="btn btn-outline-dark hero-btn">

                        <i class="bi bi-box-arrow-in-right"></i>

                        Login

                    </a>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- ========================================================= -->
<!-- FEATURES SECTION -->
<!-- ========================================================= -->

<section class="features-section">

    <div class="container">


        <!-- SECTION TITLE -->

        <div class="text-center mb-5">

            <h2 class="section-title">

                Everything You Need to Track Tasks

            </h2>


            <p class="text-muted mt-3">

                Organize your work and keep your team productive.

            </p>

        </div>



        <div class="row g-4">


            <!-- FEATURE 1 -->

            <div class="col-md-6 col-lg-4">

                <div class="feature-card">


                    <div class="feature-icon">

                        <i class="bi bi-plus-circle"></i>

                    </div>


                    <h5>

                        Create Tasks

                    </h5>


                    <p>

                        Easily create tasks with descriptions,
                        story points, status and other important
                        details.

                    </p>

                </div>

            </div>



            <!-- FEATURE 2 -->

            <div class="col-md-6 col-lg-4">

                <div class="feature-card">


                    <div class="feature-icon">

                        <i class="bi bi-person-check"></i>

                    </div>


                    <h5>

                        Assign Tasks

                    </h5>


                    <p>

                        Assign tasks to team members and make
                        responsibilities clear for everyone.

                    </p>

                </div>

            </div>



            <!-- FEATURE 3 -->

            <div class="col-md-6 col-lg-4">

                <div class="feature-card">


                    <div class="feature-icon">

                        <i class="bi bi-bar-chart"></i>

                    </div>


                    <h5>

                        Track Progress

                    </h5>


                    <p>

                        Monitor task status and keep track of
                        ongoing and completed work.

                    </p>

                </div>

            </div>


        </div>

    </div>

</section>



<!-- ========================================================= -->
<!-- CTA SECTION -->
<!-- ========================================================= -->

<section class="cta-section">

    <div class="container">


        <div class="cta-box text-center">


            <h2 class="fw-bold">

                Ready to Organize Your Work?

            </h2>


            <p class="mt-3 mb-4">

                Create your account and start managing
                your tasks efficiently.

            </p>


            <a href="register.jsp"
               class="btn btn-light hero-btn">

                <i class="bi bi-person-plus"></i>

                Create Account

            </a>


        </div>

    </div>

</section>



<!-- ========================================================= -->
<!-- FOOTER -->
 <%@ include file="footer.jsp" %>
<!-- ========================================================= -->
<!-- BOOTSTRAP 5 JS -->
<!-- ========================================================= -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>

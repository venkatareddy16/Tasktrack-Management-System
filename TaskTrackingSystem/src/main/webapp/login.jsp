
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>TaskTrack - Login</title>


    <!-- Bootstrap 5 CSS -->

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">


    <!-- Bootstrap Icons -->

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


    <!-- Common Navbar and Footer CSS -->

    <link rel="stylesheet"
          href="navfootstyle.css">


    <style>

        /* ================= BODY ================= */

        body {

            margin: 0;

            font-family: Arial, sans-serif;

            min-height: 100vh;

            background: linear-gradient(
                135deg,
                #eef4ff,
                #ffffff
            );
        }


        /* ================= LOGIN SECTION ================= */

        .login-section {

            min-height: calc(100vh - 68px);

            display: flex;

            align-items: center;

            padding: 50px 15px;
        }


        /* ================= LOGIN CARD ================= */

        .login-card {

            background: white;

            border-radius: 20px;

            padding: 40px;

            width: 100%;

            max-width: 500px;

            margin: auto;

            box-shadow:
                0 10px 40px rgba(0, 0, 0, 0.10);
        }


        /* ================= ICON ================= */

        .login-icon {

            width: 70px;

            height: 70px;

            background: #e8f1ff;

            color: #0d6efd;

            border-radius: 50%;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 32px;

            margin: 0 auto 20px;
        }


        /* ================= TITLE ================= */

        .login-title {

            font-size: 30px;

            font-weight: 700;

            color: #172033;

            text-align: center;
        }


        .login-subtitle {

            color: #6c757d;

            text-align: center;

            margin-bottom: 30px;
        }


        /* ================= FORM ================= */

        .form-label {

            font-weight: 600;

            color: #343a40;

            margin-bottom: 8px;
        }


        .input-group-text {

            background: #f1f5ff;

            border-color: #dee2e6;

            color: #0d6efd;
        }


        .form-control {

            min-height: 48px;

            border-radius: 8px;
        }


        .form-control:focus {

            border-color: #0d6efd;

            box-shadow:
                0 0 0 0.2rem rgba(13, 110, 253, 0.15);
        }


        /* ================= LOGIN BUTTON ================= */

        .login-btn {

            width: 100%;

            min-height: 50px;

            border-radius: 25px;

            font-weight: 600;

            font-size: 16px;

            margin-top: 10px;
        }


        /* ================= REGISTER LINK ================= */

        .register-text {

            text-align: center;

            color: #6c757d;

            margin-top: 25px;

            margin-bottom: 0;
        }


        .register-text a {

            color: #0d6efd;

            font-weight: 600;

            text-decoration: none;
        }


        .register-text a:hover {

            text-decoration: underline;
        }


        /* ================= RESPONSIVE ================= */

        @media (max-width: 768px) {

            .login-section {

                padding: 30px 15px;
            }


            .login-card {

                padding: 30px 20px;

                border-radius: 15px;
            }


            .login-title {

                font-size: 26px;
            }

        }

    </style>

</head>


<body>


<!-- ===================================================== -->
<!-- NAVBAR -->
<!-- ===================================================== -->

<%@ include file="navbar.jsp" %>



<!-- ===================================================== -->
<!-- LOGIN SECTION -->
<!-- ===================================================== -->

<section class="login-section">

    <div class="container">

        <div class="login-card">


            <!-- LOGIN ICON -->

            <div class="login-icon">

                <i class="bi bi-box-arrow-in-right"></i>

            </div>


            <!-- TITLE -->

            <h2 class="login-title">

                Welcome Back

            </h2>


            <p class="login-subtitle">

                Login to continue managing your tasks with TaskTrack.

            </p>


            <!-- ================================================= -->
            <!-- LOGIN FORM -->
            <!-- ================================================= -->

            <form method="post"
                  action="LoginController">


                <!-- EMAIL -->

                <div class="mb-3">

                    <label for="useremail"
                           class="form-label">

                        Email Address

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-envelope"></i>

                        </span>


                        <input
                            type="email"
                            class="form-control"
                            id="useremail"
                            name="useremail"
                            placeholder="Enter your email"
                            required>

                    </div>

                </div>



                <!-- PASSWORD -->

                <div class="mb-4">

                    <label for="userpassword"
                           class="form-label">

                        Password

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-lock"></i>

                        </span>


                        <input
                            type="password"
                            class="form-control"
                            id="userpassword"
                            name="userpassword"
                            placeholder="Enter your password"
                            required>

                    </div>

                </div>



                <!-- LOGIN BUTTON -->

                <button
                    type="submit"
                    class="btn btn-primary login-btn">

                    <i class="bi bi-box-arrow-in-right"></i>

                    Login

                </button>


            </form>



            <!-- REGISTER LINK -->

            <p class="register-text">

                Don't have an account?

                <a href="register.jsp">

                    Create an account

                </a>

            </p>


        </div>

    </div>

</section>



<!-- ===================================================== -->
<!-- FOOTER -->
<!-- ===================================================== -->

<%@ include file="footer.jsp" %>



<!-- ===================================================== -->
<!-- BOOTSTRAP 5 JS -->
<!-- ===================================================== -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>

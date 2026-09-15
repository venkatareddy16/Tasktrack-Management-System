
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>TaskTrack - Registration</title>


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
            margin: 0;

            font-family: Arial, sans-serif;

            min-height: 100vh;

            background: linear-gradient(
                135deg,
                #eef4ff,
                #ffffff
            );
        }


       /* ================= REGISTRATION SECTION ================= */

        .registration-section {

            min-height: calc(100vh - 68px);

            display: flex;

            align-items: center;

            padding: 50px 15px;
        }


        /* ================= REGISTRATION CARD ================= */

        .registration-card {

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

        .registration-icon {

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

        .registration-title {

            font-size: 30px;

            font-weight: 700;

            color: #172033;

            text-align: center;
        }


        .registration-subtitle {

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


        .form-control,
        .form-select {

            min-height: 48px;

            border-radius: 8px;
        }


        .form-control:focus,
        .form-select:focus {

            border-color: #0d6efd;

            box-shadow:
                0 0 0 0.2rem rgba(13, 110, 253, 0.15);
        }


        /* ================= REGISTER BUTTON ================= */

        .register-btn {

            width: 100%;

            min-height: 50px;

            border-radius: 25px;

            font-weight: 600;

            font-size: 16px;

            margin-top: 10px;
        }


        /* ================= LOGIN TEXT ================= */

        .login-text {

            text-align: center;

            color: #6c757d;

            margin-top: 25px;

            margin-bottom: 0;
        }


        .login-text a {

            color: #0d6efd;

            font-weight: 600;

            text-decoration: none;
        }


        .login-text a:hover {

            text-decoration: underline;
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

        }


        @media (max-width: 768px) {

            .registration-section {

                padding: 30px 15px;
            }


            .registration-card {

                padding: 30px 20px;

                border-radius: 15px;
            }


            .registration-title {

                font-size: 26px;
            }

        }

    </style>

</head>


<body>

<!-- NavBar -->
<%@ include file="navbar.jsp" %>

<!-- ===================================================== -->
<!-- REGISTRATION SECTION -->
<!-- ===================================================== -->

<section class="registration-section">

    <div class="container">

        <div class="registration-card">


            <!-- ICON -->

            <div class="registration-icon">

                <i class="bi bi-person-plus-fill"></i>

            </div>


            <!-- TITLE -->

            <h2 class="registration-title">

                Create Your Account

            </h2>


            <p class="registration-subtitle">

                Register to start managing your tasks with TaskTrack.

            </p>


            <!-- ================================================= -->
            <!-- REGISTRATION FORM -->
            <!-- ================================================= -->

            <form method="post"
                  action="RegisterController">


                <!-- FULL NAME -->

                <div class="mb-3">

                    <label for="userfullname"
                           class="form-label">

                        Full Name

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-person"></i>

                        </span>


                        <input
                            type="text"
                            class="form-control"
                            id="userfullname"
                            name="userfullname"
                            placeholder="Enter your full name"
                            required>

                    </div>

                </div>



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

                <div class="mb-3">

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



                <!-- ROLE -->

                <div class="mb-4">

                    <label for="userrole"
                           class="form-label">

                        Select Role

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-person-badge"></i>

                        </span>


                        <select
                            class="form-select"
                            id="userrole"
                            name="userrole"
                            required>

                            <option value=""
                                    selected
                                    disabled>

                                Select your role

                            </option>


                            <option value="Developer">

                                Developer

                            </option>


                            <option value="QualityAnalyst">

                                Quality Analyst

                            </option>


                            <option value="ScrumMaster">

                                Scrum Master

                            </option>

                        </select>

                    </div>

                </div>



                <!-- REGISTER BUTTON -->

                <button
                    type="submit"
                    class="btn btn-primary register-btn">

                    <i class="bi bi-person-plus"></i>

                    Create Account

                </button>


            </form>



            <!-- LOGIN LINK -->

            <p class="login-text">

                Already have an account?

                <a href="login.jsp">

                    Login here

                </a>

            </p>


        </div>

    </div>

</section>

<!-- FOOTER -->
 <%@ include file="footer.jsp" %>

<!-- ===================================================== -->
<!-- BOOTSTRAP JS -->
<!-- ===================================================== -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>


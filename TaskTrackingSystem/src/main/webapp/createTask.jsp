
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>TaskTrack - Create Task</title>


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

        /* ================================================= */
        /* BODY */
        /* ================================================= */

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


        /* ================================================= */
        /* TASK CREATION SECTION */
        /* ================================================= */

        .task-section {

            min-height: calc(100vh - 68px);

            padding: 50px 15px;
        }


        /* ================================================= */
        /* TASK CARD */
        /* ================================================= */

        .task-card {

            background: white;

            width: 100%;

            max-width: 700px;

            margin: auto;

            padding: 40px;

            border-radius: 22px;

            box-shadow:
                0 10px 40px rgba(0, 0, 0, 0.10);
        }


        /* ================================================= */
        /* ICON */
        /* ================================================= */

        .task-icon {

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


        /* ================================================= */
        /* TITLE */
        /* ================================================= */

        .task-title {

            font-size: 30px;

            font-weight: 700;

            color: #172033;

            text-align: center;

            margin-bottom: 8px;
        }


        .task-subtitle {

            color: #6c757d;

            text-align: center;

            margin-bottom: 35px;
        }


        /* ================================================= */
        /* FORM LABEL */
        /* ================================================= */

        .form-label {

            font-weight: 600;

            color: #343a40;

            margin-bottom: 8px;
        }


        /* ================================================= */
        /* INPUT GROUP */
        /* ================================================= */

        .input-group-text {

            background: #f1f5ff;

            border-color: #dee2e6;

            color: #0d6efd;

            min-width: 48px;

            justify-content: center;
        }


        /* ================================================= */
        /* INPUTS */
        /* ================================================= */

        .form-control,
        .form-select {

            min-height: 48px;

            border-radius: 8px;
        }


        textarea.form-control {

            min-height: 120px;

            resize: vertical;
        }


        .form-control:focus,
        .form-select:focus {

            border-color: #0d6efd;

            box-shadow:
                0 0 0 0.2rem rgba(13, 110, 253, 0.15);
        }


        /* ================================================= */
        /* CREATE BUTTON */
        /* ================================================= */

        .create-btn {

            width: 100%;

            min-height: 50px;

            border-radius: 25px;

            font-size: 16px;

            font-weight: 600;

            margin-top: 10px;
        }


        /* ================================================= */
        /* CANCEL BUTTON */
        /* ================================================= */

        .cancel-btn {

            width: 100%;

            min-height: 50px;

            border-radius: 25px;

            font-weight: 600;

            margin-top: 10px;
        }


        /* ================================================= */
        /* RESPONSIVE */
        /* ================================================= */

        @media (max-width: 768px) {

            .task-section {

                padding: 30px 15px;
            }


            .task-card {

                padding: 30px 20px;

                border-radius: 17px;
            }


            .task-title {

                font-size: 26px;
            }

        }

    </style>

</head>


<body>


<!-- ===================================================== -->
<!-- NAVBAR -->
<!-- ===================================================== -->

<%@ include file="tasknavbar.jsp" %>



<!-- ===================================================== -->
<!-- TASK CREATION SECTION -->
<!-- ===================================================== -->

<section class="task-section">

    <div class="container">

        <div class="task-card">


            <!-- ================================================= -->
            <!-- ICON -->
            <!-- ================================================= -->

            <div class="task-icon">

                <i class="bi bi-plus-circle-fill"></i>

            </div>


            <!-- ================================================= -->
            <!-- TITLE -->
            <!-- ================================================= -->

            <h2 class="task-title">

                Create New Task

            </h2>


            <p class="task-subtitle">

                Add a new task and assign it to a team member.

            </p>



            <!-- ================================================= -->
            <!-- FORM -->
            <!-- ================================================= -->

            <form method="post"
                  action="CreateTaskController">


                <!-- ================================================= -->
                <!-- TASK NAME -->
                <!-- ================================================= -->

                <div class="mb-4">

                    <label for="task_name"
                           class="form-label">

                        Task Name

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-card-heading"></i>

                        </span>


                        <input
                            type="text"
                            class="form-control"
                            id="task_name"
                            name="task_name"
                            placeholder="Enter task name"
                            maxlength="100"
                            required>

                    </div>

                </div>



                <!-- ================================================= -->
                <!-- TASK DESCRIPTION -->
                <!-- ================================================= -->

                <div class="mb-4">

                    <label for="task_description"
                           class="form-label">

                        Task Description

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-file-text"></i>

                        </span>


                        <textarea
                            class="form-control"
                            id="task_description"
                            name="task_description"
                            placeholder="Enter task description"
                            maxlength="500"
                            required></textarea>

                    </div>

                </div>



                <!-- ================================================= -->
                <!-- STORY POINTS -->
                <!-- ================================================= -->

                <div class="mb-4">

                    <label for="story_points"
                           class="form-label">

                        Story Points

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-star"></i>

                        </span>


                        <input
                            type="number"
                            class="form-control"
                            id="story_points"
                            name="story_points"
                            placeholder="Enter story points"
                            min="1"
                            required>

                    </div>

                </div>



                <!-- ================================================= -->
                <!-- ASSIGNED TO -->
                <!-- ================================================= -->

                <div class="mb-4">

                    <label for="assigned_to"
                           class="form-label">

                        Assigned To

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-person"></i>

                        </span>


                        <input
                            type="text"
                            class="form-control"
                            id="assigned_to"
                            name="assigned_to"
                            placeholder="Enter team member name"
                            maxlength="30"
                            required>

                    </div>

                </div>



                <!-- ================================================= -->
                <!-- TASK STATUS -->
                <!-- ================================================= -->

                <div class="mb-4">

                    <label for="task_status"
                           class="form-label">

                        Task Status

                    </label>


                    <div class="input-group">

                        <span class="input-group-text">

                            <i class="bi bi-flag"></i>

                        </span>


                        <select
                            class="form-select"
                            id="task_status"
                            name="task_status"
                            required>

                            <option value=""
                                    selected
                                    disabled>

                                Select task status

                            </option>


                            <option value="Pending">

                                Pending

                            </option>


                            <option value="In Progress">

                                In Progress

                            </option>


                            <option value="Completed">

                                Completed

                            </option>

                        </select>

                    </div>

                </div>



                <!-- ================================================= -->
                <!-- BUTTONS -->
                <!-- ================================================= -->

                <div class="row g-2">


                    <!-- CREATE -->

                    <div class="col-md-5">

                        <button
                            type="submit"
                            class="btn btn-primary create-btn">

                            <i class="bi bi-plus-circle"></i>

                            Create Task

                        </button>

                    </div>


                </div>


            </form>

        </div>

    </div>

</section>



<!-- ===================================================== -->
<!-- FOOTER -->
<!-- ===================================================== -->

<%@ include file="footer.jsp" %>



<!-- ===================================================== -->
<!-- BOOTSTRAP JS -->
<!-- ===================================================== -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.model.TaskModel" %>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
    content="width=device-width, initial-scale=1.0">

<title>TaskTrack - Edit Task</title>


<!-- Bootstrap 5 -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">


<!-- Bootstrap Icons -->
<link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


<style>

    /* ================================================= */
    /* BODY */
    /* ================================================= */

    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f5f7fb;
        color: #172033;
    }


    /* ================================================= */
    /* EDIT TASK SECTION */
    /* ================================================= */

    .edit-task-section {
        min-height: calc(100vh - 70px);
        padding: 45px 15px;
    }


    /* ================================================= */
    /* FORM CARD */
    /* ================================================= */

    .task-card {
        max-width: 750px;
        margin: auto;
        background: white;
        border-radius: 20px;
        padding: 35px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
    }


    /* ================================================= */
    /* HEADER */
    /* ================================================= */

    .task-header {
        text-align: center;
        margin-bottom: 30px;
    }

    .task-header-icon {
        width: 60px;
        height: 60px;
        margin: auto;
        margin-bottom: 15px;

        border-radius: 16px;

        display: flex;
        align-items: center;
        justify-content: center;

        background: #e8f1ff;
        color: #0d6efd;

        font-size: 28px;
    }

    .task-header h2 {
        font-weight: 700;
        margin-bottom: 5px;
    }

    .task-header p {
        color: #6c757d;
        margin-bottom: 0;
    }


    /* ================================================= */
    /* FORM LABEL */
    /* ================================================= */

    .form-label {
        font-weight: 600;
        color: #343a40;
    }


    /* ================================================= */
    /* INPUT */
    /* ================================================= */

    .form-control,
    .form-select {
        padding: 12px 14px;
        border-radius: 10px;
        border: 1px solid #dee2e6;
    }

    .form-control:focus,
    .form-select:focus {
        border-color: #0d6efd;
        box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.12);
    }


    /* ================================================= */
    /* TASK ID */
    /* ================================================= */

    .task-id-box {
        background: #f1f3f5;
        color: #6c757d;
        font-weight: 600;
    }


    /* ================================================= */
    /* BUTTONS */
    /* ================================================= */

    .update-btn {
        background: linear-gradient(135deg, #0d6efd, #6610f2);
        color: white;
        border: none;
        border-radius: 10px;

        padding: 12px 25px;
        font-weight: 600;

        transition: 0.3s;
    }

    .update-btn:hover {
        color: white;
        transform: translateY(-2px);
        box-shadow: 0 6px 15px rgba(13, 110, 253, 0.25);
    }

    .cancel-btn {
        border-radius: 10px;
        padding: 12px 25px;
        font-weight: 600;
    }


    /* ================================================= */
    /* RESPONSIVE */
    /* ================================================= */

    @media (max-width: 576px) {

        .edit-task-section {
            padding: 25px 15px;
        }

        .task-card {
            padding: 25px 20px;
        }

        .task-header h2 {
            font-size: 24px;
        }

    }

</style>


</head>

<body>
<!-- ================================================= -->
<!-- EDIT TASK SECTION -->
<!-- ================================================= -->

<section class="edit-task-section">

    <%
        TaskModel tm = (TaskModel) request.getAttribute("task");
    %>


    <div class="task-card">


        <!-- ================================================= -->
        <!-- HEADER -->
        <!-- ================================================= -->

        <div class="task-header">

            <div class="task-header-icon">

                <i class="bi bi-pencil-square"></i>

            </div>

            <h2>Edit Task</h2>

            <p>
                Update the task details and save your changes.
            </p>

        </div>


        <!-- ================================================= -->
        <!-- FORM -->
        <!-- ================================================= -->

        <form method="post" action="UpdateTaskController">


            <!-- TASK ID -->

            <div class="mb-3">

                <label class="form-label">
                    Task ID
                </label>

                <input
                    type="number"
                    name="task_id"
                    class="form-control task-id-box"
                    value="<%=tm.getTask_id()%>"
                    readonly>

            </div>


            <!-- TASK NAME -->

            <div class="mb-3">

                <label class="form-label">
                    Task Name
                </label>

                <input
                    type="text"
                    name="task_name"
                    class="form-control"
                    value="<%=tm.getTask_name()%>"
                    placeholder="Enter task name"
                    required>

            </div>


            <!-- TASK DESCRIPTION -->

            <div class="mb-3">

                <label class="form-label">
                    Task Description
                </label>

                <textarea
                    name="task_description"
                    class="form-control"
                    rows="4"
                    placeholder="Enter task description"
                    required><%=tm.getTask_description()%></textarea>

            </div>


            <!-- STORY POINTS -->

            <div class="mb-3">

                <label class="form-label">
                    Story Points
                </label>

                <input
                    type="number"
                    name="story_points"
                    class="form-control"
                    value="<%=tm.getStory_points()%>"
                    min="1"
                    max="100"
                    required>

            </div>


            <!-- ASSIGNED TO -->

            <div class="mb-3">

                <label class="form-label">
                    Assigned To
                </label>

                <input
                    type="text"
                    name="assigned_to"
                    class="form-control"
                    value="<%=tm.getAssigned_to()%>"
                    placeholder="Enter assigned person"
                    required>

            </div>


            <!-- TASK STATUS -->

            <div class="mb-4">

                <label class="form-label">
                    Task Status
                </label>

                <select
                    name="task_status"
                    class="form-select"
                    required>


                    <option value="">
                        Select task status
                    </option>


                    <option value="Pending"
                        <%= "Pending".equalsIgnoreCase(tm.getTask_status()) ? "selected" : "" %>>
                        Pending
                    </option>


                    <option value="In Progress"
                        <%= "In Progress".equalsIgnoreCase(tm.getTask_status()) ? "selected" : "" %>>
                        In Progress
                    </option>


                    <option value="Completed"
                        <%= "Completed".equalsIgnoreCase(tm.getTask_status()) ? "selected" : "" %>>
                        Completed
                    </option>

                </select>

            </div>


            <!-- ================================================= -->
            <!-- BUTTONS -->
            <!-- ================================================= -->

            <div class="d-flex justify-content-end gap-2">

                

                <button
                    type="submit"
                    class="btn update-btn">

                    <i class="bi bi-check-circle"></i>
                    Update Task

                </button>

            </div>


        </form>

    </div>

</section>


<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>

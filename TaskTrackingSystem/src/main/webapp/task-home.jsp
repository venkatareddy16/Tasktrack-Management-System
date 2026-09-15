
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.model.TaskModel"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>TaskTrack - Home</title>


<!-- Bootstrap 5 -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">


<!-- Bootstrap Icons -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


<!-- Navbar and Footer CSS -->

<link rel="stylesheet" href="navfootstyle.css">


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
/* HOME SECTION */
/* ================================================= */
.home-section {
	min-height: calc(100vh - 68px);
	padding: 45px 0 70px;
}

/* ================================================= */
/* WELCOME BANNER */
/* ================================================= */
.welcome-box {
	background: linear-gradient(135deg, #172033, #244b8f, #0d6efd);
	border-radius: 22px;
	padding: 35px 40px;
	color: white;
	margin-bottom: 30px;
	box-shadow: 0 12px 35px rgba(13, 110, 253, 0.18);
}

.welcome-box h1 {
	font-size: 32px;
	font-weight: 700;
	margin-bottom: 8px;
}

.welcome-box p {
	color: #dce8ff;
	margin-bottom: 0;
	font-size: 16px;
}

/* ================================================= */
/* CREATE TASK BUTTON */
/* ================================================= */
.create-task-btn {
	background: white;
	color: #0d6efd;
	border: none;
	border-radius: 30px;
	padding: 12px 24px;
	font-weight: 600;
	transition: 0.3s;
}

.create-task-btn:hover {
	background: #f1f5ff;
	color: #084298;
	transform: translateY(-2px);
}

/* ================================================= */
/* STATISTICS */
/* ================================================= */
.stat-card {
	background: white;
	border-radius: 18px;
	padding: 25px;
	border: none;
	height: 100%;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
	transition: 0.3s;
}

.stat-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.09);
}

.stat-icon {
	width: 52px;
	height: 52px;
	border-radius: 14px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 24px;
	margin-bottom: 15px;
}

.total-icon {
	background: #e8f1ff;
	color: #0d6efd;
}

.pending-icon {
	background: #fff3cd;
	color: #997404;
}

.progress-icon {
	background: #cff4fc;
	color: #087990;
}

.completed-icon {
	background: #d1e7dd;
	color: #146c43;
}

.stat-number {
	font-size: 28px;
	font-weight: 700;
	color: #172033;
}

.stat-label {
	color: #6c757d;
	font-size: 14px;
}

/* ================================================= */
/* STATUS BADGES */
/* ================================================= */
.status-badge {
	border-radius: 20px;
	padding: 7px 13px;
	font-size: 12px;
	font-weight: 600;
}

.status-pending {
	background: #fff3cd;
	color: #856404;
}

.status-progress {
	background: #cff4fc;
	color: #055160;
}

.status-completed {
	background: #d1e7dd;
	color: #0f5132;
}

/* ================================================= */
/* RESPONSIVE */
/* ================================================= */
@media ( max-width : 768px) {
	.home-section {
		padding: 30px 15px 50px;
	}
	.welcome-box {
		padding: 28px 22px;
		text-align: center;
	}
	.welcome-box h1 {
		font-size: 27px;
	}
	.create-task-btn {
		margin-top: 20px;
		width: 100%;
	}
}
</style>

<!-- Table Styles -->
<style>
.task-table-container {
	margin: 40px auto;
	max-width: 1200px;
}

.task-table-title {
	color: #343a40;
	font-weight: 700;
	margin-bottom: 20px;
}

.task-table {
	border-radius: 12px;
	overflow: hidden;
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.12);
	background-color: white;
}

.task-table thead th {
	background: linear-gradient(135deg, #0d6efd, #6610f2);
	color: white;
	text-align: center;
	vertical-align: middle;
	padding: 15px 12px;
	font-size: 15px;
	border: none;
}

.task-table tbody td {
	text-align: center;
	vertical-align: middle;
	padding: 13px 12px;
	color: #343a40;
	border-color: #e9ecef;
}

.task-table tbody tr {
	transition: all 0.2s ease;
}

.task-table tbody tr:nth-child(even) {
	background-color: #f8f9ff;
}

.task-table tbody tr:hover {
	background-color: #e7f1ff;
	transform: scale(1.005);
}

.task-id {
	font-weight: 700;
	color: #0d6efd;
}

.story-points {
	background-color: #fff3cd;
	color: #856404;
	font-weight: 600;
	padding: 5px 12px;
	border-radius: 20px;
	display: inline-block;
}

.status {
	padding: 6px 14px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: 600;
	background-color: #d1e7dd;
	color: #0f5132;
}

.assigned-user {
	font-weight: 600;
	color: #6f42c1;
}

.description {
	max-width: 280px;
	text-align: left !important;
}
/* ================================================= */
/* ACTION BUTTONS */
/* ================================================= */

.action-btn {
    display: inline-flex;
    align-items: center;
    gap: 5px;
    border-radius: 8px;
    font-weight: 600;
}

.task-table td:last-child {
    white-space: nowrap;
}

.task-table .btn-primary {
    background-color: #0d6efd;
    border-color: #0d6efd;
}

.task-table .btn-danger {
    background-color: #dc3545;
    border-color: #dc3545;
}

.task-table .btn:hover {
    transform: translateY(-1px);
}

@media ( max-width : 768px) {
	.task-table-container {
		margin: 20px 10px;
	}
	.task-table {
		font-size: 13px;
	}
	.task-table thead th, .task-table tbody td {
		padding: 10px 8px;
	}
	.description {
		max-width: 180px;
	}
}
</style>

</head>


<body>


	<!-- ===================================================== -->
	<!-- NAVBAR -->
	<!-- ===================================================== -->

	<%@ include file="tasknavbar.jsp"%>



	<!-- ===================================================== -->
	<!-- HOME SECTION -->
	<!-- ===================================================== -->

	<section class="home-section">

		<div class="container">


			<!-- ================================================= -->
			<!-- WELCOME BANNER -->
			<!-- ================================================= -->

			<div class="welcome-box">

				<div class="row align-items-center">

					<div class="col-lg-8">

						<h1>Welcome, <%= session.getAttribute("userfullname") %>!</h1>

						<p>Organize your work, manage your tasks, and track your
							progress efficiently.</p>

					</div>


					<div class="col-lg-4 text-lg-end">

						<a href="createTask.jsp" class="btn create-task-btn"> <i
							class="bi bi-plus-circle-fill"></i> Create New Task

						</a>

					</div>

				</div>

			</div>



			<!-- ================================================= -->
			<!-- STATISTICS OF Task Status-->
			<!-- ================================================= -->
			<%
			List<TaskModel> list = (List<TaskModel>) request.getAttribute("list");
			%>
			<%
			int totalTasks = 0;
			int pendingTasks = 0;
			int inProgressTasks = 0;
			int completedTasks = 0;

				totalTasks = list.size();

				for (TaskModel tm : list) {

					String status = tm.getTask_status();

					if ("Pending".equalsIgnoreCase(status)) {
				pendingTasks++;
					} else if ("In Progress".equalsIgnoreCase(status)) {
				inProgressTasks++;
					} else if ("Completed".equalsIgnoreCase(status)) {
				completedTasks++;
					}
				}
			%>

			<div class="row g-4">


				<!-- TOTAL -->

				<div class="col-6 col-lg-3">

					<div class="stat-card">

						<div class="stat-icon total-icon">

							<i class="bi bi-list-task"></i>

						</div>

						<div class="stat-number"><%=totalTasks%></div>

						<div class="stat-label">Total Tasks</div>

					</div>

				</div>



				<!-- PENDING -->

				<div class="col-6 col-lg-3">

					<div class="stat-card">

						<div class="stat-icon pending-icon">

							<i class="bi bi-hourglass-split"></i>

						</div>

						<div class="stat-number"><%=pendingTasks%></div>

						<div class="stat-label">Pending</div>

					</div>

				</div>



				<!-- IN PROGRESS -->

				<div class="col-6 col-lg-3">

					<div class="stat-card">

						<div class="stat-icon progress-icon">

							<i class="bi bi-arrow-repeat"></i>

						</div>

						<div class="stat-number"><%=inProgressTasks%></div>

						<div class="stat-label">In Progress</div>

					</div>

				</div>



				<!-- COMPLETED -->

				<div class="col-6 col-lg-3">

					<div class="stat-card">

						<div class="stat-icon completed-icon">

							<i class="bi bi-check-circle"></i>

						</div>

						<div class="stat-number"><%=completedTasks%></div>

						<div class="stat-label">Completed</div>

					</div>

				</div>

			</div>


			<!-- To Get all tasks from the database -->
			<div class="container task-table-container">


				<h3 class="task-table-title text-center">
					<i class="bi bi-list-task"></i> Task List
				</h3>

				<div class="table-responsive task-table">

					<table class="table table-hover align-middle mb-0">

						<thead>
							<tr>
								<th>Task Id</th>
								<th>Task Name</th>
								<th>Task Description</th>
								<th>Story Points</th>
								<th>Assigned To</th>
								<th>Task Status</th>
								<th>Actions</th>
							</tr>
						</thead>

						<tbody>

							<%
							for (TaskModel tm : list) {
							%>

							<tr>

								<td class="task-id"><%=tm.getTask_id()%></td>

								<td><strong> <%=tm.getTask_name()%>
								</strong></td>

								<td class="description"><%=tm.getTask_description()%></td>

								<td><span class="story-points"> <%=tm.getStory_points()%>
								</span></td>

								<td class="assigned-user"><%=tm.getAssigned_to()%></td>

								<td><span class="status"> <%=tm.getTask_status()%>
								</span></td>

								<!-- ACTIONS -->
								<td><a href="EditTaskController?task_id=<%=tm.getTask_id()%>"
									class="btn btn-sm btn-primary me-1"> <i
										class="bi bi-pencil-square"></i> Edit

								</a> <a href="DeleteTaskController?task_id=<%=tm.getTask_id()%>"
									class="btn btn-sm btn-danger"
									onclick="return confirm('Are you sure you want to delete this task?');">

										<i class="bi bi-trash"></i> Delete

								</a></td>

							</tr>

							<%
							}
							%>

						</tbody>

					</table>

				</div>


			</div>
	</section>


	<!-- ===================================================== -->
	<!-- FOOTER -->
	<!-- ===================================================== -->

	<%@ include file="footer.jsp"%>



	<!-- ===================================================== -->
	<!-- BOOTSTRAP JS -->
	<!-- ===================================================== -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
		
	</script>
</body>

</html>


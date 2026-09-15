# TaskTrack – Task Tracking & Management System

TaskTrack is a web-based task management application developed to help users create, manage, assign, and track tasks efficiently. The system provides user authentication and task management features with a simple and responsive interface.

## 🚀 Features

* User Registration
* User Login and Logout
* User Session Management
* Task Creation
* View Tasks
* Update Task Details
* Delete Tasks
* Task Assignment
* Task Status Tracking
* MySQL Database Integration
* Responsive User Interface

## 🛠️ Technologies Used

### Backend

* Java
* JSP
* Servlets
* JDBC

### Frontend

* HTML
* CSS
* Bootstrap 5
* JavaScript

### Database

* MySQL

### Tools

* Eclipse IDE
* Apache Tomcat
* MySQL
* Git
* GitHub

## 🏗️ Project Architecture

The project follows a simple MVC-style structure:

```text
TaskTrack
│
├── Controller
│   ├── LoginServlet
│   ├── RegisterServlet
│   ├── TaskServlet
│   └── LogoutServlet
│
├── Model
│   └── TaskModel
│
├── DAO
│   ├── UserDAO
│   └── TaskDAO
│
├── Database
│   └── DBConnection
│
└── JSP Pages
    ├── index.jsp
    ├── login.jsp
    ├── register.jsp
    ├── dashboard.jsp
    └── task pages
```

## 🗄️ Database

The application uses MySQL with two main tables:

### Users

Stores user account and authentication information.

```text
userid
username
userfullname
useremail
userpassword
userrole
```

### Tasks

Stores task-related information.

```text
task_id
task_name
task_description
story_points
assigned_to
status
```

## 🔄 Application Flow

```text
User
 │
 ├── Register
 │      ↓
 │   Users Database
 │
 ├── Login
 │      ↓
 │   Session Creation
 │      ↓
 │   Task Dashboard
 │      ↓
 │   Manage Tasks
 │      ↓
 │   Logout
 │      ↓
 │   Session Invalidation
 │
 └── Database
        ↓
      MySQL
```

## ⚙️ How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/venkatareddy16/Tasktrack-Management-System.git
```

### 2. Import the Project

Import the project into **Eclipse IDE** as a Dynamic Web Project.

### 3. Configure MySQL

Create the database:

```sql
CREATE DATABASE dynamictaskdb;
```

Create the required `Users` and `Tasks` tables according to the SQL structure used in the project.

### 4. Configure Database Connection

Update the database connection details in the project's database connection class:

```java
DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/dynamictaskdb",
    "root",
    "root"
);
```

Change the username and password according to your MySQL configuration.

### 5. Configure Apache Tomcat

Add the project to an Apache Tomcat server and start the server.

### 6. Run the Application

Open the application in your browser:

```text
http://localhost:8080/TaskTrackingSystem/
```

## 📌 Project Objective

The main objective of TaskTrack is to provide a simple web-based solution for managing tasks and users while demonstrating practical implementation of Java web development concepts such as JSP, Servlets, JDBC, sessions, MVC architecture, and MySQL database connectivity.

## 🔮 Future Enhancements

* Role-based access control
* Task priority management
* Search and filtering
* Task deadlines and reminders
* Dashboard statistics
* Email notifications
* Improved task collaboration
* REST API integration

## 👨‍💻 Developer

**Venkata Reddy Bhavanam**

B.Tech – Computer Science and Engineering

## 📄 License

This project is developed for educational and learning purposes.

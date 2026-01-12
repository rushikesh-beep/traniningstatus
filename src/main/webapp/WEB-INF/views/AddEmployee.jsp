<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow">
                <div class="card-body">

                    <h3 class="text-center mb-4">Employee Registration</h3>

                    <form action="${pageContext.request.contextPath}/save" method="post">

                        <!-- Name -->
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text"
                                   class="form-control"
                                   name="name"
                                   placeholder="Enter name"
                                   value="${employee.name}">
                        </div>

                        <!-- City -->
                        <div class="mb-3">
                            <label class="form-label">City</label>
                            <input type="text"
                                   class="form-control"
                                   name="city"
                                   placeholder="Enter city"
                                   value="${employee.city}">
                        </div>

                        <!-- Salary -->
                        <div class="mb-3">
                            <label class="form-label">Salary</label>
                            <input type="number"	
                                   step="100"
                                   class="form-control"
                                   name="salary"
                                   placeholder="Enter salary"
                                   value="${employee.salary}">
                        </div>

                        <!-- Submit Button -->
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">
                                Register
                            </button>
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>



<body>



<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <h2 class="text-center mb-4">Employee List</h2>

    <table class="table table-bordered table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>Name</th>
                <th>City</th>
                <th>Salary</th>
				<th>Edit</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${employees}" var="emp">
                <tr>
                    <td>${emp.name}</td>
                    <td>${emp.city}</td>
                    <td>${emp.salary}</td>
					<td > <button class="btn btn-primary">  Edit</button>  </td> 
                </tr>
            </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>

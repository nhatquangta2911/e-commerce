<%--
  Created by IntelliJ IDEA.
  User: ryan-ta
  Date: 3/22/19
  Time: 6:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Student Form</title>
</head>
<body>

    <form:form method="post" modelAttribute="student" action="/student-form">
        <form:label path="name">Name:</form:label>
        <form:input path="name"/>
        <br>
        <form:label path="mark">Mark:</form:label>
        <form:input path="mark"/>
        <br>
        <form:label path="major">Major:</form:label>
        <form:input path="major"/>
        <br>
        <input type="submit" value="Submit">
    </form:form>

</body>
</html>

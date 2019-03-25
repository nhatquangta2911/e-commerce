<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ryan-ta
  Date: 3/22/19
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Info</title>
</head>
<body>
    <br>
    <table border="1" width="50%" align="center">
        <tr>
            <th>Name</th>
            <th>Mark</th>
            <th>Major</th>
        </tr>
            <tr align="center">
                <td>${student.name}</td>
                <td>
                    <c:choose>
                        <c:when test="${student.mark >= 8.5 && student.mark <= 10}">
                            <span style="color: gold">A</span>
                        </c:when>
                        <c:when test="${student.mark >= 7 && student.mark < 8.5}">
                            <span style="color: hotpink">B </span>
                        </c:when>
                        <c:when test="${student.mark >= 5.5 && student.mark <7}">
                            <span style="color: dodgerblue">C </span>
                        </c:when>
                        <c:when test="${student.mark >= 4 && student.mark < 5.5}">
                            <span style="color: forestgreen">D </span>
                        </c:when>
                        <c:when test="${student.mark < 4 && student.mark >= 0}">
                            <span style="color: gray">F </span>
                        </c:when>
                        <c:otherwise>
                            <span style="color: red">NOT VALID</span>
                        </c:otherwise>
                    </c:choose>
                ${student.mark}
                </td>
                <td>${student.major}</td>
            </tr>
    </table>
    <br><br>
    <c:set var="colors" value="${colors}" />
    <br><br>
    <table border="1" width="50%" align="center">
        <tr>
            <th>Name</th>
            <th>Color</th>
        </tr>
            <c:forEach items="${colors}" var="color">
              <tr>
                <td>${color}</td>
                <td id="color" onclick="change()" style="background-color: ${color}"></td>
              </tr>
            </c:forEach>
    </table>
</body>
</html>

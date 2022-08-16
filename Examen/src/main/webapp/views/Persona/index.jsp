<%--
  Created by IntelliJ IDEA.
  User: netmo
  Date: 29/06/2022
  Time: 02:28 p. m.
  To change this template use File | Settings | File Templates.
  REYES JOSHUA
--%>
REYES JOSHUA
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <title>Tabla Personas</title>
    <jsp:include page="../../templates/head.jsp"/>
</head>
<body style="background-color:#383e42">
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header" style="background-color: #e0dedb">
                    <div class="row">
                        <div class="col-6 fw-bold">PERSONAS</div>
                        <div class="col-6 text-end">
                            <a href="create-persona" class="btn btn-success btn-sm">
                                Registrar
                            </a>
                        </div>
                    </div>
                </div>
                <div class="card-body" style="background-color: #eeeeee">
                    <table class="table table-striped table-hover" >
                        <thead class="table-dark">
                        <th>#</th>
                        <th>Name</th>
                        <th>Surname</th>
                        <th>Curp</th>
                        <th>Birthday</th>
                        <th>Acciones</th>
                        </thead>
                        <tbody>
                        <c:forEach var="persona" items="${personas}" varStatus="status">
                            <tr>
                                <td>
                                    <c:out value="${status.count}"></c:out>
                                </td>
                                <td>
                                    <c:out value="${persona.name}"></c:out>
                                </td>
                                <td>
                                    <c:out value="${persona.surname}"></c:out>
                                </td>
                                <td>
                                    <c:out value="${persona.curp}"></c:out>
                                </td>
                                <td>
                                    <c:out value="${persona.birthday}"></c:out>
                                </td>
                                <td>
                                    <a href="get-persona?id=${persona.id}" class="btn btn-warning
                                    btn-sm">EDITAR</a>
                                    <form action="delete-persona" method="post">
                                        <input type="hidden" value="${persona.id}" name="id"/>
                                        <button type="submit" class="btn btn-danger btn-sm">
                                            ELIMINAR
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../templates/footer.jsp"/>
</body>
</html>

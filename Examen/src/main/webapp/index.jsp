<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
REYES JOSHUA
<!DOCTYPE html>
<html>
<head>
    <title>Inicio</title>
    <jsp:include page="./templates/head.jsp"/>
</head>
<body style="background-color:#383e42">
<div class="container-fluid">
    <div class="row">
        <div class="col align-middle">
            <div class="card position-absolute top-50 start-50 translate-middle" style="width: 30%">
                <div class="card-header fw-bold" style="background-color: #e0dedb; text-align: center">
                    <h2>
                        Bienvenido
                    </h2>
                </div>
                <div class="card-body font-monospace" style="background-color: #eeeeee; text-align: center">
                    <a href="get-personas">
                        <h4>
                            Ver tabla Personas
                        </h4>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./templates/footer.jsp"/>
</body>
</html>
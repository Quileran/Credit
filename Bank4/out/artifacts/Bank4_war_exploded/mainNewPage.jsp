<%@ page import="main.model.SendRequest" %>
<%@ page import="main.model.Helper" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    System.out.println("MINE MODULe");
    if (session.getAttribute("user")==null) {
        response.sendRedirect(request.getContextPath() + "/loginNewPage.jsp");
    }
    String errorMessage="";
    String action_user = request.getParameter("action_user");
    String login = request.getParameter("login");
    if(action_user!=null&&!action_user.isEmpty()) {
        System.out.println(action_user + " " + login);
        if(action_user.equals("NO")){
            Helper.deleteRequestUser(login);
        }else Helper.addRegistoryUser(login);
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title>LR Bank - Администрация</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <style>
        footer {
            padding: 10px 20px;
            background: #666;
            color: white;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 50px;
        }
        th{
            border-color: black;
        }
        td{
            border-color: black;
            color: red;
        }
    </style>
</head>

<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<nav class="navbar navbar-expand-lg navbar-light bg-light bg-dark" >
    <div class="container-fluid">
        <a class="navbar-brand"style="color: #CCCCCC" href="mainNewPage.jsp">LR Bank</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="indexNewPage.html" style="color: #CCCCCC">Главная</a>
                </li>
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" style="color: #CCCCCC" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Клиентам
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="loginNewPage.jsp">Открыть счет</a></li>
                    <li><a class="dropdown-item" href="registoryNewPage.jsp">Получить кредитную карту</a></li>
                    <li><a class="dropdown-item" href="loginNewPage.jsp">Закрыть счет</a></li>
                    <li><hr class="dropdown-divider"></li>
                </ul>
                </li>
                </li>
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"style="color: #CCCCCC" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Сотрудникам
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="registoryNewPage.jsp">Открыть счет</a></li>
                    <li><a class="dropdown-item" href="registoryNewPage.jsp">Получить кредитную карту</a></li>
                    <li><a class="dropdown-item" href="loginNewPage.jsp">Закрыть счет</a></li>
                    <li><hr class="dropdown-divider"></li>
                </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="loginNewPage.jsp "style="color: #CCCCCC">Войти</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="registoryNewPage.jsp"style="color: #CCCCCC">Зарегистрироваться</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="contactNewPage.jsp"style="color: #CCCCCC">Контакты</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="creditNewPage.jsp"style="color: #CCCCCC">Кредит</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="Ipoteka.jsp"style="color: #CCCCCC">Ипотека</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="autocredit.jsp"style="color: #CCCCCC">Автокредит</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<div class="container ">

    <div class="row justify-content-sm-center ">
        <div class="col-12">
            <center><h1>Activity request</h1></center>

        </div>
    </div>
    <div class="row justify-content-sm-center ">
        <div class="col-12">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">№</th>
                    <th scope="col">Name</th>
                    <th scope="col">Login</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>


                <%

                    int i=0;
                    for (SendRequest sendRequest :  Helper.getFromNewRequest()) {
                        i++;
                        sendRequest.getName();

                %>
                <tr>




                    <th scope="row"><%=i+""%></th>
                    <td><%=sendRequest.getName()%></td>
                    <td><%=sendRequest.getLogin()%></td>
                    <td>


                        <div class="btn-group" role="group" aria-label="Basic mixed styles example">

                            <form class="d-flex" method="post">

                                <input id="login" type="hidden" class="form-control" name="login" value="<%=sendRequest.getLogin()%>" >

                                <input id="action_user" type="hidden" class="form-control" name="action_user" value="NO" >


                                <button type="submit" class="btn btn-danger">Delete</button>

                            </form>

                            <form class="d-flex" method="post">

                                <input id="login" type="hidden" class="form-control" name="login" value="<%=sendRequest.getLogin()%>" >

                                <input id="action_user" type="hidden" class="form-control" name="action_user" value="YES" >

                                <button type="submit" class="btn btn-success">Approve</button>
                            </form>
                        </div>
                    </td>

                </tr>
                <%
                    }
                %>
                </tbody>
            </table>

        </div>
    </div>
</div>

<footer><center>
    <p>Company © LR Bank. Все права защищены.</p>
</center></footer>
</body>
</html>

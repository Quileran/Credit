<%@ page import="main.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    System.out.println("CLIENT MODULe+");
    if (session.getAttribute("user")==null) {
        response.sendRedirect(request.getContextPath() + "/loginNewPage.jsp");
        return;
    }

    Client client = (Client) session.getAttribute("user");
    String formInfo = request.getParameter("form_submitted");
    boolean submitForm=formInfo!=null&&!formInfo.isEmpty();
    boolean openAcc = client.getAccount()!=null;
    boolean creditCard = client.getCreditCard()!=null;

    if (submitForm){
        System.out.println("Форма не пустая");
        if (!openAcc){
            System.out.println("У клиента " + client.getName() + " нет открытого счета");
        }
        if (!creditCard){
            System.out.println("У клиента " + client.getName() + " нет кредитной карты");
        }

        String keyForm = request.getParameter("action_user");
        if (keyForm.equals("OPEN_ACC")){
            client.setAccount(new Account(client.getName()));
            openAcc = client.getAccount()!=null;
        }
        if (keyForm.equals("CLOSE_ACC")){
            client.setAccount(null);
            openAcc = client.getAccount()!=null;
        }

        if (keyForm.equals("GET_CREDIT_CARD")){
            client.setCreditCard(new CreditCard(client.getName()));
            creditCard = client.getCreditCard()!=null;
        }


        String bablo = request.getParameter("bablo");
        if (keyForm.equals("DEBIT_ACCOUNT")){
            Helper.addBabloInAccount(client, bablo);
        }


        String sum = request.getParameter("snaytBabloSCredit");
        if (keyForm.equals("CREDIT")){
            Helper.decreaseCreditCard(client, sum);

        }


        String babloToCredit = request.getParameter("babloToCredit");
        if (keyForm.equals("DEBET_CARD_FROM_ACC")){

            Helper.translMoneyFronAccountToCard(client, babloToCredit);
        }

    }

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title>LR Bank - Для клиентов</title>
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
</nav><center>
    <div class="container">
        <center>
            <div class="row">

                <center>
                    <div class="alert alert-success" role="alert">
                        <%="Здравствуйте, "+client.getName() + "!"%>
                        <% if (openAcc){ %>
                        <form method="POST">
                            <input id="action_user" type="hidden" class="form-control" name="action_user" value="CLOSE_ACC" >
                            <input id="form_submitted" type="hidden" class="form-control" name="form_submitted" value="form_submitted" >
                            <button type="submit" class="btn btn-outline-primary">Закрыть счет</button>

                        </form>
                        <%}%>



                        <% if (!openAcc){ %>
                        <form method="POST">
                            <input id="action_user" type="hidden" class="form-control" name="action_user" value="OPEN_ACC" >
                            <input id="form_submitted" type="hidden" class="form-control" name="form_submitted" value="form_submitted" >

                            <button type="submit" class="btn btn-outline-primary">Открыть счет</button>

                        </form>
                        <%}%>

                        <% if (!creditCard && openAcc){ %>
                        <form method="POST">
                            <input id="action_user" type="hidden" class="form-control" name="action_user" value="GET_CREDIT_CARD" >
                            <input id="form_submitted" type="hidden" class="form-control" name="form_submitted" value="form_submitted" >

                            <button type="submit" class="btn btn-outline-primary">Получить кредитную карту</button>

                        </form>
                        <%}%>




                        <% if (openAcc){ %>
                        <div class="spinner-grow" role="status" >
                            <span class="visually-hidden">Loading...</span>
                        </div>
                        <h7>Баланс на счете: <%=client.getAccount().getBalance()%> </h7>
                        <%}%>




                        <% if (creditCard){ %>
                        <div class="spinner-grow" role="status">
                            <span class="visually-hidden">Loading...</span>
                        </div>

                        <h7>Баланс на карте: <%=client.getCreditCard().getBalance()%> </h7>
                        <%}%>

                    </div>
                </center>



                <div class="row">
                    <center>

                        <div class="col-4">
                            <% if (openAcc){ %>

                            <div class="card border-success mb-3" style="max-width: 18rem;">
                                <center> <div class="card-header bg-transparent border-success">Положить деньги на счет</div></center>
                                <div class="card-body text-success">
                                    Введите значение:
                                    <center>
                                        <form method="POST">

                                            <input id="action_user" type="hidden" class="form-control" name="action_user" value="DEBIT_ACCOUNT" >
                                            <input id="form_submitted" type="hidden" class="form-control" name="form_submitted" value="form_submitted" >
                                            <input type="number" id="bablo" name="bablo">
                                            <div class="card-footer bg-transparent border-success">
                                                <button type="submit" class="btn btn-outline-primary">Положить</button>
                                            </div>
                                        </form>
                                        <%}%>
                                    </center>

                                </div>

                            </div>

                            <% if (creditCard&&client.getCreditCard().getBalance()>0){ %>

                            <div class="card border-success mb-3" style="max-width: 18rem;">
                                <center><div class="card-header bg-transparent border-success">Снять деньги с кредитной карты</div></center>
                                <div class="card-body text-success">
                                    Введите значение:
                                    <center>
                                        <form method="POST" >
                                            <input id="action_user" type="hidden" class="form-control" name="action_user" value="CREDIT" >
                                            <input id="form_submitted" type="hidden" class="form-control" name="form_submitted" value="form_submitted" >
                                            <input type="number" id="snaytBabloSCredit" name="snaytBabloSCredit">
                                            <div class="card-footer bg-transparent border-success">
                                                <button type="submit" class="btn btn-outline-primary">Снять</button>
                                            </div>
                                        </form>
                                        <%}%>
                                    </center>

                                </div>

                            </div>

                            <% if (creditCard && openAcc)  { %>

                            <div class="card border-success mb-3" style="max-width: 18rem;">
                                <center><div class="card-header bg-transparent border-success">Перевести cо счета на кредитную карту</div></center>
                                <div class="card-body text-success">
                                    Введите значение:
                                    <center>
                                        <form method="POST">
                                            <input id="action_user" type="hidden" class="form-control" name="action_user" value="DEBET_CARD_FROM_ACC" >
                                            <input id="form_submitted" type="hidden" class="form-control" name="form_submitted" value="form_submitted" >
                                            <input type="number" id="babloToCredit" name="babloToCredit">
                                            <div class="card-footer bg-transparent border-success">
                                                <button type="submit" class="btn btn-outline-primary">Перевести</button>
                                            </div>

                                        </form>
                                        <%}%>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </center>

                </div>

            </div>
            <footer><center>
                <p>Company © LR Bank. Все права защищены.</p>
            </center></footer>
</body>
</html>

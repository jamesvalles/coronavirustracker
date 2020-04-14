<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>COVID-19 Tracker</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
          crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/22b8293cbb.js" crossorigin="anonymous"></script>

    <style>
        .state-table {
            width: 100%;
            padding-right: 3%;
            padding-left: 3%;
            display: inline-block
        }

        .mimosa {
            background-color: #f2f5f7;
        }

        .container {
            padding-top: 2%;
        }

        .title {
            padding-left: 40px;
            padding-top: 30px;
        }
        .fas{
            font-size: 20px;
        }
        .footer{
           text-align: center;

        }


        body {
            background-color: white;
        }
    </style>

</head>
<body>
<div class="title">
    <h2 style="color: black">COVID-19 U.S. Stats</h2>
</div>

<div class="container">

    <div class="row">
        <div class="col-sm">


            <!-- Panel -->
            <div class="card mimosa mb-4 white-text">
                <div class="card-body">
                    <div class="pull-right">
                        <center><i class="fas fa-viruses"></i></center>
                    </div>
                    <p align="center">POSITIVE</p>
                    <h4 align="center">${totalInfo[0].positive}</h4>
                </div>

            </div>
            <!-- Panel -->
        </div>
        <div class="col-sm">
            <!-- Panel -->
            <div class="card mimosa mb-4 white-text">
                <div class="card-body">
                    <div class="pull-right">
                        <center><i class="fas fa-clinic-medical"></i></center>
                    </div>
                    <p align="center">DEATHS</p>
                    <h4 align="center">${totalInfo[0].death}</h4>
                </div>

            </div>
            <!-- Panel -->
        </div>
        <div class="col-sm">
            <!-- Panel -->
            <div class="card mimosa mb-4 white-text">
                <div class="card-body">
                    <div class="pull-right">
                        <center><i class="fas fa-hospital-user"></i></center>
                    </div>
                    <p align="center">RECOVERED</p>
                    <h4 align="center">${totalInfo[0].recovered}</h4>
                </div>

            </div>
            <!-- Panel -->
        </div>
    </div>
</div>

<div class="state-table">
    <!--/row-->


    <table class="table table-striped">
        <thead class="thead-dark">
        <tr align="center">
            <th scope="col"><i class="fas fa-map-marker-alt"></i> State</th>
            <th scope="col"><i class="fas fa-viruses"></i> Positive</th>
            <th scope="col"><i class="fas fa-clinic-medical"></i> Death</th>
            <th scope="col"><i class="fas fa-hospital-user"></i> Recovered</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${stateInfo}" var="item">

            <tr align="center">
                <td>${item.state}</td>
                <td>${item.positive}</td>
                <td>${item.death}</td>
                <td>${item.recovered}</td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
<br>
    <div class="card">
        <h5 class="card-header">Data Source</h5>
        <div class="card-body">
            <h5 class="card-title">COVID Tracking Project</h5>
            <p class="card-text">The COVID Tracking Project collects and publishes the most complete
                testing data available for US states and territories.</p>
            <a href="http://www.covidtracking.com" class="btn btn-primary">Visit CovidTracking.com</a>
        </div>
    </div>
</div>
<br><br>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>

<div class="footer"><p><br>&copy; <a href="http://www.jamesvalles.com">James Valles</a> 2020. All rights reserved.</p></div>
</body>
</html>
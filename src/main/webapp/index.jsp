<%@page %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>java spring demo project</title>
    <link href="./lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="./lib/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="./lib/bootstrap-ui/css/ui-bootstrap-2.5.0-csp.css" rel="stylesheet"/>
    <link href="./lib/sweetalert/sweetalert.css" rel="stylesheet"/>
    <link href="./lib/icheck/icheck-bootstrap.min.css" rel="stylesheet"/>
</head>

<body ng-app="nuist" ng-controller="PromotionListController" ng-init="init()">

<div class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" ui-sref="coupon.welcome">Java String Demo Project</a>
        </div>
        <nav class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">欢迎您，用户 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a ng-click="logout()">注销</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</div>

<div class="container">
    <ol class="breadcrumb">
        <li><a href="#">导航菜单</a></li>
        <li class="active">面包屑</li>
    </ol>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="student in students">
            <td>{{student.id}}</td>
            <td>{{student.name}}</td>
            <td>{{student.age}}</td>
        </tr>
        </tbody>
    </table>

    <hr/>

    <footer>
        By Harris Zhang
    </footer>
</div>

<script src="./lib/jquery/jquery.min.js"></script>
<script src="./lib/bootstrap/js/bootstrap.min.js"></script>
<script src="./lib/angular/angular.min.js"></script>
<script src="./lib/angular-ui-router/angular-ui-router.min.js"></script>
<script src="./lib/angular-resource/angular-resource.min.js"></script>
<script src="./lib/bootstrap-ui/js/ui-bootstrap-tpls-2.5.0.min.js"></script>
<script src="./lib/sweetalert/sweetalert.min.js"></script>

<!-- service -->
<script src="./scripts/service/PromotionListService.js"></script>


<script src="./scripts/controller/PromotionListController.js"></script>

<script src="./scripts/app.js"></script>

<script>
    window.releaseNo = "12345";
</script>

</body>

</html>
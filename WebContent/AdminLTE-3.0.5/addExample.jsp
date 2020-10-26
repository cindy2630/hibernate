<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Project Add</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

</head>
<body>
<jsp:include page="TopwithLeftNav.jsp" />
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>營區資料新增</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Project Add</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">General</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                  <i class="fas fa-minus"></i></button>
              </div>
            </div>
            
         <form action="<c:url value='/DemoCampgroundServlet'/>" method="post">
            <div class="card-body">
              <div class="form-group">
                <label for="inputid" class="toc">編號:</label>
                <input type="text" id="inputName" class="form-control" name="name" size="10" maxlength="10">
              </div>
            
            <div class="card-body">
              <div class="form-group">
                <label for="inputName">露營地:</label>
                <input type="text" id="inputName" class="form-control" name="name" size="10" maxlength="10">
              </div>
              <div class="form-group">
                <label for="inputStatus">城市:</label>
                <select class="form-control custom-select">
                  <option selected disabled>Select one</option>
                  <option>台中市</option>
                  <option>台北市</option>
                  <option>台南市</option>
                  <option>宜蘭縣</option>
                  <option>南投縣</option>
                  <option>屏東縣</option>
                  <option>苗栗市</option>
                  <option>苗栗縣</option>
                  <option>桃園市</option>
                  <option>高雄市</option>
                  <option>雲林縣</option>
                  <option>新北市</option>
                  <option>新竹縣</option>
                  <option>嘉義縣</option>           
                </select>
              </div>
              <div class="form-group">
                <label for="inputDescription">地址:</label>
                <textarea id="inputAdress" class="form-control" name="adress" size="120" maxlength="200"></textarea>
              </div>
              <div class="form-group">
                <label for="inputtel">電話</label>
                <input type="text" id="inputClientCompany" class="form-control" name="tel" size="20"> 
              </div>
              <div class="form-group">
                <label for="inputoprice">平日價格</label>
                <input type="text" id="inputProjectLeader" class="form-control" name="oprice" maxlength="10">
              </div>
              <div class="form-group">
                <label for="inputwprice">假日價格:</label>
                <input type="text" id="inputName" class="form-control" name="wprice" maxlength="10">
              </div>
              <div class="form-group">
                <label for="inputName">帳篷數量:</label>
                <input type="text" id="inputName" class="form-control" name="tentnum" maxlength="10">
              </div>
              <div class="form-group">
                <label for="inputName">海拔:</label>
                <input type="text" id="inputName" class="form-control" name="elevation" maxlength="10">
              </div>
              <div class="form-group">
                <label for="inputName">營區特色:</label>
                <input type="text" id="inputName" class="form-control" name="feature" size="120" maxlength="200">
              </div>
              <div class="form-group">
                <label for="inputwprice">附屬設施:</label>
                <input type="text" id="inputName" class="form-control" name="facility" size="120" maxlength="200">
              </div>
              <div class="form-group">
                <label for="inputName">攜帶寵物:</label>
                <input type="text" id="inputName" class="form-control" name="pet" size="120" maxlength="200">
              </div>
              <div class="form-group">
                <label for="inputName">附屬服務:</label>
                <input type="text" id="inputName" class="form-control" name="service" size="120" maxlength="200">
              </div>
              
              <div class="form-group">
                <label for="inputName">停車方式:</label>
                <input type="text" id="inputName" class="form-control" name="parking" size="120" maxlength="200">
              </div>

              
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <a href="#" class="btn btn-secondary">Cancel</a>
          <input type="submit" name="submit" value="新增營地" class="btn btn-success float-right">
          </form>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  
  <script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>

</body>
</html>
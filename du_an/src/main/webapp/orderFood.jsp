<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/5/2023
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  <!-- Font Awesome -->
  <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  />
  <!-- Google Fonts Roboto -->
  <!-- <link
    rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
  />
  MDB
  <link rel="stylesheet" href="css/mdb.min.css" /> -->
  <style>
    *{
      padding: 0;
      margin: 0;
      border: 0;
      box-sizing: border-box;
    }
    .quantity-controls {
      display: flex;
      align-items: center;
    }

    .quantity-controls input {
      width: 3em;
      text-align: center;
      margin: 0 1.5em;
    }
  </style>
</head>
<body >
<!-- Navbar -->
<nav style="padding: 0;" class="navbar navbar-expand-sm navbar-light bg-body-tertiary">
  <!-- Container wrapper -->
  <div class="container-fluid bg-dark">
    <!-- Navbar brand -->
    <a class="navbar-brand me-2" target="_blank" href="https://www.facebook.com/dolevan1011">
      <img
              src="./img/logo.jpg"
              height="60"
              width="160"
              alt="MDB Logo"
              loading="lazy"
              style="margin-top: -1px;"
      />
    </a>
  </div>

</nav>
<!-- Navbar -->


<div class="container-fluid">
  <div style="display: flex;justify-content: center;align-items: center;">
    <h1 style="font-size: 40px;padding: 10px;font-family: 'Kanit', sans-serif;font-weight: bold;">Quản lí dịch vụ</h1>
  </div>


  <div class="row">
    <table class="table table-hover  table-striped">
      <tr class="bg-success">
        <th>#</th>
        <th>Tên dịch vụ</th>
        <th>Số Lượng</th>
        <th>Giá bán</th>
        <th>Loại dịch vụ</th>

      </tr>

      <tr>
        <td>1</td>
        <td>7 up</td>
        <td class="quantity-controls">
          <input class="btn btn-danger" type="button" value="-" onclick="adjustQuantity(1, -1)">
          <p id="quantity1_1">0</p>
          <input class="btn btn-primary" type="button" value="+" onclick="adjustQuantity(1, 1)">
        </td>
        <td>5</td>
        <td>0</td>
      </tr>

      <tr>
        <td>2</td>
        <td>Pepsi</td>
        <td class="quantity-controls">
          <input class="btn btn-danger" type="button" value="-" onclick="adjustQuantity(2, -1)">
          <p id="quantity2_1">0</p>
          <input class="btn btn-primary" type="button" value="+" onclick="adjustQuantity(2, 1)">
        </td>
        <td>5</td>
        <td>0</td>
      </tr>

      <tr>
        <td>3</td>
        <td>Sting đỏ</td>
        <td class="quantity-controls">
          <input class="btn btn-danger" type="button" value="-" onclick="adjustQuantity(3, -1)">
          <p id="quantity3_1">0</p>
          <input class="btn btn-primary" type="button" value="+" onclick="adjustQuantity(3, 1)">
        </td>
        <td>5</td>
        <td>0</td>
      </tr>

      <tr>
        <td>4</td>
        <td>Mì tôm hảo hảo</td>
        <td class="quantity-controls">
          <input class="btn btn-danger" type="button" value="-" onclick="adjustQuantity(4, -1)">
          <p id="quantity4_1">0</p>
          <input class="btn btn-primary" type="button" value="+" onclick="adjustQuantity(4, 1)">
        </td>
        <td>5</td>
        <td>0</td>
      </tr>
      <tr>
        <td>5</td>
        <td>Mì tôm thanh long</td>
        <td class="quantity-controls">
          <input class="btn btn-danger" type="button" value="-" onclick="adjustQuantity(5, -1)">
          <p id="quantity5_1">0</p>
          <input class="btn btn-primary" type="button" value="+" onclick="adjustQuantity(5, 1)">
        </td>
        <td>5</td>
        <td>0</td>
      </tr>

      <tr>
        <td>5</td>
        <td>Gói thăng long</td>
        <td class="quantity-controls">
          <input class="btn btn-danger" type="button" value="-" onclick="adjustQuantity(6, -1)">
          <p id="quantity6_1">0</p>
          <input class="btn btn-primary" type="button" value="+" onclick="adjustQuantity(6, 1)">
        </td>
        <td>5</td>
        <td>0</td>
      </tr>

    </table>
  </div>


  <!-- ordere -->
  <div class="row">
    <div class="col-lg-9"></div>
    <div class="col-lg-1"></div>
    <div class="col-lg-2">
      <td><a class="btn btn-primary" href="index.html" type="button">Trở về</a></td>
    </div>
  </div>

  <div class="row mt-4">
    <div class="col-lg-4">

    </div>

    <!-- Đã mua-->
    <div class="col-lg-4 text-center ">
      <h1 style="font-size: 26px; padding-bottom: 10px;">Dịch vụ đã chọn</h1>
      <div class="row">
        <table class="table table-hover  table-striped">
          <tr>
            <th>#</th>
            <th>Tên dịch vụ</th>
            <th>Số lượng</th>
            <th>Giá</th>
          </tr>

          <tr>
            <td>1</td>
            <td>7 up</td>
            <td class="quantity-controls">
              <p >0</p>
            </td>
            <td>0</td>
          </tr>

          <tr>
            <td>2</td>
            <td>Pepsi</td>
            <td class="quantity-controls">
              <p>0</p>
            </td>
            <td>0</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Sting đỏ</td>
            <td class="quantity-controls">
              <p>0</p>
            </td>
            <td>0</td>
          </tr>
          <tr>
            <td>4</td>
            <td>Mì tôm hảo hảo</td>
            <td class="quantity-controls">
              <p>0</p>
            </td>
            <td>0</td>
          </tr>
          <tr>
            <td>5</td>
            <td>Mì tôm thanh long</td>
            <td class="quantity-controls">
              <p>0</p>
            </td>
            <td>0</td>
          </tr>
          <tr>
            <td>6</td>
            <td>Gói thăng long</td>
            <td class="quantity-controls">
              <p>0</p>
            </td>
            <td>0</td>
          </tr>
          <!-- button -->

          <tr>
            <td>Tên máy : </td>
            <td>Máy 1</td>

            <td><p>
              Tổng tiền :
            </p>
            </td>
            <td>0</td>

          </tr>

        </table>
      </div>
    </div>

    <!-- Thêm dịch vụ  -->
    <div class="col-lg-4 text-content">
      <p style="margin-bottom: 0; display: flex; justify-content: center; align-items: center;
                font-size: 26px; font-weight: 600; padding-bottom: 10px;">Thêm dịch vụ</p>
      <div class="row">
        <form id="orderForm" method="get">
          <table class="table table-hover  table-striped">
            <tr>
              <th>#</th>
              <th>Tên dịch vụ</th>
              <th>Số lượng</th>
              <th>Giá</th>
            </tr>

            <tr>
              <td>1</td>
              <td>7 up</td>
              <td class="quantity-controls">
                <p id="quantity1_2">0</p>
              </td>
              <td>0</td>
            </tr>

            <tr>
              <td>2</td>
              <td>Pepsi</td>
              <td class="quantity-controls">
                <p id="quantity2_2">0</p>
              </td>
              <td>0</td>
            </tr>
            <tr>
              <td>3</td>
              <td>Sting đỏ</td>
              <td class="quantity-controls">
                <p id="quantity3_2">0</p>
              </td>
              <td>0</td>
            </tr>
            <tr>
              <td>4</td>
              <td>Mì tôm hảo hảo</td>
              <td class="quantity-controls">
                <p id="quantity4_2">0</p>
              </td>
              <td>0</td>
            </tr>
            <tr>
              <td>5</td>
              <td>Mì tôm thanh long</td>
              <td class="quantity-controls">
                <p id="quantity5_2">0</p>
              </td>
              <td>0</td>
            </tr>
            <tr>
              <td>6</td>
              <td>Gói thăng long</td>
              <td class="quantity-controls">
                <p id="quantity6_2">0</p>
              </td>
              <td>0</td>
            </tr>
            <!-- button -->

            <tr>
              <td><button class="btn btn-primary " type="button" onclick="calculateMoney()">Summit</button></td>
              <td><button class="btn btn-secondary" type="button" onclick="resetForm()">Reset</button></td>
              <td><p>
                Tổng tiền :
              </p>
              </td>
              <td id="result">0</td>

            </tr>

          </table>
        </form>
      </div>
    </div>

    <!-- End row full -->
  </div>


</div>
<!-- End container -->
<br><br><br>
<!-- Start Footer -->
<footer id="sticky-footer" class="flex-shrink-0 py-3 bg-dark text-white-50 fs-3 mt-4 fixed-bottom">
  <div class="container text-center">
    <small>Copyright &copy; Net Cỏ</small>
  </div>
</footer>


<script src="../ss9/bootstrap-5.2.3-dist/js/bootstrap.bundle.js"></script>

<script>
  function calculateMoney(){
    var result =  document.getElementById("result");
    result.innerText = 123213;
  }

  function resetForm() {
    var orderForm = document.getElementById("orderForm");
    orderForm.reset();

    var result = document.getElementById("result");
    result.innerText = 0;
    var quantityElements = document.querySelectorAll('[id^="quantity"]');
    quantityElements.forEach(function (element) {
      element.innerText = 0;
    });
  }

  function adjustQuantity(productId, adjustment) {
    var quantityElement = document.getElementById("quantity" + productId + "_1");
    var quantitySub = document.getElementById("quantity" + productId + "_2");

    var currentQuantity = parseInt(quantityElement.innerText);
    var currentSub = parseInt(quantityElement.innerText);

    var newQuantity = currentQuantity + adjustment;
    var newQuantitySub = currentSub + adjustment;

    if (newQuantity >= 0) {
      quantityElement.innerText = newQuantity;
      quantitySub.innerText = newQuantitySub;
    }
  }

</script>
<script type="text/javascript" src="js/mdb.umd.min.js"></script>
</body>
</html>

<?php
session_start();
include '../function/conn.php';
include '../function/style.php';
include '../style.php';
?>
<html>
    <head>

        <?php
        head('ตามสั่ง System');
        headcss();
        menucss();
        js();
        ?> 
    </head>
    <body>
        <?php $seesion = $_SESSION["Status"]; ?>
        <?php div('container menuXX'); ?>
        <?php
        include '../function/conn.php';
      //  $id = $_POST["idmenu"];
        $keymenu = $_POST["keymenu"];
        $namemenu = $_POST["namemenu"];
        $price = $_POST["price"];
        $type = $_POST["type"];
        $addmenu = $_POST["addmenu"];

//        $check = "SELECT * FROM menu WHERE name_menu = '$namemenu'";
//        $result = mysqli_query($conn, $check);
// เช็คว่ามีข้อมูลนี้อยู่หรือไม่
        if ($addmenu == 1) {
            $check = "select * from menu  where name_menu = '$namemenu' ";
            $result1 = mysqli_query($conn, $check);
            $num = mysqli_num_rows($result1);
            if ($num > 0) {
//ถ้ามี username นี้อยู่ในระบบแล้วให้แจ้งเตือน
                echo "<script>";
                echo "alert(' มีชื่อเมนูนี้แล้ว กรุณากรอกใหม่อีกครั้ง !');";
                echo "window.location='menu.php';";
                echo "</script>";
            } else {
                $sql = "INSERT INTO menu (key_menu,name_menu, price_menu, type_menu) 
		VALUES ('$keymenu','$namemenu','$price','$type')";
                $query = mysqli_query($conn, $sql);
                if ($query) {
                    echo '<br><br><br><center><img src="../img/t.png" style="width="300" height="300""></center>';
                    echo '<center><h1 style="color:green;">บันทึกข้อมูลสำเร็จ</h1><center><br><br><br>';
                } else {
                    echo '<br><br><br><center><img src="../img/f.png" style="width="300" height="300""></center>';
                    echo "<center><h1 style='color:red;'>Database Connect Failed : " . mysqli_connect_error() . '</h1><center><br><br><br>';
                }
            }
        } elseif ($addmenu == 2) {
            $sql2 = " UPDATE menu SET  price_menu = '$price', type_menu = '$type' WHERE id_menu= '$namemenu'";
            $querys2 = mysqli_query($conn, $sql2);
            if ($querys2) {
                echo '<br><br><br><center><img src="../img/t.png" style="width="300" height="300""></center>';
                echo '<center><h1 style="color:green;">แก้ไขข้อมูลสำเร็จ</h1><center><br><br><br>';
            } else {
                echo '<br><br><br><center><img src="../img/f.png" style="width="300" height="300""></center>';
                echo "<center><h1 style='color:red;'>Database Connect Failed : " . mysqli_connect_error() . '</h1><center><br><br><br>';
            }
        }
        ?>
        <meta http-equiv="refresh" content="2; url=../menu/menu.php">
        <?php _div(); ?>
    </body>
</html>


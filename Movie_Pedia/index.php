<?php
if(isset($_GET['page']) && !empty($_GET['page'])) {
    $page = $_GET['page'];
}
else {
    $page = 'home';
}
// $page = ucfirst($page);

include('Controler/'.$page.'_control.php');
 ?>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="topNavBar">
            <div class="container px-4 px-lg-5 ">
                <button class="navbar-toggler btn btn-sm" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <a class="navbar-brand" href="./">
                <img src="<?php echo validate_image($_settings->info('logo')) ?>" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
                <?php echo $_settings->info('short_name') ?>
                </a>

                <!-- <form class="form-inline" id="search-form">
                  <div class="input-group">
                    <input class="form-control form-control-sm form " type="search" placeholder="Search" aria-label="Search" name="search"  value="<?php echo isset($_GET['search']) ? $_GET['search'] : "" ?>"  aria-describedby="button-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-outline-success btn-sm m-0" type="submit" id="button-addon2"><i class="fa fa-search"></i></button>
                    </div>
                  </div>
                </form> -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link <?= isset($page) && $page == 'home'? "active" : '' ?>" aria-current="page" href="./">Home</a></li>
                        <li class="nav-item"><a class="nav-link <?= isset($page) && $page == 'products'? "active" : '' ?>" href="./?p=products">Products</a></li>
                        <li class="nav-item"><a class="nav-link <?= isset($page) && $page == 'services'? "active" : '' ?>" href="./?p=services">Services</a></li>
                        <li class="nav-item"><a class="nav-link <?= isset($page) && $page == 'brands'? "active" : '' ?>" href="./?p=brands">Brands</a></li>
                        <li class="nav-item"><a class="nav-link <?= isset($page) && $page == 'about'? "active" : '' ?>" href="./?p=about">About Us</a></li>
                    </ul>
                    <div class="d-flex align-items-center">
                    </div>
                </div>
                <div>
                  <?php if($_settings->userdata('id') > 0 && $_settings->userdata('login_type') == 2): ?>
                    <div class="d-flex align-items-end">
                      <div class="navbar-nav nav-item">
                        <?php 
                        $cart_count = $conn->query("SELECT SUM(quantity) from cart_list where client_id = '{$_settings->userdata('id')}'")->fetch_array()[0];
                        $cart_count = $cart_count > 0 ? number_format($cart_count) : 0;
                        ?>
                        <a href="./?p=cart" class="nav-link"><span id="cart_count" class="badge badge-danger rounded-circle"><?= $cart_count ?></span> Cart</a>
                      </div>
                      <div class="navbar-nav nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fa fa-user"></i> Howdy, <?= $_settings->userdata('email') ?>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                          <a class="dropdown-item" href="./?p=my_orders">My Orders</a>
                          <a class="dropdown-item" href="./?p=my_services">My Service Requests</a>
                          <a class="dropdown-item" href="./?p=manage_account">Manage Account</a>
                          <a class="dropdown-item" href="./classes/Login.php?f=logout_client">Logout</a>
                        </div>
                      </div>
                    </div>
                  <?php else: ?>
                    <a href="./login.php" class="text-light text-decoration-none mx-2"><b>Login</b></a> | 
                    <a href="./register.php" class="text-light text-decoration-none mx-2"><b>Register</b></a> | 
                    <a href="./admin/login.php" class="text-light text-decoration-none mx-2"><b>Admin</b></a>
                  <?php endif; ?>
                </div>
            </div>
        </nav>
<script>
  $(function(){
    $('#login-btn').click(function(){
      uni_modal("","login.php")
    })
    $('#navbarResponsive').on('show.bs.collapse', function () {
        $('#mainNav').addClass('navbar-shrink')
    })
    $('#navbarResponsive').on('hidden.bs.collapse', function () {
        if($('body').offset.top == 0)
          $('#mainNav').removeClass('navbar-shrink')
    })
  })

  $('#search-form').submit(function(e){
    e.preventDefault()
     var sTxt = $('[name="search"]').val()
     if(sTxt != '')
      location.href = './?p=products&search='+sTxt;
  })
</script>
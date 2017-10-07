<!DOCTYPE html>
<html>
    <title>Login Form</title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>">
<style>
form {
    padding: 25px;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}


.container {
    border: 3px solid #f1f1f1;
    padding: 16px;
    max-width: 450px;
    margin: 0 auto;
}

</style>
<body>

<form action="<?php echo base_url('c_login/validasi') ?>" method="post">
  <div class="container">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
    
	<p>Security: <?php echo $image; ?></p>
    <p class="text-danger"><?php echo $this->session->flashdata('pesan_captcha'); ?></p>
    <p><input type="text" name="security_code"></p>  

    <button class="btn btn-success col-md-6" type="submit">Login</button>
    <button type="button" class="btn btn-danger col-md-6">Cancel</button>
  </div>

</form>
</body>
</html>

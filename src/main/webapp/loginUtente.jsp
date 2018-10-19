 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
  <head>
  <script language="JavaScript"> 


	function verificaPassword() {
 
	var correct = true 
	if (document.form.password.value !== document.form.RepeatPassword.value) {correct = false; alert("Le password non coincidono")} 

	return correct;
	}

</script>
    <meta charset="UTF-8">
    <title>Login/Register Form</title>
    
    
    <link rel="stylesheet" href="cssUtente/reset.css">
<!-- 
    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/cssUtente?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
	<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/cssUtente/font-awesome.min.css'>
 -->
    <link rel="stylesheet" href="cssUtente/style.css">

  </head>

<!--  <body onSubmit="return verificaPassword()">  --> 


<div class="pen-title">
  <h1>Login or Register yourself</h1>

</div>

<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1> 
    <form class="form" method="post" action="AccountController?action=loginUt">
    
    	<span style="color:red"> ${message}</span>
    	
         <div class="input-container">
        <input type="text" required="required" name="username"/>
        <label for="username">Username</label>
        <div class="bar"></div>
      </div>

      <div class="input-container">
        <input type="password" name="password" required="required"/>
        <label for="password">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
     
        <button><span>Login</span></button> 
      </div>
      <div class="footer"><a href="#">Password Dimenticata?</a></div>
    </form>
  </div>
  <div class="card alt">
    <div class="toggle"></div>
   <h1 class="title-reg">Register
      <div class="close"></div>
    </h1>  
    <form name="form" method="post" action="AccountController?action=registra">
    
    <span style="color:red"> ${errPass}</span>
    
     <div class="input-container">
        <input type="text" name="nome" required="required"/>
        <label for="nome">Nome</label>
        <div class="bar"></div>
      </div>
       <div class="input-container">
       <input type="text" name="cognome" required="required"/>
        <label for="cognome">Cognome</label>
        <div class="bar"></div>
      </div>   
    
      <div class="input-container">
        <input type="text" name="username" required="required"/>
        <label for="username">Username</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" name="password" required="required"/>
        <label for="password">Password</label>
        <div class="bar"></div>
      </div>

      <div class="button-container">
      <input type="submit">
      <button><span>Register</span></button>
       </div>
    </form>
  </div>
</div>

     <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="jsUtente/index.js"></script>
    
    
  </body>
</html>
    
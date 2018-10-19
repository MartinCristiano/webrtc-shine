// Password Validation

var password = document.getElementById("register_password")
, confirm_password = document.getElementById("confirm-password");

function validatePassword(){
if(password.value != confirm_password.value) {
	$("#confirm-password").css("border-color", "rgba(255,0,0,0.5)");
  confirm_password.setCustomValidity("Password doesn't match.");
} else {
	$("#confirm-password").css("border-color", "rgba(0,255,0,0.5)");
  confirm_password.setCustomValidity("");
}
}

register_password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
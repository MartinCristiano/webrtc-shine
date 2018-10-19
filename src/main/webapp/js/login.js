$(function() {
    
    var $formLogin = $('#login-form');
    var $formLost = $('#lost-form');
    var $formRegister = $('#register-form');
    var $divForms = $('#div-forms');
    var $modalAnimateTime = 300;
    var $msgAnimateTime = 150;
    var $msgShowTime = 2000;

    $("form").submit(function () {
        switch(this.id) {
            case "login-form":
                var $lg_username=$('#login_username').val();
                var $lg_password=$('#login_password').val();
             
                $.post("c.ServletLogin",{username:$lg_username,password:$lg_password},
                			function(data) {
                				var msg = $("result", data).text();
                				if (msg =="Login OK") {
                					setTimeout(function(){window.location="http://localhost:" + location.port + "/SHINE-Project/index.jsp";},1);
                				} else {
                				alert(msg);            					
                				}
    						});
                return false;
                break;
                
            case "register-form":
                var $rg_nome=$('#register_nome').val();
                var $rg_cognome=$('#register_cognome').val();
                var $rg_username=$('#register_username').val();
                var $rg_password=$('#register_password').val();
                
                $.post("",{register_nome:$rg_nome,register_cognome:$rg_cognome,register_username:$rg_username,register_password:$rg_password},
                		function(data) {
        					var msg = $("result", data).text();
        					if (msg =="Registration OK") {
            					alert("Registration OK");
            				} else {
            					alert("User already exist!");                					
            				}
                		});
                return false;
                break;
        }
        
        return false;
    });

});


$('form').validator().on('submit', function(e) {
	if (!e.isDefaultPrevented()) {
		var username = $("#username").val();
		var password = $("#password").val();
		var email = $("#email").val();
		$.ajax({
			url : "servlet/Register",
			data : {
				username : username,
				password : password,
				email : email
			},
			dataType : "json",
			method : "post",
			success : function(data) {
				window.location.href = "index.jsp";
			}
		});
		return false;
	}
});


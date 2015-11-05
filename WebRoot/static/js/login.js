$('form').validator().on('submit', function (e) {
    if (!e.isDefaultPrevented()) {
        var username = $("#username").val();
        var password = $("#password").val();
        var ajaxData = {username: username, password: password};

        $.ajax({
            url: "servlet/UserServlet",
            data: ajaxData,
            dataType: "json",
            method: "post",
            success: function (data) {
            	window.location.href = "index.jsp";
            }

        });
        return false;
    }
});
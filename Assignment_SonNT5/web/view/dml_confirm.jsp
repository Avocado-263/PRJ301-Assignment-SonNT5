
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var count = 3;
            function redirect()
            {
                count--;
                document.getElementById('timer').innerHTML = count;
                if(count <=0)
                    window.location.href = 'login';
            }
            setInterval(redirect,1000);
        </script>
    </head>
    <body>
        User account or password incorrect !
        <Br/>
        Redirect to login page after <span id="timer">3</span> seconds
    </body>
</html>

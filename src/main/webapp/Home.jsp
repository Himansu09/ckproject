<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

.container{
align-content: center;
justify-content: center;
}
.data {


}
.login_btn{
padding: 14px 40px;;
}


.login_btn:hover{
background-color: #FFF;
color:#000;
scall:5px;
}

</style>
<body>
   <%
      Cookie[] cks = request.getCookies();
      if (cks != null) {
         for (int i = 0; i < cks.length; i++) {
            String name = cks[i].getName();
            String value = cks[i].getValue();
            if (name.equals("auth")) {
               break; // exit the loop and continue the page
            }
            if (i == (cks.length - 1)) // if all cookie are not valid redirect to error page
            {
               response.sendRedirect("sessionExpired.html");
               return; // to stop further execution
            }
            i++;
         }
      } else {
         response.sendRedirect("sessionExpired.html");
         return; // to stop further execution
      }
   %>
   
   <center>
   <h1>...</h1>
   <h3 style="color: white; margin-top:120px">You had successfully logged in.</h3><br>
  
   <form action="Logout" method="post">
      <input class="btn  login_btn btn btn-danger" type="submit" value="Logout">
   </form>
   </center>
</body>
</html>
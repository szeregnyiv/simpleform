<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF8">
<link rel="stylesheet" type="text/css" href="theme.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<title>Hello</title>
</head>
<body>

	<div class="login">
		<h1>Regisztráció</h1>

		<c:if test="${requestScope.error != null}">
			<h6>
				<br> ${requestScope.error} <br>
			</h6>
		</c:if>

		<form name="form1" id="form1" method="post" accept-charset="UTF-8" action="Register">
			<input type="text" name="name" placeholder="Felhasználónév"
				required="required" /> <input type="password" name="password"
				placeholder="Jelszó" required="required" />
			<button type="submit" id="submit" class="btn btn-primary btn-block btn-large">Regisztrálok!</button>
			<h6>
				<a href="login.jsp">Bejelentkezés</a>
			</h6>
		</form>
		<br>
		<script async
			src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- login bootsnipp -->
		<ins class="adsbygoogle" style="display: block"
			data-ad-client="ca-pub-9155049400353686" data-ad-slot="9589048256"
			data-ad-format="auto"></ins>
		<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
	</div>
	<script src="script/jquery-1.10.2.min.js"></script>
	<script type="text/javascript">
		var form = $('#form1');
		   $( "#submit" ).click(function(){
			
			$.ajax({
				type : form.attr('method'),
				url : form.attr('action'),
				data : value,
				success : function(data) {
					var result = data;
					$('#result').attr("value", result);
				}
			});
			return false;
		});
	</script>
</body>
</html>
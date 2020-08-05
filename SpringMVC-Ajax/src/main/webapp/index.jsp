<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function(){
	$('#buttonDemo1').click(function() {
		$.ajax({
			type: 'GET',
			url:'ajax/demo1.html',
			success: function(result){
				$('#result1').html(result);
			}
		});
	});
	
	$('#buttonDemo2').click(function() {
		var fullName = $('#fullName').val();
		$.ajax({
			type: 'GET',
			url:'ajax/demo2/' + fullName + '.html',
			success: function(result){
				$('#result2').html(result);
			}
		});
	});
});
</script>
</head>
<body>

<fieldset>
    <legend> Demo 1</legend>
    <input type="button" value="Demo 1" id="buttonDemo1">
    <br>
    <span id="result1"></span>
</fieldset>

<fieldset>
     <legend>Demo 2</legend>
     Full Name <input type="text" id="fullName">
     <input type="button" value="Demo 2" id="buttonDemo2">
     <br>
     <span id="result2"></span>
</fieldset>

</body>
</html>
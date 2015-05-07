
$(function(){
	$('#login').toggle();
	$('#registration').toggle();
	$('#anon-order').toggle();
});


$('#toggle-login').click(function(){
	$('#login').toggle();
});

$('#toggle-registration').click(function(){
	$('#registration').toggle();
});

$('#toggle-anon-order').click(function(){
	$('#anon-order').toggle();
});

//AJAX section
//classes url variable
var url = 'api/user/login';
var JSONdata;
//AJAX POST for log in
$('#login-submit').click(function(){
	JSONdata = {
		email: $("#login-cred").val(),
		pass: $("#login-pass").val()
	};
	$.ajax({
		method: 'POST',
		url: 'api/user/login',
		contentType: "application/json; charset=utf-8",
		data: JSON.stringify(JSONdata),
		dataType:'json',
		success: function (data,textStatus,jqXHR ) {
			alert(textStatus);
		},
		error: function (jqXHR, textStatus, errorThrown) {
			alert(jqXHR.status + ' ' + jqXHR.responseText);
			//alert(eval("(" + data + ")"));
		}
	})
	//	.done(function(){alert("nice!");})
	//.fail(function(){alert("fail!");});
});
//AJAX POST for registration
$('#registration-submit').click(function(){
	JSONdata = {
		'firstname': $("#firstname").val(),
		'lastname': $("#lastname").val(),
		'phone': $("#firstname").val(),
		'email': $("#firstname").val(),
		'pass': $("#firstname").val()
	};
	$.ajax({
		method: 'POST',
		url: 'api/user/create',
		contentType: "application/json; charset=utf-8",
		data: JSON.stringify(JSONdata),
		dataType:'json',
		success: function (result) {
			alert('Time: ' + result.time
			+ ', message: ' + result.message);
		},
		error: function (jqXHR, textStatus, errorThrown) {
			alert(jqXHR.status + ' ' + jqXHR.responseText);
		}
	})
	.done(function(){alert("good! good!!!");})
	.fail(function(){alert("fail!");});
	
});
//AJAX POST for
$('#track-TO-submit').click(function(){
	JSONdata = {
		'orderid': $("#tracking-id").val()
	};
	$.ajax({
		method: 'POST',
		url: url,
		data: JSONdata,
		dataType:'json'
	})
	.done(function(){alert("success!!");})
	.fail(function(){alert("fail!");});
});
//AJAX POST for
$('#order-wo-reg-submit').click(function(){
	
	alert("Hold on, not yet functionlal!");
});





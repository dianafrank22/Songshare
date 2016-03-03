"user strict";

(function(){

$('#signup_button').click(function(){
		console.log("tag created!")
		event.preventDefault();


		$.ajax({
			type: 'POST',
			url: '/users.json',
			dataType: 'json',
			data: { 
				email: $('#email').val(),
				username:  $('#username').val(),
				image: $('#image').val(),
				password: $('#password').val(),
				top_5: $('#top_5').val(),
			},
			// contentType: "application/json; charset=utf-8",
   			success: function (data) {
				console.log(data)
				// $('#tag').val('')
			}
		})
	});






})();

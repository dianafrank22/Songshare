"user strict";

(function(){

$('#follow_btn').click(function(){
		console.log("user followed!")
		event.preventDefault();


		$.ajax({
			type: 'POST',
			url: '/followers.json',
			dataType: 'json',
			data: { 
				id:  $('#follow-form').data("id")
			},
			// contentType: "application/json; charset=utf-8",
   			success: function (data) {
			
			}
		})
	});






})();
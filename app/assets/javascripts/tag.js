"user strict";

(function(){

$('#tag_submit').click(function(){
		console.log("tag created!")
		event.preventDefault();


		$.ajax({
			type: 'POST',
			url: '/tags.json',
			dataType: 'json',
			data: { 
				tag: $('#tag').val(),
				id:  $('#tag-form').data("id")
			},
			// contentType: "application/json; charset=utf-8",
   			success: function (data) {
				console.log(data)
				$('#tag').val('')
			}
		})
	});






})();

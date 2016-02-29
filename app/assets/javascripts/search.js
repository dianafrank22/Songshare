"user strict";

(function(){
	$('.rec_button').click(function(){
		console.log("New Rec Button Clicked!")
		event.preventDefault();

		var searchResults = [];

		$.ajax({
			type: 'Get',
			url: 'https://api.spotify.com/v1/search?q=' + $('.search-input').val()+'&type=track&limit=3',
			success: function(response){
				console.log(response)
				console.log($('.search-input').val())
				var tracks = response.tracks.items;
				var result = "";
				for(var i=0; i<tracks.length-1;i++){
					var track = tracks[i];
					// var data = track.name +','+track.artists[0].name;
					// $('searchResults').push(data);
					// console.log(searchResults);
					result = result + "<h3>"+ track.name +  "</h3> <br/>"+ " "+ track.artists[0].name+ "<iframe src='https://embed.spotify.com/?uri=" + track.uri +"' width='300' height='80' frameborder='0' allowtransparency='true'></iframe>" + "<br/> " ;
					$('#results').append(result);
				}




				
			}
		})
	})
})();


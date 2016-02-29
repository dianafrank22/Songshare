"user strict";

(function(){
	$('.rec_button').click(function(){
		console.log("New Rec Button Clicked!")
		event.preventDefault();

		$.ajax({
			type: 'Get',
			url: 'https://api.spotify.com/v1/search?q=' + $('.search-input')+'&type=track&limit=10',
			success: function(response){
				console.log(response)
				var tracks = response.tracks.items;
				var result = "";
				for(var i=0; i<tracks.length;i++){
					var track = tracks[i];
					result = result + track.name + " "+ track.artists[0].name+ " " +track.uri;
				}
				console.log(result)
				$('#results').text(result);


// need to find a way to get the artist name from the artist array
				
			}
		})
	})
})();
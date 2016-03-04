"user strict";

(function(){

	$('.favs_button').click(function(){
		console.log("Current Favs Button Clicked!")
		event.preventDefault();

		// var searchResults = [];

		$.ajax({
			type: 'Get',
			url: 'https://api.spotify.com/v1/search?q=' + $('.search-input').val()+'&type=track&limit=5',
			success: function(response){
				console.log(response)
				var tracks = response.tracks.items;
				var result = ""

				for(var i=0; i<tracks.length-1;i++){
					var track = tracks[i];
					var song = { title: track.name, preview_url: track.preview_url, song_id: track.id, uri: track.uri, image: track.album.images[2].url, artist: track.artists[0].name, spotify_url: track.url}

					result = result + "<h3>"+ track.name + " - "+ track.artists[0].name+  "</h3> <br/>"+ "<br/>"+ "<iframe src='https://embed.spotify.com/?uri=" + track.uri;
					result+= "' width='300' height='80' frameborder='0' allowtransparency='true'></iframe>" + "<br/> " ;
					result += "<button class=\"choose-song-btn\" data-song=\""+encodeURIComponent(JSON.stringify(song))+"\">Choose Song</button>"
					$('#results').append(result);	
				}
			}
		})
	});



	$('#results').on("click", '.choose-song-btn', function(){
		var song = JSON.parse(decodeURIComponent($(this).data('song')));
		console.log("posted!")

		$.ajax({
			type: 'POST',
			url: '/current_favs',
			  headers: {
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
  },
			data: {
				title: song.title,
				preview_url: song.preview_url,
				song_id: song.song_id, 
				uri: song.uri, 
				image: song.image, 
				artist: song.artist, 
				spotify_url: song.spotify_url
			},
			// contentType: "application/json; charset=utf-8",
   			success: function (data) {
				console.log(data.song)
				window.location.href= "/current_favs/new"
			}
		})
	});





})();


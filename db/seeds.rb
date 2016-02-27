# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{ id: 1, email: 'dfrank@email.com', username: 'dfrank', password: "123", image: "https://scontent-sjc2-1.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10154237_10202056040386886_8967679234674896568_n.jpg?oh=e7e94c95ae1cc1e3e4a918f6b85ff2b3&oe=5752CC0D", top_5: ["George Ezra", "Ezra Vine", "My Chemical Romance", "Portugal. The Man", "Fleetwood Mac"]},
	{id: 2 , email: 'andrew@email.com' , username: 'aholz' , password: '123', image: "https://scontent-sjc2-1.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/11899977_10106153007270969_7952215386206834350_n.jpg?oh=dad163de1aa4af0fc4313da5d96dc679&oe=575D06D4", top_5: ['wolf mother', 'ghost beach', 'led zepplin', 'black keys', 'otis day and the knights']},
	{id: 3, email: 'chris@email.com' , username: 'cmahr' , password: '123', image: "https://scontent-sjc2-1.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/179776_10100199423216081_1843209465_n.jpg?oh=4fe5e993761130a04777584d601d24db&oe=57549893", top_5: ['black keys', 'decemberists', 'otis redding', 'the cars', 'no doubt']},
	{id: 4, email: 'danielle@email.com', username: 'dnorouk', password: '123', image: "https://scontent-sjc2-1.xx.fbcdn.net/hphotos-xtf1/v/t1.0-9/11201180_10154446271672195_530072718597920864_n.jpg?oh=d45d039b2a85fc0989a81136930a2dc2&oe=575855A5", top_5: ['j. Cole', 'rhianna', 'halsey', 'adele', 'justin bieber']}
	])



Rec.create([{id: 1, user_id: 1, preview_url: "https://p.scdn.co/mp3-preview/50d1695a0a50102b76be0fab03c2abe1174433fd", song_id: "6sj9rODkg2fpS30JlWbb2t", title: "Lydia", uri: "spotify:track:6sj9rODkg2fpS30JlWbb2t", image: "https://i.scdn.co/image/8d0651d2a188db6ca1f567aa7f1cc255c28416a1", artist: "Highly Suspect", spotify_url: "https://open.spotify.com/track/6sj9rODkg2fpS30JlWbb2t"},
	{id: 2, user_id: 2, preview_url:"https://p.scdn.co/mp3-preview/c1024d02ec15b93fe218692fb9ad23c5bad3e1aa" , song_id:"4qABfS1RaGVXdBhj2BQyhO" , title: "Runaway (U & I)", uri: "spotify:track:4qABfS1RaGVXdBhj2BQyhO", image: "https://i.scdn.co/image/60e40883ae3c1edba925cedd554fc8dabc677ba1", artist: "Galantis", spotify_url: "https://open.spotify.com/track/4qABfS1RaGVXdBhj2BQyhO"},
	{id: 3, user_id: 3, preview_url: "https://p.scdn.co/mp3-preview/0c65fd37a94b58af8c1c407437a4ab39cc772172", song_id: "7iOyMOxdOULvXqUqC26spJ", title: "Modern Jeses", uri: "spotify:track:7iOyMOxdOULvXqUqC26spJ", image: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7", artist: "Portugal. The Man" , spotify_url: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7"},
	{id: 4, user_id: 4, preview_url: "https://p.scdn.co/mp3-preview/04e56073c2576c985b12a159b6fb1cb3ddd74f6b", song_id:"0IOFbRuU9O7BsRMVBT6Rbo" , title: "Ophelia", uri: "spotify:track:0IOFbRuU9O7BsRMVBT6Rbo", image: "https://i.scdn.co/image/b39dab40120cf013de7964de235fdba5593d86d1", artist: "The Lumineers", spotify_url:"https://open.spotify.com/track/0IOFbRuU9O7BsRMVBT6Rbo"}

])

Tag.create([{id: 1, rec_id: 1, tag: "punk"},
	{id: 2, rec_id: 1, tag: "getting pumped up"},
	{id: 3, rec_id: 1, tag: "explicit"},
	{id: 4, rec_id: 1, tag: "punk-rock"},
	{id: 5, rec_id: 1, tag: "lydia"},
	{id: 6, rec_id: 1, tag: "highly suspect"},
	{id: 7, rec_id: 2, tag: "tech"},
	{id: 8, rec_id: 2, tag: "party"},
	{id: 9, rec_id: 2, tag: "work-out"},
	{id: 10, rec_id: 2, tag: "fun"},
	{id: 11, rec_id: 3, tag: "indie rock"},
	{id: 12, rec_id: 3, tag: "will like if you like broken bells"},
	{id: 13, rec_id: 3, tag: "listen on repeat"},
	{id: 14, rec_id: 3, tag: "anytime listening"},
	{id: 15, rec_id: 4, tag: "happy"},
	{id: 16, rec_id: 4, tag: "love"},
	{id: 17, rec_id: 4, tag: "folk"},
	{id: 18, rec_id: 4, tag: "rock"}
])

CurrentFav.create([
				{id: 1, user_id: 1, preview_url: "https://p.scdn.co/mp3-preview/50d1695a0a50102b76be0fab03c2abe1174433fd", song_id: "6sj9rODkg2fpS30JlWbb2t", title: "Lydia", uri: "spotify:track:6sj9rODkg2fpS30JlWbb2t", image: "https://i.scdn.co/image/8d0651d2a188db6ca1f567aa7f1cc255c28416a1", artist: "Highly Suspect", spotify_url: "https://open.spotify.com/track/6sj9rODkg2fpS30JlWbb2t"},
				{id: 2, user_id: 1, preview_url:"https://p.scdn.co/mp3-preview/c1024d02ec15b93fe218692fb9ad23c5bad3e1aa" , song_id:"4qABfS1RaGVXdBhj2BQyhO" , title: "Runaway (U & I)", uri: "spotify:track:4qABfS1RaGVXdBhj2BQyhO", image: "https://i.scdn.co/image/60e40883ae3c1edba925cedd554fc8dabc677ba1", artist: "Galantis", spotify_url: "https://open.spotify.com/track/4qABfS1RaGVXdBhj2BQyhO"},
				{id: 3, user_id: 1, preview_url: "https://p.scdn.co/mp3-preview/0c65fd37a94b58af8c1c407437a4ab39cc772172", song_id: "7iOyMOxdOULvXqUqC26spJ", title: "Modern Jeses", uri: "spotify:track:7iOyMOxdOULvXqUqC26spJ", image: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7", artist: "Portugal. The Man" , spotify_url: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7"},
				{id: 4, user_id: 1, preview_url: "https://p.scdn.co/mp3-preview/04e56073c2576c985b12a159b6fb1cb3ddd74f6b", song_id:"0IOFbRuU9O7BsRMVBT6Rbo" , title: "Ophelia", uri: "spotify:track:0IOFbRuU9O7BsRMVBT6Rbo", image: "https://i.scdn.co/image/b39dab40120cf013de7964de235fdba5593d86d1", artist: "The Lumineers", spotify_url:"https://open.spotify.com/track/0IOFbRuU9O7BsRMVBT6Rbo"},
				{id: 5, user_id: 2, preview_url: "https://p.scdn.co/mp3-preview/50d1695a0a50102b76be0fab03c2abe1174433fd", song_id: "6sj9rODkg2fpS30JlWbb2t", title: "Lydia", uri: "spotify:track:6sj9rODkg2fpS30JlWbb2t", image: "https://i.scdn.co/image/8d0651d2a188db6ca1f567aa7f1cc255c28416a1", artist: "Highly Suspect", spotify_url: "https://open.spotify.com/track/6sj9rODkg2fpS30JlWbb2t"},
				{id: 6, user_id: 2, preview_url:"https://p.scdn.co/mp3-preview/c1024d02ec15b93fe218692fb9ad23c5bad3e1aa" , song_id:"4qABfS1RaGVXdBhj2BQyhO" , title: "Runaway (U & I)", uri: "spotify:track:4qABfS1RaGVXdBhj2BQyhO", image: "https://i.scdn.co/image/60e40883ae3c1edba925cedd554fc8dabc677ba1", artist: "Galantis", spotify_url: "https://open.spotify.com/track/4qABfS1RaGVXdBhj2BQyhO"},
				{id: 7, user_id: 2, preview_url: "https://p.scdn.co/mp3-preview/0c65fd37a94b58af8c1c407437a4ab39cc772172", song_id: "7iOyMOxdOULvXqUqC26spJ", title: "Modern Jeses", uri: "spotify:track:7iOyMOxdOULvXqUqC26spJ", image: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7", artist: "Portugal. The Man" , spotify_url: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7"},
				{id: 8, user_id: 2, preview_url: "https://p.scdn.co/mp3-preview/04e56073c2576c985b12a159b6fb1cb3ddd74f6b", song_id:"0IOFbRuU9O7BsRMVBT6Rbo" , title: "Ophelia", uri: "spotify:track:0IOFbRuU9O7BsRMVBT6Rbo", image: "https://i.scdn.co/image/b39dab40120cf013de7964de235fdba5593d86d1", artist: "The Lumineers", spotify_url:"https://open.spotify.com/track/0IOFbRuU9O7BsRMVBT6Rbo"},
				{id: 9, user_id: 3, preview_url: "https://p.scdn.co/mp3-preview/50d1695a0a50102b76be0fab03c2abe1174433fd", song_id: "6sj9rODkg2fpS30JlWbb2t", title: "Lydia", uri: "spotify:track:6sj9rODkg2fpS30JlWbb2t", image: "https://i.scdn.co/image/8d0651d2a188db6ca1f567aa7f1cc255c28416a1", artist: "Highly Suspect", spotify_url: "https://open.spotify.com/track/6sj9rODkg2fpS30JlWbb2t"},
				{id: 10, user_id: 3, preview_url:"https://p.scdn.co/mp3-preview/c1024d02ec15b93fe218692fb9ad23c5bad3e1aa" , song_id:"4qABfS1RaGVXdBhj2BQyhO" , title: "Runaway (U & I)", uri: "spotify:track:4qABfS1RaGVXdBhj2BQyhO", image: "https://i.scdn.co/image/60e40883ae3c1edba925cedd554fc8dabc677ba1", artist: "Galantis", spotify_url: "https://open.spotify.com/track/4qABfS1RaGVXdBhj2BQyhO"},
				{id: 11, user_id: 3, preview_url: "https://p.scdn.co/mp3-preview/0c65fd37a94b58af8c1c407437a4ab39cc772172", song_id: "7iOyMOxdOULvXqUqC26spJ", title: "Modern Jeses", uri: "spotify:track:7iOyMOxdOULvXqUqC26spJ", image: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7", artist: "Portugal. The Man" , spotify_url: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7"},
				{id: 12, user_id: 3, preview_url: "https://p.scdn.co/mp3-preview/04e56073c2576c985b12a159b6fb1cb3ddd74f6b", song_id:"0IOFbRuU9O7BsRMVBT6Rbo" , title: "Ophelia", uri: "spotify:track:0IOFbRuU9O7BsRMVBT6Rbo", image: "https://i.scdn.co/image/b39dab40120cf013de7964de235fdba5593d86d1", artist: "The Lumineers", spotify_url:"https://open.spotify.com/track/0IOFbRuU9O7BsRMVBT6Rbo"},
				{id: 13, user_id: 4, preview_url: "https://p.scdn.co/mp3-preview/50d1695a0a50102b76be0fab03c2abe1174433fd", song_id: "6sj9rODkg2fpS30JlWbb2t", title: "Lydia", uri: "spotify:track:6sj9rODkg2fpS30JlWbb2t", image: "https://i.scdn.co/image/8d0651d2a188db6ca1f567aa7f1cc255c28416a1", artist: "Highly Suspect", spotify_url: "https://open.spotify.com/track/6sj9rODkg2fpS30JlWbb2t"},
				{id: 14, user_id: 4, preview_url:"https://p.scdn.co/mp3-preview/c1024d02ec15b93fe218692fb9ad23c5bad3e1aa" , song_id:"4qABfS1RaGVXdBhj2BQyhO" , title: "Runaway (U & I)", uri: "spotify:track:4qABfS1RaGVXdBhj2BQyhO", image: "https://i.scdn.co/image/60e40883ae3c1edba925cedd554fc8dabc677ba1", artist: "Galantis", spotify_url: "https://open.spotify.com/track/4qABfS1RaGVXdBhj2BQyhO"},
				{id: 15, user_id: 4, preview_url: "https://p.scdn.co/mp3-preview/0c65fd37a94b58af8c1c407437a4ab39cc772172", song_id: "7iOyMOxdOULvXqUqC26spJ", title: "Modern Jeses", uri: "spotify:track:7iOyMOxdOULvXqUqC26spJ", image: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7", artist: "Portugal. The Man" , spotify_url: "https://i.scdn.co/image/c707baa5d207b65ec07cfde27326720f583bcdf7"},
				{id: 16, user_id: 4, preview_url: "https://p.scdn.co/mp3-preview/04e56073c2576c985b12a159b6fb1cb3ddd74f6b", song_id:"0IOFbRuU9O7BsRMVBT6Rbo" , title: "Ophelia", uri: "spotify:track:0IOFbRuU9O7BsRMVBT6Rbo", image: "https://i.scdn.co/image/b39dab40120cf013de7964de235fdba5593d86d1", artist: "The Lumineers", spotify_url:"https://open.spotify.com/track/0IOFbRuU9O7BsRMVBT6Rbo"}
				])

RecTag.create([{id: 1, rec_id: 1, tag_id: 1},
			{id: 2, rec_id: 1, tag_id: 2},
			{id: 3, rec_id: 1, tag_id: 3},
			{id: 4, rec_id: 1, tag_id: 4},
			{id: 5, rec_id: 1, tag_id: 5},
			{id: 6, rec_id: 1, tag_id: 6},
			{id: 7, rec_id: 2,tag_id: 7},
			{id: 8, rec_id: 2, tag_id: 8},
			{id: 9, rec_id: 2, tag_id: 9},
			{id: 10, rec_id: 2, tag_id: 10},
			{id: 11, rec_id: 3, tag_id: 11},
			{id: 12, rec_id: 3,tag_id: 12},
			{id: 13, rec_id: 3, tag_id: 13},
			{id: 14, rec_id: 3, tag_id: 14},
			{id: 15, rec_id: 4, tag_id: 15},
			{id: 16, rec_id: 4, tag_id: 16},
			{id: 17, rec_id: 4, tag_id: 17},
			{id: 18, rec_id: 4, tag_id: 18}
			])

Follower.create([{id: 1, user_id: 1, following_id: "2"},
				{id: 2, user_id: 1, following_id: "3"},
				{id: 3, user_id: 1, following_id: "4"},
				{id: 4, user_id: 2, following_id: "1"},
				{id: 5, user_id: 2, following_id: "3"},
				{id: 6, user_id: 2, following_id: "4"},
				{id: 7, user_id: 3, following_id: "2"},
				{id: 8, user_id: 3, following_id: "1"},
				{id: 9, user_id: 3, following_id: "4"},
				{id: 10, user_id: 4, following_id: "2"},
				{id: 11, user_id: 4, following_id: "3"},
				{id: 12, user_id: 4, following_id: "1"}
				])
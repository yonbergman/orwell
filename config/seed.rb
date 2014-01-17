#!/usr/bin/env ruby
require_relative './db'
require_relative '../app/models/user'
require_relative '../app/models/song'


User.dataset.delete
Song.dataset.delete

[
  {id: 'AK', name: 'Adi Keren', song: {artist: 'Petula Clark', title: 'Downtown', youtubeId: 'z_m4Qb0iW-o', startAt: 43 }},
  {id: 'DS', name: 'Dan Sincai', song: {artist: 'Miley Cyrus', title: 'Wrecking Ball', youtubeId: 'My2FRPA3Gf8', startAt: 40 }},
  {id: 'RG', name: 'Ron Gura', song: {artist: 'Jimmy Eat World', title: 'The Middle', youtubeId: 'FV-HPOHu8mY', startAt: 12 }},
  {id: 'ED', name: 'Erez Dickman', song: {artist: 'Louis Armstrong', title: 'What a Wonderful World', youtubeId: 'm5TwT69i1lU' }},
  {id: 'SD', name: 'Shay Davidson', song: {artist: 'Tom Jones', title: 'It\'s Not Unusual', youtubeId: 'yca2BCwAnBQ' }},
  {id: 'GG', name: 'Gilad Goldberg', song: {artist: 'Huey Lewis & The News', title: 'The Power of Love', youtubeId: 'WK0z87WrhGo' }},
  {id: 'AF', name: 'Adam Farhi', song: {artist: 'Beck', title: 'Where It\'s At', youtubeId: '5wrZNaCHLDA' }},
  {id: 'IF', name: 'Ido Feins', song: {artist: 'Dream Theater', title: 'Panic Attack', youtubeId: '5hDs6mCVAKs' }},
  {id: 'BW', name: 'Benny Weingarten', song: {artist: 'Elizeth Cardoso', title: 'Eu Bebo Sim', youtubeId: 'hXL7IEEKav8', startAt: 16  }},
  {id: 'YB', name: 'Yonatan Bergman', song: {artist: 'The Black Keys', title: 'Howlin\' for you', youtubeId: 'A3scl0fl0zE'}},
  {id: 'AG', name: 'Asaf Gartner', song: {artist: 'The Rubberbandits', title: 'Horse Outside', youtubeId: 'BYrr4VFicBY', startAt: 24 }},
  {id: 'DF', name: 'Danni Friedland', song: {artist: 'M.I.A.', title: 'Paper Planes', youtubeId: '7sei-eEjy4g' }},
  {id: 'IA', name: 'Itay Adler', song: {artist: 'Elliott Smith', title: 'A Distorted Reality Is Now A Necessity To Be Free', youtubeId: 'TgOn7wuC3tk' }},
  {id: 'KR', name: 'Keshet Rosenstein', song: {artist: 'Matisyahu', title: 'One Day', youtubeId: 'WRmBChQjZPs', startAt: 7 }},
  {id: 'MB', name: 'Matan Bar', song: {artist: 'Arctic Monkeys', title: 'R U Mine', youtubeId: 'VQH8ZTgna3Q', startAt: 46 }},
  {id: 'MF', name: 'Maxim Feinstein', song: {artist: 'Donna Summer', title: 'She Works Hard for the Money', youtubeId: '4DsNn1NzxJ8', startAt: 9}},
  {id: 'ZM', name: 'Ziv Meltzer', song: {artist: 'The Mamas & The Papas', title: 'Make Your Own Kind of Music', youtubeId: '0OrQYrXDcLs', startAt: 108}},
  {id: 'GS', name: 'Guy Schory', song: {artist: 'Eminem', title: 'Guess Whos back', youtubeId: 'nxpTx0VDBKw', startAt: 22}},
].each do |user_data|
	u = User.find_or_create(
		full_name: user_data[:name], 
		key: user_data[:id]
	)
  u.song = Song.create(:artist => user_data[:song][:artist],
    :youtube_id => user_data[:song][:youtubeId],
    :name => user_data[:song][:title])

end

puts "Created #{User.count} Users"
puts "Created #{Song.count} Songs"

# Celluloid.logger.info "User count: #{users.count}"
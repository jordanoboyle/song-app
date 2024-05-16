# json.extract! song, :id, :created_at, :updated_at
# json.url song_url(song, format: :json)


json.id song.id
json.title song.title
json.artist song.artist
json.length song.length
json.created_at song.created_at
json.updated_at song.updated_at
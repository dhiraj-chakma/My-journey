require "sqlite3"

def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  # Should return an integer of the number of artists.
  results = db.execute("SELECT count(*) FROM artists") #[[275]]
  results.at(0).at(0)
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name.
  # Should return an integer of the number of rows.
  results = db.execute("SELECT count(*) FROM table_name")
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically.
  # Should return an array of strings sorted alphabetically.
  results = db.execute("SELECT name FROM artists ORDER BY name ASC")
  results.map { |string| string[0] }
end

def love_tracks(db)
  # TODO: return array of love songs' names.
  # Should return an array of strings (track names).
  results = db.execute("SELECT name FROM tracks WHERE name LIKE '%love%'")
  results.map { |string| string[0] }
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending).
  # Should return an array of strings.
  results = db.execute("SELECT name FROM tracks WHERE milliseconds*60000 > #{min_length} ORDER BY milliseconds ASC;")
   results.map { |string| string[0] }
end

def albums_per_artist(db)
  # TODO: return an array of arrays, each containing the artist's name and the number of albums they have
  results = db.execute("SELECT artists.name,COUNT(albums.id) FROM artists INNER JOIN albums ON artists.id = albums.artist_id GROUP BY albums.title;")
end

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 order by year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from characters order by length(motto) desc limit 1"
end

def select_value_and_count_of_most_prolific_species
  "select species, count(species) from characters group by species order by count(species) desc limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name
   from authors
   join series
   on authors.id = series.author_id
   join subgenres
   on series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "select series.title
  from series
  join characters
  on series.id = characters.series_id
  where species = \"human\"
  group by characters.series_id
  order by count(characters.species) desc limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(character_books.character_id)
  from characters
  join character_books
  on characters.id = character_books.character_id
  group by character_books.character_id
  order by count(character_books.character_id) desc, name"
end

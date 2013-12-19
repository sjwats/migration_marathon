module Seeders
  module Genres
    class << self

      def seed
        genres.each do |name|
          genre = Genre.find_or_initialize_by(name: name) do |genre|
          genre.name = name
          genre.save
          end
        end
      end

      def genres
        ["Horror", "Sci-Fi", "Non Fiction", "Fiction"]
      end
    end
  end
end

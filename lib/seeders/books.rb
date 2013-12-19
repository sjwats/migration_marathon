module Seeders
  module Books
    class << self

      def seed
        books.each do |author, title|
          book = Book.find_or_initialize_by(title: title) do |book|
          book.title = title
          book.author = author
          book.save
          end
        end
      end

      def books
        {
          "Hemingway" => "For Whom The Bell Tolls",
          "Bukowski" => "Women",
          "Hemingway" => "The Sun Also Rises",
          "50 Shades of Gray" => "Some D-bag",
          "Atlas Shrugged" => "Ayn Rand"
        }
      end
    end
  end
end

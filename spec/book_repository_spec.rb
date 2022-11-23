require "book_repository"
require "book"

def reset_books_table
  seed_sql = File.read("spec/seeds_book_store.sql")
  connection = PG.connect({ host: "127.0.0.1", dbname: "book_store_test" })
  connection.exec(seed_sql)
end

RSpec.describe BookRepository do
  before(:each) do
    reset_books_table
  end
  describe "#all" do
    it "returns a list of length 2" do
      repo = BookRepository.new
      books = repo.all
      expect(books.length).to eq 2
    end
    it "returns an array of Book objects" do
      repo = BookRepository.new
      books = repo.all
      expect(books.class).to eq Array
      all_books = books.all? { |el| el.class == Book }
      expect(all_books).to eq true
    end
    it "has correct data for first record" do
      repo = BookRepository.new
      book = repo.all.first
      expect(book.id).to eq 1
      expect(book.title).to eq "Nineteen Eighty-Four"
      expect(book.author_name).to eq "George Orwell"
    end
  end
end

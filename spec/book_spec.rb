require "book"

RSpec.describe Book do
  it "initialises with correct data" do
    book = Book.new("1", "title", "me")
    expect(book.id).to eq 1
    expect(book.title).to eq "title"
    expect(book.author_name).to eq "me"
  end
  it "formats output" do
    book = Book.new("1", "title", "me")
    expect(book.to_s).to eq "1 - title - me"
  end
  it "can create a Book from a hash" do
    h = { "id" => "1", "title" => "title", "author_name" => "me" }
    book = Book.from(h)
    expect(book.to_s).to eq "1 - title - me"
  end
end

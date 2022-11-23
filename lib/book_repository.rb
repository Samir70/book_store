require_relative "book"

class BookRepository
  def all
    sql = "SELECT * FROM books"
    results = DatabaseConnection.exec_params(sql, []).map { |el| Book.new(el) }
    return results
    # returns a list of Book objects
  end
end

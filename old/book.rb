class Book
  include Comparable

  def initialize(id, title, author_name)
    @id = id.to_i
    @title = title
    @author_name = author_name
  end

  def self.from(hash)
    return Book.new(hash["id"], hash["title"], hash["author_name"])
    # @id = hash["id"].to_i
    # @title = hash["title"]
    # @author_name = hash["author_name"]
  end

  def to_s
    return "#{@id} - #{@title} - #{@author_name}"
  end

  def ==(other)
    (self.id == other.id) && (self.title == other.title) && (self.author_name == other.author_name)
  end

  attr_accessor :id, :title, :author_name
end

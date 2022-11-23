class Book
    def initialize(hash)
        @id = hash["id"].to_i
        @title = hash["title"]
        @author_name = hash["author_name"]
    end

    def to_s
        return "#{@id} - #{@title} - #{@author_name}"
    end
    attr_accessor :id, :title, :author_name
end
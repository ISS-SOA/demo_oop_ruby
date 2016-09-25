module Document
  # Document - Stores the title, author, and contents of a document
  class BasicDocument

    attr_accessor :title, :type, :author

    def initialize(title, type, author)
      @title = title
      @type = type
      @author = author
    end
  end
end

require './documents_mixin_inherit.rb'

module Document
  # Add summary method to base class for all documents
  class BaseDocument
    def summary
      "#{title} is a #{type} by #{author}"
    end
  end
end

# Add summary method to all classes with WordContent mixed in
module WordContent
  def summary
    super + " (#{word_count} words)"
  end
end

# Bookstore - for reading a directory of documents
class Bookstore
  attr_reader :docs

  def initialize(dir_path)
    @docs = []
    Dir.glob("#{dir_path}/*.yml") do |filename|
      @docs << Document::LazyContentDocument.new(filename)
    end
  end
end

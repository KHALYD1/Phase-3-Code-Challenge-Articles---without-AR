require_relative 'author'
require_relative 'magazine'


class Article
  attr_reader :title, :author, :magazine

  def initialize(title, magazine, author)

    if magazine.is_a?(Magazine) && author.is_a?(Author)
      @title = title
      @magazine = magazine
      @author = author
    else
      puts "Error: invalid argument types for Article"
    end
  end

  def to_s
    "#{title} - #{magazine.name} - #{author.name}"
  end
end


author = Author.new("Khalid")
magazine = Magazine.new("Batman", "Time Inc.")
article = Article.new("that only guy who can save the world from dark web", magazine, author)

puts article

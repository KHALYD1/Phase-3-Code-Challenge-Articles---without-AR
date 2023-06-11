class Article
  attr_reader :title, :content

  def initialize(title, content)
    @title = title
    @content = content
  end

  def to_s
    "'#{@title}' - #{@content}"
  end
end

class Author
  attr_reader :name, :articles

  def initialize(name, articles = [])
    @name = name
    @articles = articles
  end

  def add_article(article)

    if article.is_a?(Article)
      @articles << article
    else
      puts "Error: #{article} is not an Article object"
    end
  end

  def set_name(new_name)
    @name = new_name
  end

  def to_s
    "Author: #{@name}\nArticles:\n" + @articles.map(&:to_s).join("\n")
  end
end

# Create a new Author instance and add some articles
author = Author.new("Khalid")
article1 = Article.new("Treble winners", "man city wins the treble")
article2 = Article.new("Goat?", "Is Pep the goat manager?")
author.add_article(article1)
author.add_article(article2)

puts author.to_s

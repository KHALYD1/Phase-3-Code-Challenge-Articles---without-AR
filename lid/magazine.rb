class Magazine
  attr_accessor :name, :publisher

  def initialize(name, publisher)
    @name = name
    @publisher = publisher
  end

  def to_s
    "#{name} - published by #{publisher}"
  end
end

magazine = Magazine.new("Daily planet", "Khalid")
puts magazine.to_s

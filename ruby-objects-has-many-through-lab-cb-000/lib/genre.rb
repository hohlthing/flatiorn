class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def artists
    @songs.map { |x| x.artist }
  end
end

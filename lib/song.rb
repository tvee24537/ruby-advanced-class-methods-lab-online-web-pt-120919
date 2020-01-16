class Song  #given
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
#it begins here!

  def self.create
    song = self.new
    self.all << song
    song
  end
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end
  
  def self.find_by_name(name) #class finder
    result = self.all.detect {|song| song.name == name}
    result
  end
  
  def self.find_or_create_by_name(name)
    #This method will accept a string name for a song and either return a matching song instance with that name or create a new song with the name and return the song instance.
    result = self.find_by_name(name)
    if result
      result
    else
      self.create_by_name(name)
    end
  end
  
end

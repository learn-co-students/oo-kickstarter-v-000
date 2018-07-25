class Project
  attr_accessor :title, :backers
  #@@all = []

  def initialize(title)
    @title = title
    @backers = []
     #@@all << self
  end

  def add_backer(backer)
    backers << backer
  end
end

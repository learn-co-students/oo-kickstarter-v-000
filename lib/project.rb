class Project
  
  attr_accessor :backer, :backers, :title, :all
  
  @@all = []
  
  def initialize(title)
    @title = title
    @backers = []
    @@all << self 
  end
  
  def all
    @@all
  end
  
  def add_backer(new_backer)
    @backers << new_backer 
    new_backer.backed_projects << self 
  end
  
end
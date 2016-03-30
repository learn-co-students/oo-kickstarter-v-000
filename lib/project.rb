class Project 
  
  attr_accessor :backers, :title, :backer, :project 

  def initialize(title)
    @title = title 

    @backers = []
    
  end

  def add_backer(backer)

    @backers << backer 

    backer.backed_projects << self 
    
  end



end 
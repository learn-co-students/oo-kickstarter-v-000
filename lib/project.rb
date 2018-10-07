class Project
  
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
     #binding.pry
    @backers << backer
    backer.backed_projects << self
    
  end
end
  
 
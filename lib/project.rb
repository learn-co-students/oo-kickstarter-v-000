class Project
  
  attr_accessor :title, :backers 
  
  def initialize(title)
    @title = title 
    @backers = [] 
  end 

   def add_backer(backer)   #accepts a Backer as an argument and stores it in a backers array
     @backers << backer 
     backer.backed_projects << self   #also adds the project to the backer's backed_projects array
    end 




end 
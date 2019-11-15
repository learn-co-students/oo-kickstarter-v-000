class Project 
  attr_accessor :title, :backers 
  
  def initialize(title)
    @title = title 
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer
    if !backer.all_backed.include?(self)
      backer.back_project(self)
    end 
  end 
end 
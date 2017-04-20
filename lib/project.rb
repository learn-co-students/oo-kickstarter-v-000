#takes a title on initialization
#####add_backer
#accepts a Backer as an argument and stores it in a backers array 
#####More Advanced #add_backer
#also adds the project to the backer's backed_projects array

class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
end
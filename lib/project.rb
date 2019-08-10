class Project

  attr_accessor :title, :backers
#takes a title on initialization
  def initialize(title)
    @title = title
    @backers = []
  end
#accepts a Backer as an argument and stores it in a backers array
  def add_backer(backer)
    @backers << backer
#also adds the project to the backer's backed_projects array
    backer.backed_projects << self
  end
end

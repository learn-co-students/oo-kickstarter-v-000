class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    #accepts a Backer object as an argument and stores it in a backers array
    #also adds the project (self) to the backer\'s backed_projects array
    @backers << backer
    backer.backed_projects << self
  end

end

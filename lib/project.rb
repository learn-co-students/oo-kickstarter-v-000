class Project

  attr_accessor :backers, :title

  def initialize(title) #  takes a title on initialization
    @title = title
    @backers = []
  end

  def add_backer(name) #accepts a Backer as an argument and stores it in a backers array
    @backers << name
    name.backed_projects << self # also adds the project to the backer's backed_projects array
  end
end

class Project

  attr_accessor :title, :backers

  def initialize(title) # Takes a title on initialization
    @title = title
    @backers = []
  end

  def add_backer(backer) # Accepts a Backer as an argument
    @backers << backer # Stores the Backer in the backers array
    backer.backed_projects << self # Adds the project to the Backer's backed_projects array
  end

end

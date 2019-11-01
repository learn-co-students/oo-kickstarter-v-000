class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    #adds the project to the backers backed_projects array
    backer.backed_projects << self
  end
end

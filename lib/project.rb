class Project
  attr_accessor :backers, :name, :title
  def initialize(name)
    @name = name
    @backers = []
    @title = "Project With So Much Amaze"
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end

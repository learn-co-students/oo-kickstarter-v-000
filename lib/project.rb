class Project
  attr_accessor :title, :backers

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self #adds project to the backer's backed_projects array
  end

end

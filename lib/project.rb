class Project
  attr_accessor :backers, :title

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(backers)
    @backers << backers
    backers.backed_projects << self
  end

end

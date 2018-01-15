class Project
  attr_accessor :title, :backers

  def initialize(project_title)
    @title = project_title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end

end

class Project
  attr_accessor :title, :backers
  def initialize(project_name)
    @title = project_name
    @backers = []
  end
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end

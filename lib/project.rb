class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(project)
    @backers << project
    project.backed_projects << self
  end
end

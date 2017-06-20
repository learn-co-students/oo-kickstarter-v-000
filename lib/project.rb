class Project
  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(project)
    @backers << project
    project.backed_projects << self
  end

end

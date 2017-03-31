class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    @backers << name
    name.back_project(self) unless name.backed_projects.include?(self)
  end

end

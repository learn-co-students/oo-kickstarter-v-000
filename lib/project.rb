class Project
  attr_accessor :backers, :title

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(name)
    self.backers << name
    name.back_project(self) unless name.backed_projects.include?(self)
  end
end

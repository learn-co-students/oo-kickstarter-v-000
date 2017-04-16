class Project
  attr_accessor :backers, :title

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(name)
    @backers << name
    name.back_project(self) unless name.list_projects.include?(self)
  end

  def list_backers
    @backers
  end
end

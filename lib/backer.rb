class Backer
  attr_accessor :backed_projects, :name, :title
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(title)
    backed_project = title
    @backed_projects << backed_project
    title.backers << self
  end
end

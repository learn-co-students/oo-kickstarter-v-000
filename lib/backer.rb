class Backer
  attr_accessor :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(title)
    self.backed_projects << title
    title.backers << self
  end
end


logan = Backer.new("Logan")
hoverboard = Project.new("Awesome Hoverboard")
logan.back_project(hoverboard)

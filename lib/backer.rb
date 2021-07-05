class Backer
  attr_accessor :name, :backed_projects, :backers

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    @backed_projects << title
    title.add_backer(self) #title is the instance of the project and self is the instance of the Backer
  end

end

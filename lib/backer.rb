class Backer

  attr_accessor :backed_projects, :name

  def initialize(name) # takes a name on initialization
    @name = name
    @backed_projects = []
  end

  def back_project(name) # accepts a Project as an argument and stores it in a backed_projects array
    @backed_projects << name
    name.backers << self # also adds the backer to the project's backers array
  end

end

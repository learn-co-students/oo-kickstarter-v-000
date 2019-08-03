class Backer
  attr_accessor :name, :project, :backed_projects
#When a `Backer` instance is initialized, it should be initialized with a `@backed_projects`
#variable set to an empty array. Instances of the `Backer` class should have an `attr_accessor`
#for backed projects so that projects can be added to a backer's list and so that the backer
#can report on the projects they back.
  def initialize (name)
    @name = name
    @backed_projects = []
  end

#When a backer has added a project to its list of backed projects, that project
#should *also add the backer to its list of backers*.
  def back_project(title)
    @backed_projects << title
    title.backers << self

  end

end

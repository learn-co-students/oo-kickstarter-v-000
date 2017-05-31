#Backer - ::new takes a name on initialization
     #Failure/Error: backer = Backer.new("Avi")
class Backer

  attr_accessor :name, :backed_projects
  @backers = []
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  #1) Backer - #back_project accepts a Project as an argument and stores it in a backed_projects array
     #Failure/Error: spencer.back_project(magic)
  def back_project(project)
    backed_projects << project
    project.backers << self
  end

  #1) Backer - More Advanced #back_project also adds the backer to the project's backers array
     #Failure/Error: expect(hoverboard.backers).to include(logan)



end

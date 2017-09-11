class Backer

  attr_accessor :backed_projects, :name #so projects can be added to a Backer's list and so that the backer can report on the projects they back.

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  #when backer added a project to its list of backed projects, that project also adds the backer to its list of backers

  def back_project(project)
    @backed_projects << project
      # backer = self.new(name) #logan = Backer.new("Logan")
      # project_name = backer #hoverboard = Project.new("Awesome Hoverboard")
      # backer.back_project #logan.back_project(hoverboard)
      project.backers << self #(backer) # expect(hoverboard.backers).to include(logan)
  end

end

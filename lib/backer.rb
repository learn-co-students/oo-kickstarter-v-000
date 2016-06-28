class Backer

attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects =[]
  end

  def back_project(project)
    backed_projects << project #accepts a Project as an argument and stores it in a backed_projects array
    project.backers << self #also adds the backer to the project\'s backers array
  end

end

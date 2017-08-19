require 'pry'
class Backer

  attr_accessor :backed_projects, :name
#setter and getter for backed_projects, an empty array at initialize
#setter and getter for name of backer
  def initialize(name) #new instance of a backer takes in a name
    @name= name
    @backed_projects= []
  end

  def back_project(project) #takes in a project (from Class Project) and adds it to the list of backed projects
    @backed_projects << project
    project.backers << self#adds backer (self) to the projects backers array (backed_projects)
end


end

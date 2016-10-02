class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    # Adds the "project" Object to the backed_projects array of a particular instance of Backer
    self.backed_projects << project
    # Using the add_becker method of Class Project, adds this instance of backer to the array of backers ...
    # for the particular instance of the Project itself
    # The check is necessary to prevent unnecessary circular reference that would arise from the similar ...
    # method being implemented in Class Project 
    project.add_backer(self) unless project.backers.include?(self)
  end

end

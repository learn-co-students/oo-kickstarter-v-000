class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self # add self instance to @backers array
  end

  def self.back_project # added this method to check contents of @backed_projects array
    @backed_projects
  end
end

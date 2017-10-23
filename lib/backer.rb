class Backer
  attr_accessor :backed_projects, :name
  attr_reader :backers 

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  # def project=(project)
  #   @project = project
  #   project.add_backer(self)
  # end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end

class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects =[]
  end

  def back_project(project)
    if project.is_a?(Project)
      @backed_projects << project
      project.backers << self unless project.backers.include?(self)
    else
      nil
    end
  end


end
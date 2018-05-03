class Backer

  attr_accessor :name, :backed_projects
  # @@backed_projects = []

  def initialize(name)
    @name = name
    @backed_projects = []
  end
  #
  # def back_project(project)
  #   if project.class == Project
  #   @backed_projects << project
  #   end
  # end

  def back_project(project)
    if project.class == Project
    @backed_projects << project
    project.backers << self
    self.backed_projects << project
    # binding.pry
    end
  end


end

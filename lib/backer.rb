class Backer
  attr :backed_projects, :name
  
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  
   def back_project(proj)
    @backed_projects << proj
  end
end
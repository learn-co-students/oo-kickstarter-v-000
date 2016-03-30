class Backer
  attr_accessor :backed_projects, :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
   
  def back_project(project)
    self.backed_projects << project
    if project.backers.none? { |b| b == self }
      project.add_backer(self)
    end
  end
    
end
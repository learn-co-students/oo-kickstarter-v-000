class Backer
#==========================================
  # INSTANCE ATTRIBUTES
#==========================================
attr_accessor :name, :backed_projects 
#==========================================  
  # INSTANCE
#==========================================
  def initialize(name)
    self.name = name
    self.backed_projects = []
  end
  
  def back_project(proj)
    self.backed_projects << proj
    proj.backers << self
  end
end
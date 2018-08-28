class Backer
  attr_accessor :backed_projects
  attr_reader :name
  
  def initialize(name)
    @name=name
    @backed_projects=[]
  end 
  
  def back_project(proj)
    @backed_projects << proj
    if proj.backers.include?(self)==FALSE
      proj.add_backer(self)
    end  
  end
    
end 

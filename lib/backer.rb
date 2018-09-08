class Backer 
  attr_reader :name, :backed_projects 
  # I would argue that :backed_projects should not be in attr_accessor.
  # My reason: @backed_projects is an array; having a writer method for it through attr_accessor makes little sense to me.
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    self.backed_projects << project
    project.backers << self
  end
end
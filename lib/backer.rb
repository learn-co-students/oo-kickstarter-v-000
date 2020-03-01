class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(proj_obj)
    self.backed_projects << proj_obj
    proj_obj.backers << self
  end
end # => End Backer Class

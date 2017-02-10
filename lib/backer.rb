class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(proj_class)
    @backed_projects << proj_class
    if proj_class.backers.include?(self) == false
      proj_class.add_backer(self)
    end
  end

end

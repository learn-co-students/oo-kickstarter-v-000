class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(name)
    self.backed_projects << name
    name.add_backer(self) unless name.backers.include?(self)
  end
end

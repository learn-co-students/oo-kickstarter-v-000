class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(backer)
    @backed_projects << backer
    backer.backers << self
  end
end

class Backer
  attr_accessor :name, :backed_projects


  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    if !(project.backers.detect {|backers| backers == self})
      project.add_backer(self)
    end
  end


end

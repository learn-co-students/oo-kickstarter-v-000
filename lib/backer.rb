# first attempt 6/26/17
# class Backer
#   attr_accessor :name, :backed_projects
#
#   def initialize(name)
#     @name = name
#     @backed_projects = []
#   end
#
#   def back_project(project)
#     self.backed_projects << project
#     project.add_backer(self) unless project.backers.include?(self)
#   end
# end

# second attempt 7/4/17

class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end
end

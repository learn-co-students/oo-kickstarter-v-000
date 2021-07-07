require 'pry'
class Backer
attr_accessor :name, :backed_projects
  def initialize(name)
  @name = name
  @backed_projects = []
  end
  def back_project(a_project_name)
    @backed_projects << a_project_name
    #backer_name = @backed_projects[0]
    a_project_name.backers << self
    #puts a_project_name
    #binding.pry
  end
end

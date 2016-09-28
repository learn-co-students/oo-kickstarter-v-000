<<<<<<< HEAD
require 'pry'

=======
>>>>>>> 7e93b5ac10dfc8dfc7c20cf1583d84ed721b2c5a
class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

<<<<<<< HEAD
  def back_project(project)
    @backed_projects << project
    project.backers << self 
=======
  def back_project
>>>>>>> 7e93b5ac10dfc8dfc7c20cf1583d84ed721b2c5a
  end

end

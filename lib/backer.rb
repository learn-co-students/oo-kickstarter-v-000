require 'pry'
#note: Kickstarter is a website that random people support your project
class Backer
 attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = [] #what project the backer would support.

  end

   def back_project(project)
     #stores project in a back_project array
      @backed_projects << project
      project.backers  << self  # this is refering to the project in the project class in which
          # the backeres attribute or @backers is located.

   end

end

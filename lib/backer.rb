require 'pry'
class Backer
   attr_accessor :name, :backed_projects
   def initialize(name)
      @name = name
      @backed_projects = []
   end

   def back_project(project)
      self.backed_projects << project
      self.backed_projects[0].add_backer(self)
   end



end
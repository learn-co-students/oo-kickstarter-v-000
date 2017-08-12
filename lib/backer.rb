require 'pry'
class Backer

  attr_accessor :name, :backed_projects

    def initialize(name = nil)
      @name = name
      @backed_projects = []
    end

      def back_project(project)
       @backed_projects << project
       project.add_backer(self)
      end

end

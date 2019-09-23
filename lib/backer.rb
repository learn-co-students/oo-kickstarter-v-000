require 'pry'

class Backer

      attr_accessor :name, :backed_projects


      def initialize(name)
            @name = name
            @backed_projects = []
      end

      def back_project(hoverboard)
            @backed_projects << hoverboard
            @backed_projects << self
            hoverboard.add_backer(self)
            puts @backed_projects
            #binding.pry
      end

end

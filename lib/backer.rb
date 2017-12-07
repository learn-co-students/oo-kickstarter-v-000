class Backer

   attr_accessor :name, :backed_projects, :backers

    def initialize(name)
      @name = name
      @backer = []
      @backed_projects = []
    end

    def back_project(project)
     @backed_projects << project
     project.backers << self
   end





  end

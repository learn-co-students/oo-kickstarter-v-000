class Backer
  @@backers = []

attr_accessor :name, :backed_projects
    def initialize(name)
      @backed_projects = []
      @name = name
      @@backers << self
      end

    def back_project(project)
      @backed_projects << project
      project.backers << self

    end



end

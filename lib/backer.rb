class Backer
    attr_accessor :name, :backed_projects
   
    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(title)
        poppin_project = Project.new(title)
        @backed_projects << poppin_project
    end

end
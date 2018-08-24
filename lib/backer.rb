class Backer
    attr_accessor :backed_projects, :name

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        backed_projects << project  # Stores a project in the backed_projects array
        project.backers << self # Adds backer instance to project's backers array
    end

end
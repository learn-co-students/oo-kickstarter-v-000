class Backer
  attr_accessor :name, :backed_projects

    def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project # passing in an instance of the Project class as an argument and << it to the @backed_projects []
    project.backers << self # adds the backer(self) to the project's backers [] via the attr_accessor
  end

end

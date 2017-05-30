class Project

  attr_accessor :title, :backers

    def initialize(title= "Project With So Much Amaze")
      @title = title
      @backers = []
    end

    def add_backer(backer)
      @backers <<backer
      backer.back_project(self) unless backer.backed_projects.include?(self)
    end

end

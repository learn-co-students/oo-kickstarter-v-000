class Backer
	  attr_accessor :backed_projects, :title, :name

    def initialize(name)
      @name = name
      @backed_projects = []
    end

    def back_project(title)
      @backed_projects << title
      title.add_backer(self)
    end
end
class Backer
  attr_reader :name, :backed_projects
  @@all = []
  def initialize (name)
    @name = name
    @backed_projects = []
    @@all << @name
  end
  
  def back_project (project)
    @backed_projects << project
    project.add_backer(self)
  end
  
  def self.all
    @@all
  end
end
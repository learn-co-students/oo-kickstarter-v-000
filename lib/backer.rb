class Backer
  attr_accessor :backed_projects
  attr_reader :name, :project
  @@all=[]
  @backed_projects=[]

  def initialize(name)
    @name = name
    @@all << self
    @backed_projects = []
  end

  def save
    @@all << self
  end


  def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end

  def self.all
    @@all
  end
end

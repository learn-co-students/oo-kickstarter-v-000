class Backer

  attr_accessor :name, :backed_projects, :title

  @@all = []

  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end

  def back_project(project)
    @backed_projects << project
    self.title = Project.find_or_create_by_name(project)
    project.add_backer(self)
  end

  def just_back_project(project)
    @backed_projects << project 
  end

  def self.all
   @@all
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|back| back.name == name }
  end


  def self.create(name)
    self.new(name).tap {|back| @@all << back}
  end


end

class Backer

  attr_accessor :backed_projects, :name
  @@all = []
  @@project = ""
  @@proj = ""

  def initialize(name)
    @name = name
    @backed_projects = []
    save_all
  end

  def project_name
    @@proj = Project.find_or_create_by_name(@@project, self)
    @backed_projects << @@proj
  end

  def self.create_by_name(name)
    backer = self.new(name)
    @@all << backer
    backer
  end

  def self.find_by_name(name)
    backer = self.all.detect{|backer| backer.name == name}
  end

  def self.find_or_create_by_name(name, project)
    backer = self.find_by_name(name)
    if backer == nil
      backer = self.create_by_name(name)
    end
    backer.backed_projects << project
    backer
  end

  def save
    @@all << self
  end

  def back_project(project)
    @backed_projects << project
    Project.find_or_create_by_name(project.title, self)
  end

  def save_all
    @@all << self
  end

  def self.all
    @@all
  end

end

class Backer

  attr_accessor :backed_projects, :name

  @@all = []

  def initialize(name)
    @name = name
    @backed_projects = []
    Backer.all << self
  end

  def back_project(project)
    project.add_backer(self.name)
    project.backers << self
    @backed_projects << project

  end

  def self.all
    @@all
  end

  def self.find_or_add_by_name(backer)
    Backer.all.each {|x|
        if x == backer
          return x
        end
      }
    art = self.new(backer)
    Backer.all << art
    art
  end



end

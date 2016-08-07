class Project

  attr_accessor :backers, :title
  @@all = []
  @@back = ""
  @@backer = ""

  def initialize(title)
    @title = title
    @backers = []
    save_all
  end

  def backer_name
    @@back = Backer.find_or_create_by_name(@@backer, self)
    @backers << @@back
  end

  def self.create_by_name(name)
    project = self.new(name)
    @@all << project
    project
  end

  def self.find_by_name(title)
    project = self.all.detect{|project| project.title == title}
  end

  def self.find_or_create_by_name(name, backer)
    project = self.find_by_name(name)
    if project == nil
      project = self.create_by_name(name)
    end
    project.backers << backer
    project
  end

  def save
    @@all << self
  end

  def add_backer(backer)
    @backers << backer
    Backer.find_or_create_by_name(backer.name, self)
  end

  def save_all
    @@all << self
  end

  def self.all
    @@all
  end

end


class Project

  attr_accessor :title, :backers, :backer

  @@all = []

  def initialize(title)
    @backers = []
    @title = title
    @@all << self
  end

  def self.all
      @@all
  end

  def self.find_project(title)
    self.all.find {|item| item.title == title}
  	title
  end

  def add_backer(backer)
    if !backers.include?(backer)
    	backers << backer
      new_backer = Backer.find_backer(backer)
      new_backer.back_project(self)
      new_backer
    end
  end

end

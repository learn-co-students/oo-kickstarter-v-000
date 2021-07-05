class Project
  attr_accessor :backers, :title
  @@all = []

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self unless backer.backed_projects.include?(self)
    #self.backers = Backer.find_or_create(backer)
  end

#  def self.find_or_create(title)
#    if @@all.any?{|n| n.title = title}
#    else
#      new_title = self.new(title)
#      @@all << new_title
#    end
#  end

#  def self.all
#    @@all
#  end

#  def save
#    @@all << self
#  end

end

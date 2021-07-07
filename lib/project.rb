class Project
  attr_accessor :backers
  attr_reader :title, :backer
  @@all=[]
  @backers=[]

  def initialize(title)
    @title = title
    @@all << self
    @backers = []
  end

  def safe
    @@all << self
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end

end

class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers
  end

  def add_backer(backer_name)
    backer_name.backed_projects << self
    self.backers << backer_name unless self.backers.include?(backer_name) 
  end
end
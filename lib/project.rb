class Project
  attr_accessor :title, :backers

  def initialize(title)
    self.title = title
    self.backers = []
  end

  def add_backer(backer)
    self.backers << backer unless self.backers.include?(backer)
    backer.backed_projects << self
    self.backers
  end

end

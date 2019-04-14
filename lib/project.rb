class Project

  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    unless self.backers.include?(backer)
      self.backers << backer
      backer.back_project(self)
    end
  end

end

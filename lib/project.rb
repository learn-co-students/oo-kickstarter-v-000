class Project

  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    if backer.backed_projects.include?(self) == false
      backer.back_project(self)
    end
  end

  def self.find_by_name(title)
  end

end
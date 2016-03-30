class Project
  attr_accessor :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    unless backer.backed_projects.include? self
      backer.back_project(self)
      backer
    end
  end

  def backers
    @backers
  end
end
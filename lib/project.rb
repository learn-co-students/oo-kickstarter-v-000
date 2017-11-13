class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if(!backer.backed_projects.include?(self))
      backer.back_project(self)
    end
    @backers << backer
  end

end

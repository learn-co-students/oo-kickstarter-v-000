class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_class)
    @backers << backer_class
    if backer_class.backed_projects.include?(self) == false
      backer_class.back_project(self)
    end
  end

end

class Project
  attr_accessor :title, :backers

  @@projects = []

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    if !(backer.backed_projects.detect {|projects| projects == self})
      backer.back_project(self)
    end
  end

end

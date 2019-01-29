class Project
  attr_accessor :title
  @@backers = []

  def backers
    @@backers
  end

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    @@backers << backer
    if backer.backed_projects.none? { |projects| projects == self }
          backer.back_project(self)
        end
  end
end

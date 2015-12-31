class Project

  attr_accessor :backers

  def initialize(title)
    @backers = []
    @title = title
  end

  def title
    @title
  end

  def add_backer(name)
    @backers << name
    if name.backed_projects.index(self) == nil
      name.back_project(self)
    end
  end

  # def self.find_by_title
  #   self.all
  # end

  # def self.all
  #   Project.
  # end

end
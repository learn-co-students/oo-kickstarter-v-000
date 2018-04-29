class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    @backers << name
    if name.backed_projects.any? { |x| x.title == self.title }
      return
    else
      name.back_project(self)
    end
  end

end

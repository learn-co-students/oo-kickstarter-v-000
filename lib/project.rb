class Project
  attr_reader :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    backers << name
    name.backed_projects << self
    # if name.backed_projects.any? { |x| x.title == self.title }
    #   return
    # else
    #   name.back_project(self)
    # end
  end

end

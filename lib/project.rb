class Project

  attr_accessor :backed_projects, :backers
  attr_writer :back_project
  attr_reader :title

  def initialize(title)
    @title = title
    @backers =[]
  end

  def add_backer(name)
    @backers << name
    name.backed_projects << self
  end

end

class Project

  def initialize(name)
    @title = name
    @project_backers = []
  end

  attr_reader :title

  def add_backer(backer_object)
    @project_backers << backer_object
    backer_object.backed_projects << self
  end

  def backers
    @project_backers
  end

end

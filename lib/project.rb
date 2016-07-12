class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(project_title)
    @title = project_title
    @backers = []
  end

  def add_backer(backer_name)
    self.backers << backer_name
    backer_name.backed_projects << self
  end

end

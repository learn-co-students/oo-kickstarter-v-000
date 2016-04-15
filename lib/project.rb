
class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(proj)
    tmp_instance = self
    @backers << proj
    proj.backed_projects << tmp_instance
  end
end
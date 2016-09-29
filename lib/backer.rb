class Backer
  # attr_accessor :backed_projects
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(pj_instance)
    backed_projects << pj_instance
    # self.backed_projects << pj_instance
    pj_instance.backers << self
  end
end

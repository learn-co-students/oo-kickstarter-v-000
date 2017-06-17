class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_title)
# spencer = Backer.new("Spencer")
# magic = Project.new("Magic The Gathering Thing")
# spencer.back_project(magic)
# expect(spencer.backed_projects).to include(magic)
    @backed_projects << project_title
# expect(magic.backers).to include(spencer)
    project_title.backers << self
  end
end

class Backer
  attr_reader :name
  attr_accessor :backed_projects, :backer, :project


  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    @backed_projects << title
    title.backer = self
    title.backers << self
  end

end

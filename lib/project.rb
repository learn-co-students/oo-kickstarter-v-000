class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  #///CLASS METHODS ///#

  #///INSTANCE METHODS ///#
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) if backer.backed_projects.all? {|test| test != self}
  end
end
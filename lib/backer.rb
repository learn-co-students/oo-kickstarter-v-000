class Backer
  attr_reader :name
  attr_accessor :backed_projects, :backer


  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    @backed_projects << title
    
  end

end

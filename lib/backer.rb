class Backer
# NEW =[]
attr_accessor :title, :name, :project
attr_reader :backed_projects

  def initialize(name)
    @name = name
    @title = title
    @backed_projects =[]

    # NEW << title
  end

  def back_project(title)
    @backed_projects << title
  end



end

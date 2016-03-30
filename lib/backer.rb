require 'pry'
class Backer

  attr_accessor :backed_projects

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def name
    @name
  end

  def back_project(title)
    @backed_projects << title
    if title.backers.index(self) == nil
       title.add_backer(self)
    end
  end

end
class Backer
  attr_accessor :name, :backed_projects
  def initialize(n) @name=n; @backed_projects=[] end
  def back_project(p) @backed_projects<<p; p.backers<<self end
end

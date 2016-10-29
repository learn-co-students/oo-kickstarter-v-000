class Project
  attr_accessor :title, :backers
  def initialize(n) @title=n; @backers=[] end
  def add_backer(p) @backers<<p; p.backed_projects<<self end
end

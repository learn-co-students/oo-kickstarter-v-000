class Backer

  attr_accessor :name, :backed_projects
  BACKED = []

  def initialize(name)
   @name = name
   @backed_projects = []
  end

  def back_project(magic)
   self.backed_projects  << magic
      magic.backers  << self
  end

end

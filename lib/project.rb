class Project
  attr_accessor :backer, :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(person)
    backers << person
    person.back_project(self)
  end

end

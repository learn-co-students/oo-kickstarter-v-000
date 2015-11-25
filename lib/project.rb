class Project

  attr_reader :title, :backers


  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(person)
    self.backers << person
    person.backed_projects << self
  end
end
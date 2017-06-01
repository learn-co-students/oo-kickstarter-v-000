class Project

  attr_accessor :title, :backers, :back

  @@all = []

  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end

  def add_backer(backer)
    @backers << backer
    self.back = Backer.find_or_create_by_name(backer)
    backer.just_back_project(self)
  end

   def self.all
    @@all
   end

   def self.find_or_create_by_name(title)
     self.find(title) ? self.find(title) : self.create(title)
   end

   def self.find(title)
     self.all.find {|proj| proj.title == title }
   end


   def self.create(name)
     self.new(name).tap {|proj| @@all << proj}
   end

end

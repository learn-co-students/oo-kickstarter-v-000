class Project
   attr_accessor :title, :backers
   def initialize(title)
      @title = title
      @backers = []
   end

   def add_backer(backer)
      self.backers << backer
      self.backers[0].backed_projects << self
   end

end
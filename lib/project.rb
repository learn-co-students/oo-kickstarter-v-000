class Project

    attr_accessor :title, :backers, :projects, :backer, :project, :add_backer

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
       # self.backer = Backer.new(backer).project

      @backers << backer
      backer.backed_projects << self
    end


    def backers
        @backers
    end

end

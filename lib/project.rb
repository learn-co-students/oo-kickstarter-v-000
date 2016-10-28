class Project
    attr_accessor :title, :backers

    def initialize(title)
        @title= title
        @backers = []
    end

    def add_backer(backer)
        if !self.backers.include?(backer)
            self.backers << backer
            backer.back_project(self)
        end
    end
end

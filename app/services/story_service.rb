class StoryService
  def initialize(args)
    @hero = args[:hero]
    @sidekick = args[:sidekick]
    @victim = args[:victim]
    @villain = args[:villain]
    @location = args[:location]
    @starship = args[:starship]
    @vehicle = args[:vehicle]
    @plot = args[:plot]
  end

  def call
    generate_story()
  end

  private
    def generate_story
      story = case @plot
        when "Overcoming the Monster" then overcoming_the_monster()
        when "Rags to Riches" then rags_to_riches()
        when "The Quest" then the_quest()
        when "Voyage and Return" then voyage_and_return()
        when "Comedy" then comedy()
        when "Tragedy" then tragedy()
        when "Rebirth" then rebirth()
        end
    end

    def overcoming_the_monster
      "Little #{@hero} when for a walk with #{@sidekick} to get some gelato.
      When they arrived at their local gelato digs they found little #{@victim}
      crying because #{@villain} had taken his favourite scoop.
      When #{@villain} realized he had been caught red handed he made a
      stealth getaway to #{@location}. #{@hero} and #{@sidekick} launched a hot
      pursuit in their #{@starship} and caught up with #{@villain} before he
      made it to his #{@vehicle}. They dragged him all the way back to
      #{@victim} where he made nice by buying everyone a round of gourmet snacks."
    end

    def rags_to_riches
      "#{@hero} #{@sidekick} #{@victim} #{@location} #{@vehicle} #{@starship}"
    end

    def the_quest
      "#{@hero} #{@sidekick} #{@victim} #{@location} #{@vehicle} #{@starship}"
    end

    def voyage_and_return
      "#{@hero} #{@sidekick} #{@victim} #{@location} #{@vehicle} #{@starship}"
    end

    def comedy
      "#{@hero} #{@sidekick} #{@victim} #{@location} #{@vehicle} #{@starship}"
    end

    def tragedy
      "#{@hero} #{@sidekick} #{@victim} #{@location} #{@vehicle} #{@starship}"
    end

    def rebirth
      "#{@hero} #{@sidekick} #{@victim} #{@location} #{@vehicle} #{@starship}"
    end
end

module PlanetArgon
  module YearAfterYear
    # Renders the current year.
    #  Example: 2008
    def current_year
      Time.now.year
    end

    def current_year_range( start_year = current_year, separator = '-' )
      [start_year, current_year].sort.uniq.join(separator)
    end
    
    alias :year_range :current_year_range
  end
end

module PlanetArgon
  module YearAfterYear
    # Renders the current year.
    #  Example: 2008
    def current_year
      Time.now.year
    end

    def year_range( start_year = current_year, separator = '-' )
      [start_year, current_year].sort.uniq.join(separator)
    end
  end
end

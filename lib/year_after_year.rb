module PlanetArgon
  module YearAfterYear
    # Renders the current year.
    #  Example: 2008
    def current_year
      Time.now.strftime('%Y')
    end
    
    def year_range(start_year)
      if start_year.to_s == current_year
        current_year
      else
        start_year.to_s + '-' + current_year
      end
    end
  end
end

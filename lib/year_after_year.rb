module PlanetArgon
  module YearAfterYear
    # Renders the current year.
    #  Example: 2008
    def current_year
      Time.now.strftime('%Y')
    end
  end
end

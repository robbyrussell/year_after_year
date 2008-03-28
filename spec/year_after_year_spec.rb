require 'lib/year_after_year'

describe PlanetArgon::YearAfterYear, 'current_year' do
  before(:each) do
    t = mock('Time')
    Time.stub!(:now).and_return( Time.parse( 'Sun Jan 27 15:31:39 -0800 2006' ) )
  end

  it 'should return the current year example: 2006' do
    current_year.should == 2006
  end

  it 'should become a string when substituted in a string' do
    "This is #{current_year}".should == 'This is 2006'
  end
end

describe PlanetArgon::YearAfterYear, 'year_range()' do
  before(:each) do
    t = mock('Time')
    Time.stub!(:now).and_return( Time.parse( 'Sun Jan 27 15:31:39 -0800 2006' ) )
  end

  it 'should return a range of years when provided a start year' do
    year_range(2004).should == '2004-2006'
  end

  it 'should return only the current year if the start year is the same' do
    year_range(2006).should == '2006'
  end
end

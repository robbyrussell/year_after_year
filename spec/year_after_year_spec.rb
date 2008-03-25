require 'lib/year_after_year'

describe PlanetArgon::YearAfterYear, 'current_year' do
  before(:each) do
    t = mock('Time')
    Time.stub!(:now).and_return( Time.parse( 'Sun Jan 27 15:31:39 -0800 2006' ) ) 
  end
  
  it 'should return the current year example: 2006' do
    current_year.should == '2006'
  end
end

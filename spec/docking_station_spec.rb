require './lib/docking_station'
describe 'docking_station' do
  f = DockingStation.new
  it 'respond to release bike' do
    expect(f).to respond_to(:release_bike)
  end
end

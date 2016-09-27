require 'docking_station'

decscribe 'docking_station' do
  it 'describes if ready to accept bike' do
    expect(docking_station(true)).to eq "ready to accept bike"
  end

  it 'describes if ready to release bike' do
    expect(docking_station(false)).to eq "ready release bike"
  end
end

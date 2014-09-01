require 'spec_helper'

describe StatiscsController do
  before :each do
    @stats = Statisc.new(label: "ilanguel", sequence: "10 -1 5", author: "ronnie Paskin")
  end

  it 'Verificar atributos' do
    expect(@stats.label).to eq("ilanguel")
    expect(@stats.sequence).to eq("10 -1 5")
    expect(@stats.author).to eq("ronnie Paskin")
  end

  it 'destruir registro' do
    @stats.destroy
    expect(Statisc.find_by(label: "ilanguel")).to eq (nil)
  end

  it 'Max precisa ser o máximo' do
    expect(@stats.max).to eq(10)
  end

  it 'Min precisa ser o mínimo' do
    expect(@stats.min).to eq(-1)
  end

  it 'Sum precisa ser a soma' do
    expect(@stats.sum).to eq(14)
  end

  it 'Avg precisa ser a média' do
    expect(@stats.avg).to eq(4)
  end

  it 'lastName precisa ser o sobrenome' do
    expect(@stats.lastName).to eq("Paskin")
  end

end
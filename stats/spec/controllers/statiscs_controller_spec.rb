require 'spec_helper'

describe StatiscsController do
  before :each do
    @stats = Statisc.new(label: "ilanguel", sequence: "10,-1,5", author: "ronnie")
  end

  it 'Verificar atributos' do
    expect(@stats.label).to eq("ilanguel")
  end
end
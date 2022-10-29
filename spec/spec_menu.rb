require 'menu'

RSpec.describe Order do
  it 'shows the customer the menu and prompts for an order' do
    io = double :io
    expect(io).to receive(:puts).with(["Fish and chips £10", "Pho £12", "Burger £11", "Soda £3", "Panini £7", "Tagine £14"])
    expect(io).to receive(:puts).with("Please make your choice")
    expect(io).to receive(:gets).and_return("Fish and chips")
    expect(io).to receive(:puts).with("Please make your choice")
    expect(io).to receive(:gets).and_return("done")
    menu = Order.new(io)
    menu.selection
  end

  it 'gives a total of the items selected' do
    io = double :io
    expect(io).to receive(:puts).with(["Fish and chips £10", "Pho £12", "Burger £11", "Soda £3", "Panini £7", "Tagine £14"])
    expect(io).to receive(:puts).with("Please make your choice")
    expect(io).to receive(:gets).and_return("Fish and chips")
    expect(io).to receive(:puts).with("Please make your choice")
    expect(io).to receive(:gets).and_return("Pho")
    expect(io).to receive(:puts).with("Please make your choice")
    expect(io).to receive(:gets).and_return("done")
    menu = Order.new(io)
    result = menu.selection

    expect(result).to eq 22

  end  
 
end
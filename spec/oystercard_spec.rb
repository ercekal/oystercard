require 'oystercard'

describe Oystercard do

  describe '#initialize' do
    it 'should set a card to a default balance of 0' do
      expect(subject.balance).to eq 0
    end

    it 'should allow user to set a custom balance' do
      loaded_card = Oystercard.new(50)
      expect(loaded_card.balance).to eq 50
    end
  end

    describe '#top_up' do
      it 'should change the balance as the top up amount' do
      expect{subject.top_up(50)}.to change{ subject.balance }.by 50
    end
  end
end

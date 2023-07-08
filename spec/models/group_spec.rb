require 'rails_helper'

RSpec.describe Group, type: :model do
  subject { Group.new(name: 'Food', icon: 'food.png') }

  before { subject.save }

  it 'name should be present' do
    expect(subject.name).to eq('Food')
  end

  it 'icon shold be present' do
    expect(subject.icon).to eq('food.png')
  end
end

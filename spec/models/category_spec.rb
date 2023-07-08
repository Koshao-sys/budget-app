require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { Category.new(name: 'Beans', amount: 10) }

  before { subject.save }

  it 'name should be present' do
    expect(subject.name).to eq('Beans')
  end

  it 'amound should be present' do
    expect(subject.amount).to eq(10)
  end
end
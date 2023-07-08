require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'kosh', email: 'kkoshao99@gmail.com') }

  before { subject.save }

  it 'name should be present' do
    expect(subject.name).to eq('kosh')
  end

  it 'email should be present' do
    expect(subject.email).to eq('kkoshao99@gmail.com')
  end
end
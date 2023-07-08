require 'rails_helper'

RSpec.describe Category, type: :system do
  include Devise::Test::IntegrationHelpers
  user = User.create!(name: 'john', email: "john#{Random.rand(1...1000)}@example.com", password: 'password')
  group = Group.create!(user_id: user.id, name: 'test', icon: 'burger.png')
  subject do
    Category.new(user_id: user.id, name: 'test', amount: 20)
  end
  before do
    login_as(user, scope: :user)
    subject.save
  end
  describe 'Categories' do
    it "Shows category name" do
      visit category_group_index_path(group.id)
      page.has_content?(subject.name)
    end

    it "Shows Category amount" do
      visit category_group_index_path(group.id)
      page.has_content?(subject.amount)
    end

    it 'Redirects to Transaction page when add new is clicked' do
      visit category_group_index_path(group.id)
      click_on 'Add New Transaction'
      visit new_category_group_path(group.id)
      page.has_content?('Add Transaction')
    end
  end
end
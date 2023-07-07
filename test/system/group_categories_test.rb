require 'application_system_test_case'

class GroupCategoriesTest < ApplicationSystemTestCase
  setup do
    @group_category = group_categories(:one)
  end

  test 'visiting the index' do
    visit group_categories_url
    assert_selector 'h1', text: 'Group categories'
  end

  test 'should create group category' do
    visit group_categories_url
    click_on 'New group category'

    fill_in 'Category', with: @group_category.category_id
    fill_in 'Group', with: @group_category.group_id
    click_on 'Create Group category'

    assert_text 'Group category was successfully created'
    click_on 'Back'
  end

  test 'should update Group category' do
    visit group_category_url(@group_category)
    click_on 'Edit this group category', match: :first

    fill_in 'Category', with: @group_category.category_id
    fill_in 'Group', with: @group_category.group_id
    click_on 'Update Group category'

    assert_text 'Group category was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Group category' do
    visit group_category_url(@group_category)
    click_on 'Destroy this group category', match: :first

    assert_text 'Group category was successfully destroyed'
  end
end

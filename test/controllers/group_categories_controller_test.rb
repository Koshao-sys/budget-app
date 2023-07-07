require 'test_helper'

class GroupCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_category = group_categories(:one)
  end

  test 'should get index' do
    get group_categories_url
    assert_response :success
  end

  test 'should get new' do
    get new_group_category_url
    assert_response :success
  end

  test 'should create group_category' do
    assert_difference('GroupCategory.count') do
      post group_categories_url,
           params: { group_category: { category_id: @group_category.category_id, group_id: @group_category.group_id } }
    end

    assert_redirected_to group_category_url(GroupCategory.last)
  end

  test 'should show group_category' do
    get group_category_url(@group_category)
    assert_response :success
  end

  test 'should get edit' do
    get edit_group_category_url(@group_category)
    assert_response :success
  end

  test 'should update group_category' do
    patch group_category_url(@group_category),
          params: { group_category: { category_id: @group_category.category_id, group_id: @group_category.group_id } }
    assert_redirected_to group_category_url(@group_category)
  end

  test 'should destroy group_category' do
    assert_difference('GroupCategory.count', -1) do
      delete group_category_url(@group_category)
    end

    assert_redirected_to group_categories_url
  end
end

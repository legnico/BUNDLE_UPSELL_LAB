require 'test_helper'

class GraphicSettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get graphicsettings_new_url
    assert_response :success
  end

end

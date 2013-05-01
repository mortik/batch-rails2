require 'test_helper'
require 'sprockets'

class SettingsTest < ActiveSupport::TestCase

  def setup
    BatchRails2.prefix = "default-"
    @env = Sprockets::Environment.new(".")
    @env.append_path(FIXTURE_ROOT)
  end

  test 'uses default settings in css files' do
    assert_equal "[class*=\"default-\"] {\n  display: inline; }\n", @env["settings.scss"].to_s
  end

  test 'uses custom settings in css files' do
    BatchRails2.prefix = "custom-"
    assert_equal "[class*=\"custom-\"] {\n  display: inline; }\n", @env["settings.scss"].to_s
  end
end
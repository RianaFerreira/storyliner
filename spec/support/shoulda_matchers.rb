Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
    # :rails option implies the use of:
    # :active_record
    # :active_model
    # :action_controller
  end
end

require "rails_helper"

RSpec.describe Storyline, type: :model do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :hero }
  it { is_expected.to validate_presence_of :plot }
  it { is_expected.to validate_presence_of :location }
end

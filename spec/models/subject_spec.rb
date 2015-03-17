require 'rails_helper'

describe Subject do
  it { should validate_presence_of :title }
  it { should belong_to :unit }
  it { should have_many :lessons }
end

require 'rails_helper'

describe Unit do
  it { should validate_presence_of :title }
  it { should have_many :subjects}
end

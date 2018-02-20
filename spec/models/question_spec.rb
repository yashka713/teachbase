require 'rails_helper'

RSpec.describe Question, type: :model do
  it {should validate_presence_of :title}
  it {should validate_presence_of :body}
  it {should validate_length_of(:body).is_at_least(10)}
  it { should define_enum_for(:question_type) }
  it { should have_many(:answers).dependent(:destroy) }
end

# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end 
end

#
#RSpec.describe Book, type: :model do
#  subject do
#    described_class.new(author: 'j k. rowling')
#  end
#
#  it 'is valid with valid attributes' do
#    expect(subject).to be_valid
#  end
#
#  it 'is not valid without an author' do
#    subject.author = nil
#    expect(subject).not_to be_valid
#  end
#end
#
#RSpec.describe Book, type: :model do
#  subject do
#    described_class.new(price: '10')
#  end
#
#  it 'is valid with valid attributes' do
#    expect(subject).to be_valid
#  end
#
#  it 'is not valid without a price' do
#    subject.price = nil
#    expect(subject).not_to be_valid
#  end
#end
#
#RSpec.describe Book, type: :model do
#  subject do
#    described_class.new(publishedDate: '1/1/2000')
#  end
#
#  it 'is valid with valid attributes' do
#    expect(subject).to be_valid
#  end
#
#  it 'is not valid without a publishedDate' do
#    subject.publishedDate = nil
#    expect(subject).not_to be_valid
#  end
#end

require 'rails_helper'

RSpec.describe Post, type: :model do
   let(:name) { RandomData.random_sentence }
   let(:description) { RandomData.random_paragraph }
   let(:title) { RandomData.random_sentence }
   let(:body) { RandomData.random_paragraph }
 # #3
   let(:topic) { Topic.create!(name: name, description: description) }
 # #4
   let(:post) { topic.posts.create!(title: title, body: body) }
 
   it { is_expected.to belong_to(:topic) }
 
 # #2
   describe "attributes" do
     it "has title and body attributes" do
       expect(post).to have_attributes(title: title, body: body)
     end
   end
end
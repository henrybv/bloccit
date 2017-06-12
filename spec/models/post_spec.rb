require 'rails_helper'

RSpec.describe Post, type: :model do
   let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }
 
 # #2
   describe "attributes" do
     it "has title and body attributes" do
       expect(post).to have_attributes(title: "New Post Title", body: "New Post Body")
     end
   end
end

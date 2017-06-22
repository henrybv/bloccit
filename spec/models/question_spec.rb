require 'rails_helper'

RSpec.describe Question, type: :model do
 context "attributes" do
   let(:question) { Question.new(title: "New Question Title", body: "New Question Body", resolved: false) }

   it "should respond to title" do
     expect(question).to respond_to(:title)
   end

   it "should respond to copy" do
     expect(question).to respond_to(:copy)
   end

   it "should respond to price" do
     expect(question).to respond_to(:title)
   end
 end
end

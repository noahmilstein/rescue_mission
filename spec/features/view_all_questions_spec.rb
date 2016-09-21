require 'spec_helper'
require 'rails_helper'

feature "Viewing questions" do
  let!(:populate_questions) do
    @question1 = FactoryGirl.create(:question, title: "Bananas"*20)
    @question2 = FactoryGirl.create(:question, title: "Waffles"*20)
    @question3 = FactoryGirl.create(:question, title: "Pancakes"*20)
  end

  let!(:populate_qs) { FactoryGirl.create_list(:question, 5) }

  context "As a user" do
    context "visit home page/questions page" do

      scenario "View index of all question titles" do
        visit '/'

        populate_qs.each do |q|
          expect(page).to have_content(q.title)
        end
      end

      xscenario "View index of all questions ordered by most recent creation time" do
        visit '/'
        # question_class = page.all(:css, ".question")

        # question_class.each_with_index do |question, index|
        #   expect(question.created_at).to
        # end
      end

    end
  end
end

# let!(:populate_db) do
#   @user1 = FactoryGirl.create_list(:user, 3)
#   @project1 = FactoryGirl.create(:project)
#   @user1.each do |test_user|
#     UsersProject.create!(user: test_user, project: @project1)
#   end
#   @task = Task.create!(name: "do something", description: "do specific somethings", due_date: 30, user_id: @user1, project_id: @project1.id)
# end

# let(:test_user) do
#   FactoryGirl.create(:user, username: "Some Guy")
# end
# let!(:populate_meetups) do
#   @meetup3 = FactoryGirl.create(:meetup, name: "Charlie", user: test_user)
#   @meetup1 = FactoryGirl.create(:meetup, name: "Alpha", user: test_user)
#   @meetup2 = FactoryGirl.create(:meetup, name: "Bravo", user: test_user)
# end

# require 'rails_helper'
#
# feature "Viewing Meetups" do
#   let!(:first_meetup) { create :meetup, name: "AAA"}
#   let!(:first_meetup) { create :meetup, name: "ABA"}
#   let!(:first_meetup) { create :meetup, name: "ACA"}
#   let!(:meetups) { Meetup.all }
#   context "As a User" do
#     context "I can visit the meetups page" do
#       before { visit meetups_path }
#
#       scenario "And see the name for each meetup" do
#         meetups.each do |m|
#           expct(page).to have_content m.name
#       end
#
#       scenario "and see an alphabetized list of meetups" do
#
#         pending
#       end
#     end
#   end
# end
# #rspec --format doc

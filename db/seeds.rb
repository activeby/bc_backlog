# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.create(:uid => 1, :project => nil, :message => '-- 1-Must Have --', :stakeholder => nil, :time => nil, :position => 1)
Task.create(:uid => 2, :project => nil, :message => '-- 2-Should Have --', :stakeholder => nil, :time => nil, :position => 3)
Task.create(:uid => 3, :project => nil, :message => '-- 3-Nice to Have --', :stakeholder => nil, :time => nil, :position => 4)
Task.create(:uid => 4, :project => nil, :message => '-- 4-Don\'t Need Now --', :stakeholder => nil, :time => nil, :position => 6)
Task.create(:uid => 5, :project => nil, :message => '-- Not Prioritized --', :stakeholder => nil, :time => nil, :position => 7)

Task.create(:uid => 100001, :project => 'Project', :message => 'Message 1 of project', :stakeholder => 'Ivan', :time => 100, :position => 2)
Task.create(:uid => 100002, :project => 'Project', :message => 'Message 2 of project', :stakeholder => 'Ivan', :time => 150, :position => 5)
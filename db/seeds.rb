# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
demo = User.create!(username: "Demo", email: "demo@demo.com", password: "demo", password_confirmation: "demo")
demo.persistence_token = User.generate_token
demo.save!

city1 = CityCreator.new(demo)
city1.create!
city2 = CityCreator.new(demo)
city2.create!
city3 = CityCreator.new(demo)
city3.create!


article = Article.create!(title: "This is the first article title", content: "And here the first content. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ipsum velit, dapibus quis blandit in, consequat ut mauris. Aliquam rhoncus purus a nibh hendrerit fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed libero ante, vestibulum vulputate ornare et, mollis ut mauris. Donec lorem odio, consectetur nec dapibus quis, elementum eget neque. Cras ante nibh, imperdiet vitae fermentum nec, tristique sed eros. Nullam id elit dui, eu consectetur nulla. Donec sed augue et libero volutpat posuere. Ut tortor ligula, porta sed volutpat sed, luctus a massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

Sed et consectetur tortor. Sed tristique gravida tristique. Cras sed purus libero, at sodales magna. Integer quis massa blandit dui tristique congue. Nullam justo ante, molestie vel consectetur at, adipiscing quis augue. Vestibulum condimentum mattis tortor eu suscipit. Nam ut nisi eget felis pulvinar ultricies.

Vestibulum ante lectus, tincidunt non consequat nec, aliquam ac libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tincidunt, sem quis fringilla placerat, nibh nibh feugiat ipsum, non faucibus tortor elit hendrerit neque. Aliquam lectus nunc, pharetra non convallis nec, commodo eget augue. Sed et velit elit, vitae rutrum est. Quisque egestas dignissim luctus. Nulla magna purus, laoreet nec lobortis in, rutrum id mauris. Cras porta mauris ante. Sed at elit nisi. Sed gravida, justo et ullamcorper iaculis, velit justo tincidunt augue, fringilla faucibus diam ante quis sapien. Nulla luctus, est at cursus bibendum, urna mauris semper dolor, eu tristique felis leo vitae leo. Morbi tortor ipsum, iaculis in tincidunt sit amet, condimentum ut quam. Nunc dapibus mattis quam at fermentum.")
article.user = demo
article.save!


BuildingType.create([ {name: "Hut", description: "A small hut mades of raw materials found here and there...", width: 1, height: 1},
                      {name: "Big hut", description: "A solid hut, but still a hut...", width: 2, height: 2},
                      {name: "Clay pit", description: "bla bla bla...", width: 3, height: 3},
                      {name: "Farm", description: "bla bla bla...", width: 4, height: 5}
                      ])

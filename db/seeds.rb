# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Table User
User.create(:name => "Date-shi",:password => "kakuseihorusu")
User.create(:name => "kota",:password => "roki")

#Table Coffee_Bean
CoffeeBean.create(:name => "ブラジル",:sourness => 2,:body => 3,:bitterness => 3)
CoffeeBean.create(:name => "コロンビア",:sourness => 4,:body => 3,:bitterness => 1)
CoffeeBean.create(:name => "グアテマラ",:sourness => 4,:body => 2.5,:bitterness => 1)
CoffeeBean.create(:name => "マンデリン",:sourness => 1,:body => 4,:bitterness => 4)
CoffeeBean.create(:name => "ハワイコナ",:sourness => 3.5,:body => 3,:bitterness => 3.5)
CoffeeBean.create(:name => "ブルーマウンテンNo.1",:sourness => 2.5,:body => 2.5,:bitterness => 2.5)
CoffeeBean.create(:name => "ケニア・AA",:sourness => 3.5,:body => 2.5,:bitterness => 2)
CoffeeBean.create(:name => "ブルックストラジャ",:sourness => 4,:body => 4,:bitterness => 4)
CoffeeBean.create(:name => "キリマンジャロ",:sourness => 3.5,:body => 3,:bitterness => 1)
CoffeeBean.create(:name => "マイルドエスプレッソ",:sourness => 1,:body => 4,:bitterness => 4)
CoffeeBean.create(:name => "コスタリカ",:sourness => 3.5,:body => 2.5,:bitterness => 1)
CoffeeBean.create(:name => "モカ",:sourness => 3,:body => 2,:bitterness => 3)

class Flavor < ActiveRecord::Base

  def self.calc_brend(flavor)
    candidate_beans = compare_beans(flavor)
    brend = candidate_beans
    brend.min {|bean1, bean2| bean1[1] <=> bean2[1]}
    #brend
    #candidate_beans
  end

  def self.compare_beans(users_flavor)
    @users_flavor = users_flavor
    beans_l1_dist = Hash.new
    @coffeebeans = CoffeeBean.all
    @coffeebeans.each do |coffeebean|
      key = coffeebean.name
      value = calc_L1_dist(@users_flavor, coffeebean)
      beans_l1_dist.store(key, value)
    end
    beans_l1_dist
  end

  def self.calc_L1_dist(users_flavor, beans_flavor)
    l1_dist = (users_flavor.sourness.to_i - beans_flavor.sourness.to_i).abs+(users_flavor.body.to_i - beans_flavor.body.to_i).abs+(users_flavor.bitterness.to_i - beans_flavor.bitterness.to_i).abs
    l1_dist
  end

end

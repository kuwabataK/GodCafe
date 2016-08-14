class Flavor < ActiveRecord::Base

  def self.calc_brend(flavor)
    candidate_beans = compare_beans(flavor)
    brend = candidate_beans
    idial_beans_val = brend.sort {|bean1, bean2| bean1[1] <=> bean2[1]}[0][1]

    opt_beans = extract_opt_beans(brend, idial_beans_val)
    ans = gen_graph_data(opt_beans)
    #brend.index(idial_beans_val
    #candidate_beans
  end

  def self.compare_beans(users_flavor)
    @users_flavor = users_flavor
    beans_l1_dist = Hash.new
    @coffeebeans = CoffeeBean.all
    @coffeebeans.each do |coffeebean1|
      @coffeebeans.each do |coffeebean2|
        @coffeebeans.each do |coffeebean3|
          @coffeebeans.each do |coffeebean4|
            key = "#{coffeebean1.name} #{coffeebean2.name} #{coffeebean3.name} #{coffeebean4.name}"
            brend_beans = [coffeebean1,coffeebean2,coffeebean3,coffeebean4]
            value = calc_L1_dist(@users_flavor,coffeebean1,coffeebean2,coffeebean3,coffeebean4)
            beans_l1_dist.store(key, value)
          end
        end
      end
    end
    beans_l1_dist
  end

  def self.calc_L1_dist(users_flavor, *beans_flavor)
    l1_dist = 0
    brend_sourness = 0
    brend_body = 0
    brend_bitterness = 0
    beans_flavor.each do |beans|
     brend_sourness = brend_sourness + (beans.sourness * 0.25)
     brend_body = brend_body + (brend_body * 0.25)
     brend_bitterness = brend_bitterness + (brend_bitterness * 0.25)
    end
   l1_dist = (brend_sourness - users_flavor.sourness).abs + (brend_body - users_flavor.body).abs + (brend_bitterness - users_flavor.bitterness).abs
   l1_dist
  end

  def self.extract_opt_beans(beans, idial_beans_val)
    opt_beans = Hash.new
    beans.each do |key,value|
      if value == idial_beans_val
        opt_beans.store(key,value)
      end
    end
    opt_beans
  end

  def self.gen_graph_data(opt_beans)
    bean_histgram = Hash.new
    bean_names = Array.new
    opt_beans.each do |key,value|
      bean_names = key.split
    end
    bean_names.each do |bean_name|
      bean_histgram[bean_name] = bean_histgram[bean_name].to_i  + 1
    end

    bean_histgram.each do |key, value|
      bean_histgram[key] = value * 25
  end

  bean_histgram
end
end

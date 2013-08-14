class Login < ActiveRecord::Base
  attr_accessor :reemail
  attr_accessor :repassword

  #only presence all
  def self.presence?(instance,params)    
    @instance = instance
    @params = params
    @params.each{|key, value|
      if value.length == 0
        #puts "key = #{key} and v= #{value}"
        @instance.errors.add(key.parameterize.underscore.to_sym,'Please enter all methods')           
      end
    }
    compareTo?
   # binding.pry
  end
  def self.compareTo?
    if @params['email'] != @params['reemail']
      @instance.errors.add('email','Email not match with reemail')           
    end
    if @params['password'] != @params['repassword']
      @instance.errors.add('password','Password not match with reepasswors')
    end
    @instance

  end
end

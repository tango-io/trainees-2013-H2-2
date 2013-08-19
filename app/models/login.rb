class Login < ActiveRecord::Base
  attr_accessor :reemail
  attr_accessor :repassword
  #only presence all
  def self.validate?(instance,params)    
    @array_params = []
    @instance = instance
    @params = params
    @params.each{|key, value|
      if value.length == 0
        #puts "key = #{key} and v= #{value}"
        @instance.errors.add(key.parameterize.underscore.to_sym,'Please enter all methods')           
      else
        @array_params << key
      end
    }
    compareTo?
  end
  def self.compareTo?
    if @array_params.include?('email') and @array_params.include?('reemail') and @params['email'] != @params['reemail']
      @instance.errors.add('email','Email not match with reemail')
    else
       verify_email(@params['email'])       
    end
    if @array_params.include?('password') and @array_params.include?('repassword') and @params['password'] != @params['repassword']
      @instance.errors.add('password','Password not match with reepasswors')
    else
      verify_password(@params['password'])
    end    
    if @instance.errors.messages.empty?
      @instance = Login.new(@params)
      @instance.save
    end
  end
  def self.verify_email(email)    
    unless email =~ /^[a-z]+(\w?[a-z]+|\.?[a-z]+)@[a-z]+.com/
      @instance.errors.add('email','format email is incorrect')      
    end    
  end
  def self.verify_password(password)
    unless password =~ /^[a-zA-Z]\w{7,15}/
      @instance.errors.add('password','Formar Incorrect min 7 length')
    end
  end
end

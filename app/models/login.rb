class Login < ActiveRecord::Base
  attr_accessor :reemail
  attr_accessor :repassword

  #only presence all
  def self.presence?(inst,params)
   # @login = Login.new
    params.each do |key|
      key.each do |k,v|
        if v.to_s.length == 0
          inst.errors.add(:fullname,'watffkfjf')
          inst
          #Login.errors.add(:fullname,'wtf')
        end
      end
    end
  end
end

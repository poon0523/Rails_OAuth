class Users::RegistrationsController < Devise::RegistrationsController  # 1
    def build_resource(hash={})  # 2
      hash[:uid] = User.create_unique_string  # 3
      super  # 4
    end
  end
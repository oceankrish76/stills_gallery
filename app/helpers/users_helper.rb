module UsersHelper
    #def full_name
    #    @user.first_name + " " + @user.last_name
    #end
    def email
        @user.email
    end
    def username
        @user.username
    end
end

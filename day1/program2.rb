def check_password(email, password)
    @email = email
    @password = password

    if @email == @password
        puts "You can't use same password as email"
    elsif my_rule1(@email, @password)
    end
end

def my_rule1(email, password)
    @email1 = email.split("")
    @password1 = password.split("")
    @size =  @email1.length * 0.4
    # puts @size
    if @email1[0..@size].join("") == @password1[0..@size].join("")
        puts "You can't use 40% of email"
    else
        puts "Yes, you can use it"
    end
end

check_password("indrajit09@gmail.com", "indrajit0")
require 'securerandom'

puts('Secure Passwords Generator using ruby ')
puts <<-'EOF'

========================================================================
        ___                        ___                              _    
       / __| ___ __ _  _ _ _ ___  | _ \__ _ _______ __ _____ _ _ __| |___
       \__ \/ -_) _| || | '_/ -_) |  _/ _` (_-<_-< V  V / _ \ '_/ _` (_-<
       |___/\___\__|\_,_|_| \___| |_| \__,_/__/__/\_/\_/\___/_| \__,_/__/
                                                                         
                      ___                       _           
                     / __|___ _ _  ___ _ _ __ _| |_ ___ _ _ 
                    | (_ / -_) ' \/ -_) '_/ _` |  _/ _ \ '_|
                     \___\___|_||_\___|_| \__,_|\__\___/_|  
                                                                  
 
                                           Ruby SPG BY @thelastvvv
========================================================================
EOF


puts('Generate a random secure passwords :')

chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@£$%^&*().,?0123456789'


print 'Your password length?'
length = gets.chomp
length = length.to_i
print 'Number of passwords?'
number = gets.chomp
number = number.to_i

puts('Passwords Generated Successfully ')

for pwd in (0..number-1) 
  password = ''
  for c in (0..length-1) 
    password +=chars[rand(chars.size)]
  end
  p(password)
end

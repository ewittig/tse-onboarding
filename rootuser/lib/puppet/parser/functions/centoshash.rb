Puppet::Parser::Functions.newfunction(:centoshash, :type=>:rvalue) do |args|
	rootpassword = args[0]
	hashcmd = "openssl passwd -1 #{rootpassword}"
	hashedpwd = %x( #{hashcmd} )
	hashedpwd.chomp
end

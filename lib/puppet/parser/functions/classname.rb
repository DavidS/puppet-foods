Puppet::Parser::Functions::newfunction(:classname, :type => :rvalue, :doc => "\
	Massages a string into being usable as classname by replacing all non-alphanumeric
	characters with a single dash.") \
do |args|
		args[0].downcase.gsub(/[^a-z0-9]/, '-').gsub(/-+/, '-')
end

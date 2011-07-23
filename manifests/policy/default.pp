
class foods::policy::default {
	include foods
	
	file {
		"/etc/foods.cfg":
			ensure => present,
			source => "puppet:///modules/foods/${systemid}/foods.cfg",
			mode => 0644, owner => root, group => root;
	}
}
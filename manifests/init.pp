# Class: foods
#
# This module manages foods
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class foods {
	
	$systemid = $operatingsystem ? {
		'Debian' => classname("debian-${operatingsystemrelease}"),
		'Fedora' => classname("fedora-${operatingsystemrelease}")
	} 
	
	# multiplex into the actual "provider" implementation
	include "foods::provider::${systemid}"
}

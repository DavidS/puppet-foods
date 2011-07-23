
class foods::provider::foods-v2 inherits foods::resources {
	
	Service["foods"] {
		hasstatus => true,
		hasrestart => true,
		pattern => "/usr/sbin/foodsv2"
	}
	
}
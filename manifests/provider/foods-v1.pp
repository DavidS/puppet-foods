
class foods::provider::foods-v1 inherits foods::resources {
	
	Service["foods"] {
		hasstatus => false,
		hasrestart => false,
		pattern => "/usr/sbin/foodsv1"
	}
	
}
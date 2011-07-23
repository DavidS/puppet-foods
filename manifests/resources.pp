
class foods::resources ($ensure = 'installed') {
	package {
		"foods":
			ensure => $ensure;
	}
	
	service {
		"foods":
			ensure => $ensure ? {
				'installed' => running,
				default => stopped
				},
			enable => $ensure == 'installed',
			require => Package["foods"];
	}
}
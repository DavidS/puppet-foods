
define foods::config_file ($content = '', $source = '')
{
	$file_name = "/etc/foods.d/${name}"
	file {
		$file_name:
			mode => 0644, owner => root, group => root,
			notify => Service["foods"];
	}
	
	if $content != '' {
		File[$file_name] { content => $content }
	}

	if $source != '' {
		File[$file_name] { source => $source }
	}
}
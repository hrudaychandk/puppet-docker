class devops::dockerbuild {

	file { '/home/edureka/Downloads/demo' :

		ensure => directory,

		mode => '0777'

	}

	

	file { '/home/edureka/Downloads/demo/addressbook.war' :

		mode => '0777',

		source => "puppet:///modules/devops/addressbook.war"

		}

	

	file { '/home/edureka/Downloads/demo/Dockerfile' :

		mode => '0777',
		source => "puppet:///modules/devops/Dockerfile"

		}

	

	exec { 'Docker-build': 

		 cwd => '/home/edureka/Downloads/demo/',
		 command => '/usr/bin/docker build . -t edureka/demo'

		}	

}

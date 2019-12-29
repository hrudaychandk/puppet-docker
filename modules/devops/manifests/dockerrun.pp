class devops::dockerrun {

	exec { 'Docker-run': 

		cwd => '/home/edureka/Downloads/demo/',
		command => '/usr/bin/docker run -it -d -p 8091:8080 edureka/demo'

		}

}

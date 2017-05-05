node() {
	stage('Build') {
		docker.image('maven:3.3.3-jdk-8').inside {
		  checkout scm
		  sh 'mvn -B clean install'
		}
	}
}

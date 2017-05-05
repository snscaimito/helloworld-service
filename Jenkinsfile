node() {
	stage('Build') {
		docker.image('gradle:3.5-jdk8').inside {
		  checkout scm
		  sh 'gradlew cleanTest build'
		}
	}
}

node {
	stage("Build") {
		checkout scm
		
		sh "./gradlew cleanTest build"
		
		junit 'build/test-results/*.xml'
	}
}

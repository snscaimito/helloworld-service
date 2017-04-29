node {
	stage("Build") {
		checkout scm
		
		sh "./gradlew test build"
		
		junit 'build/test-results/*.xml'
	}
}

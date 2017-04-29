node {
	stage("Build") {
		checkout scm
		
		sh "./gradlew build"
		
		junit 'build/test-results/*.xml'
	}
}

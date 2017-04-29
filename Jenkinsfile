node {
	stage("Build") {
		checkout scm
		
		sh "./gradlew cleanTest build"
		
		publishHTML (target: [
		      allowMissing: false,
		      alwaysLinkToLastBuild: false,
		      keepAll: true,
		      reportDir: 'build/reports/tests',
		      reportFiles: 'index.html',
		      reportName: "Unit Test Report"
		    ])
	}
	
	stage("Create Container") {
		def app = docker.build "helloworld-service"
	}
}

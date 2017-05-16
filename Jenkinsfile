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
	
	stage("Build Container") {
		hw = docker.build "helloworld-service"
	}
	
	stage("Test Container") {
		hw.run("-P -d")
		cuke = docker.build('cucumber').run('--link ${hw.id}')
	}
}

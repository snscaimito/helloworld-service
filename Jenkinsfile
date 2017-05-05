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
	
	stage("Test Container") {
		def hw_svc = docker.build "helloworld-service"
		hw_svc.inside {
			sh "java -jar /opt/helloworld/helloworld-service-0.1.0.jar &"
		}
		docker.image('ubuntu:latest')
		.inside {
			sh "curl http://www.google.com"
		}
	}
}

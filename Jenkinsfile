node {
	stage("Build") {
		checkout scm
		
		sh "./gradlew cleanTest build"
		
		publishHTML (target: [
		      allowMissing: false,
		      alwaysLinkToLastBuild: false,
		      keepAll: true,
		      reportDir: 'reports/tests',
		      reportFiles: 'index.html',
		      reportName: "Unit Test Report"
		    ])

	}
}

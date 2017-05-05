node('master') {
	docker.withServer('unix:///var/run/docker.sock') {
		stage('Git clone') {
			echo 'Cloning git'
		}
		stage('Build') {
			docker
				.image('jenkins-agent-ubuntu')
				.inside(--volumes-from jenkins-master') {
					sh "echo 'from inside'"
				}
		}
	}
}

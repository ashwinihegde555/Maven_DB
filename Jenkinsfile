@Library('shared-library@main')
def code

node('master') {
 
  stage('Load') {
    code = load 'shared-library/vars/deploy_dev.groovy'
  }
}
	


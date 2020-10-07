@Library('shared-library@main')
def code
def gitRepo
node('master') {
 
  stage('Load') {
	gitRepo = "https://github.com/ashwinihegde555/shared-library.git"
     	code = load 'shared-library/vars/deploy_dev.groovy'
	echo "loaded"  
  }
}
	


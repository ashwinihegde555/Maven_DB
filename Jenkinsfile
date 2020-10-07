@Library('shared-library@master')

node{	stage('SCM'){
		 git 'https://github.com/ashwinihegde555/Maven_DB.git'
	}
	
	def pipeline = load 'deploy_dev.groovy'
	pipeline.pipeline()
}


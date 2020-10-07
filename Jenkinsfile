@Library('shared-library@master')
	def gitRepo;
	def pipeline;
	gitRepo = "https://github.com/ashwinihegde555/shared-library.git"
	clonerepo(gitRepo, 'master');
	pipeline = load "shared-library/vars/deploy_dev.groovy"
	pipeline.executeBuild();


	


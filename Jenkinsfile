@Library('shared-library@main')
	def gitRepo;
	def pipeline;
	gitRepo = "https://github.com/ashwinihegde555/shared-library.git"
	clonerepo(gitRepo, 'main');
	pipeline = load "shared-library/vars/deploy_dev.groovy"
	pipeline.executeBuild();


	


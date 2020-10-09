node {
   
    stage('SCM'){
    git 'https://github.com/ashwinihegde555/Maven_DB.git'
    }
    stage('Clean'){
        withMaven {
            sh "mvn clean"
          
        }
    }
  
  stage('Build'){
       withMaven {
         
     sh "mvn package"
    }
    }
    stage('deploy_dev'){
       echo  pwd()
         sshagent(['deploy_user']) {
       sh "scp  -o StrictHostKeyChecking=no target/RegApp2-0.0.1-SNAPSHOT.war ec2-user@13.233.244.215:/opt/apache-tomcat-8.5.58/webapps"
         }  
    }
   
   def    CHECK_URL = "http://13.233.244.215:8080/"
      def  CMD = "curl --write-out %{http_code} --silent --output /dev/null ${CHECK_URL}"


    stage('URL_Check'){
                    env.status = readFile('commandResult').trim()
    
    
        sh "echo ${env.status}"
                    if (env.status == '200') {
                        currentBuild.result = "SUCCESS"
                    }
                    else {
                        currentBuild.result = "FAILURE"
                    }
    }

}

  

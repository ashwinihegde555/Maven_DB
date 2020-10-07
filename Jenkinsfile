node{
    stage('SCM'){
    git 'https://github.com/ashwinihegde555/Maven_DB.git'
    }
    stage('Clean'){
        withMaven {
            sh "mvn clean"
        }
    }
      stage('Install'){
        withMaven {
            sh "mvn install"
        }
    }
    stage('Build'){
       withMaven {
         
     sh "mvn package"
    }
   }
 }

node('new43') {
// Delete the workspace
//deleteDir()
stage('Retrieve source code') {
    checkout scm
    }

    stage('SonarQube analysis') {
    // requires SonarQube Scanner 2.8+
    def scannerHome = tool 'sonarqube';
    withSonarQubeEnv('sonarqube') {
      sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectName=sonar -Dsonar.projectversion=1.0 -Dsonar.projectKey=sonarqube -Dsonar.sources=/root/workspace/$JOB_NAME/src/"
     }
    }
     stage('Maven Build') {
        sh "mvn clean package"
      }
     
}

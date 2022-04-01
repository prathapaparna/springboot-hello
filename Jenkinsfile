pipeline {
    agent any
    
    environment {
      POM_APP = readMavenPom().getProperties().getProperty('app')
}

    stages {
        stage('app stage'){
        steps{
            script{
                 sh """
                 echo ${POM_APP}
                 """
            }
        }
    }
    }
}

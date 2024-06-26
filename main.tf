This code is to install github clone, maven, docker build, docker run, finally executive the progreamme

pipeline {
    agent any
    tools {
        maven 'M3'
    }

    stages {
     stage('git clone') {
    steps {
        git 'https://github.com/skarasheed72github/maven-web-app.git'
    }
}
stage('maven install') {
    steps {
        sh 'mvn clean package'
    }
}
stage('docker image') {
    steps {
        sh 'docker build -t bhaskar .'
    }
}
stage('docker container') {
    steps {
        sh 'docker stop rasheeditc'
        sh 'docker rm rasheeditc'
        sh 'docker run -d -p 9090:8080 --name rasheeditc bhaskar'
    }
}
    }
}
======================================================================================
This code is to install github clone, maven, sonarcube analysis, docker build, docker run, finally executive the progreamme

pipeline {
    agent any
    tools {
        maven 'M3'
    }

    stages {
     stage('git clone') {
    steps {
        git 'https://github.com/skarasheed72github/maven-web-app.git'
    }
}
 stage('sonar analysis') {
    steps {
       sh "mvn clean verify sonar:sonar \
  -Dsonar.projectKey=sonar \
  -Dsonar.projectName='sonar' \
  -Dsonar.host.url=http://15.207.84.45:9000 \
  -Dsonar.token=sqp_79e466e33e2cde5118aa8bc6d0c27831a1526baf"
    }
}
stage('maven install') {
    steps {
        sh 'mvn clean package'
    }
}
stage('docker image') {
    steps {
        sh 'docker build -t bhaskar .'
    }
}
stage('docker container') {
    steps {
        sh 'docker stop rasheeditc'
        sh 'docker rm rasheeditc'
        sh 'docker run -d -p 9090:8080 --name rasheeditc bhaskar'
    }
}
    }
}
=====================================================================================

This code is to executive terraform script (which is going to provision ec2 instance)
Note: first install jenkins, terraform on ec2 / local machine
Install the plugin of terraform in jenkins
Create a job in jenkins
Copy the jenkins script and paste in the jenkins
Set the global credentials  -new credentials- enter the secret and ID.


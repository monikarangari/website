pipeline
{
agent any
stages {
 stage ('docker login and docker build')
  {steps { withDockerRegistry(credentialsId: 'DockerHubAccount', url: 'https://index.docker.io/v1/') 
          {sh 'docker build -t monika1215/intelipaat:latest .'
           sh 'docker push monika1215/intelipaat:latest'
 } 
         } }
 
 stage ('docker create container on port 82')
   {  
    when { branch 'master' }
    input{message "build and publish from master branch"}
    steps 
       {withDockerRegistry(credentialsId: 'DockerHubAccount', url: 'https://index.docker.io/v1/')
         { sh 'docker stop myapache'
           sh 'docker rm myapache' 
           sh 'docker run -itd -p 82:80 --name myapache monika1215/intelipaat:latest'
           sh 'docker ps'}} }

  }
}

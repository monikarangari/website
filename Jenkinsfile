pipeline
{
agent any
stages {
 stage ('docker login and docker build')
  {steps { withDockerRegistry(credentialsId: 'DockerHubAccount', url: 'https://index.docker.io/v1/') 
          {sh 'docker build -t monika1215/intelipaat:latest .' } 
         } }


    
  }

  
}

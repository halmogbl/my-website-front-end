pipeline {
  agent any
  stages {
        stage('Git Pull') {
            steps {
                // Build Docker image from docker file
                sh 'ssh -i /key/id_rsa_jenkins halmogbl@38.242.206.24 "cd /home/halmogbl/my-website/my-website-front-end/; git pull"'
            }
        }
        stage('Doocker-compose Down') {
            steps {
                // docker prune
                sh 'ssh -i /key/id_rsa_jenkins halmogbl@38.242.206.24 docker system prune -f'
                sh 'ssh -i /key/id_rsa_jenkins halmogbl@38.242.206.24 "cd /home/halmogbl/my-website/my-website-front-end/; docker-compose -f docker-compose.production.yml up -d --build --force-recreate"'
            }
        }
}

}
node{
    def registyProject='92.222.23.101:5000/peter/nginx'
    def image="${registyProject}:version-${env.BUILD_ID}"
    stage('Clone'){
        git 'https://github.com/Peterery21/pushRegistry.git'
    }
    def img = stage('Build'){
        docker.build("${image}", '.')
    }
    stage('Run'){
        img.withRun('--name run.$BUILD_ID -p 80:80'){ c ->
            sh 'curl localhost'
        }
    }
    stage('Push'){
        docker.withRegistry('92.222.23.101:5000', 'mapay'){
            img.push 'latest'
            img.push()
        }
    }
}

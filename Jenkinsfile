pipeline { 
    agent any // agent any can use any agent on any slave to build this job; change agent to support Windows, etc.
    stages {
        stage('Build our website'){
            steps{
                sh "$PWD/scripts/build.sh"
            }
        }

        stage('Run unit tests') {
            steps{
                sh "$PWD/scripts/unit_tests.sh"
            }
        }

        stage('Deploy website') {
            steps{
                sh "$PWD/scripts/deploy_website.sh"
            }
        }
    }
}
// function of pipeline is within this block.  outside of this block: env, config data from Jenkins
// integration tests cost money b/c deploy to aws and long-running so not used in this example


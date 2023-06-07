pipeline {
    agent any
    stages {
        stage('Start PostgreSQL9') {
            steps {
                sh '''
                    cd tests
                    export POSTGRES_VERSION=9
                    export config=postgres.yml
                    ./test.sh
                    sleep 90
                    '''
            }
        }
        stage('Start PostgreSQL9.5') {
            steps {
                sh '''
                    cd tests
                    export POSTGRES_VERSION=9.5
                    export config=postgres.yml
                    ./test.sh
                    sleep 90
                    '''
            }
        }
        stage('Start PostgreSQL10') {
            steps {
                sh '''
                    cd tests
                    export POSTGRES_VERSION=10
                    export config=postgres.yml
                    ./test.sh
                    sleep 90
                    '''
            }
        }
        stage('Start PostgreSQL11') {
            steps {
                sh '''
                    cd tests
                    export POSTGRES_VERSION=11
                    export config=postgres.yml
                    ./test.sh
                    sleep 90
                    '''
            }
        }
        stage('Start PostgreSQL12') {
            steps {
                sh '''
                    cd tests
                    export POSTGRES_VERSION=12
                    export config=postgres.yml
                    ./test.sh
                    sleep 90
                    '''
            }
        }
        stage('Start MySQL5.7') {
            steps {
                sh '''
                    cd tests
                    export MYSQL_VERSION=5.7
                    export config=mysql.yml
                    ./test.sh
                    sleep 90
                    '''
            }
        }
        stage('Start MySQL8') {
            steps {
                sh '''
                    cd tests
                    export MYSQL_VERSION=8
                    export config=mysql.yml
                    ./test.sh
                    sleep 90
                    '''
            }
        }
        stage('Start MariaDB10') {
            steps {
                sh '''
                    cd tests
                    export config=mariadb.yml
                    export MARIADB_VERSION=10
                    ./test.sh
                    sleep 90
                    '''
            }
        }
        stage('Start MariaDB10.5'){
            steps{
                sh '''
                    cd tests
                    export config=mariadb.yml
                    export MARIADB_VERSION=10.5
                    ./test.sh
                    sleep 90
                '''
            }
        }
        stage('Start Redis5'){
            steps{
                sh '''
                    cd tests
                    export config=redis.yml
                    export REDIS_VERSION=5
                    ./test.sh
                    sleep 90
                '''
            }
        }
        stage('Start Redis6'){
            steps{
                sh '''
                    cd tests
                    export config=redis.yml
                    export REDIS_VERSION=6
                    ./test.sh
                    sleep 90
                '''
            }
        }
        stage('Start RabbitMQ3'){
            steps{
                sh '''
                    cd tests
                    export config=rabbitmq.yml
                    export RABBITMQ_VERSION=3
                    ./test.sh
                    sleep 90
                '''
            }
        }
        stage('Start RabbitMQ LTS'){
            steps{
                sh '''
                    cd tests
                    export config=rabbitmq.yml
                    export RABBITMQ_VERSION=latest
                    ./test.sh
                    sleep 90
                '''
            }
        }
        stage('Start ActiveMQ 5.14.3'){
            steps{
                sh '''
                    cd tests
                    export config=activemq.yml
                    export ACTIVEMQ_VERSION=5.14.3
                    ./test.sh
                    sleep 90
                '''
            }
        }
        stage('Start ActiveMQ LTS'){
            steps{
                sh '''
                    cd tests
                    export config=activemq.yml
                    export ACTIVEMQ_VERSION=latest
                    ./test.sh
                    sleep 90
                '''
            }
        }
    }
}

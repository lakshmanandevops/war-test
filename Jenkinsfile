node
{
	stage('GIT Checkout'){
		git credentialsId: 'GH', url: 'https://github.com/lakshmanandevops/war-test.git'
    	}
	stage('Compile/Test/Package'){
	    def mvnHome = tool name: 'mvn3', type: 'maven'
	    def mvnCMD = "${mvnHome}\\bin\\mvn"
	    bat "${mvnCMD} clean package"	
	    }
	stage('Deploy'){
	   deploy adapters: [tomcat8(credentialsId: 'Tomcat', path: '', url: 'http://localhost:8080')], contextPath: 'warpipeline', war: '**/*.war'
	    }
}

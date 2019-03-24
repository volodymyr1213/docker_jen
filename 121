node{
    stage("remove container"){
        try{
            sh "root@${IP} docker run -f Flaskex"
        }
        catch(exec){
            sh "echo container deleted"
        }
    }
    stage("Run container"){
    sh "ssh root@${IP} docker run -d --name Flaskexnew -p 6000:4000 rameca231190/flaskex"
    }
}

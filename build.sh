docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID devparakh123/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID devparakh123/$JOB_NAME:latest

docker push devparakh123/$JOB_NAME:$BUILD_ID

docker push devparakh123/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID devparakh123/$JOB_NAME:$BUILD_ID devparakh123/$JOB_NAME:latest

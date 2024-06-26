<h1 align="center">
  <br>
  <img height="300" src="https://github.com/go-skynet/LocalAI/assets/2420543/0966aa2a-166e-4f99-a3e5-6c915fc997dd"> <br>
    LocalAI
<br>
</h1>


用代理拉取docker镜像(以gpu版为例)：
docker pull dockerhub.icu/localai/localai:latest-gpu-nvidia-cuda-12




-----
cpu: 
```
docker run -p 8080:8080 --name local-ai -ti localai/localai:latest-aio-cpu

cd localAI_usecase

docker rm $(docker ps -aq) && 
docker run  -ti --name local-ai -p 8081:8080 \
-v /path/to/external/aio:/aio \
-v /path/to/external/models:/build/models \
localai/localai:latest-aio-cpu


curl http://127.0.0.1:8081/v1/chat/completions -H "Content-Type: application/json" -d '{
    "model": "qwen-1.5-0.5b-chat",
    "temperature":1,
    "messages": [{"role": "user", "content": "讲个笑话来听听？"}]
}'

```
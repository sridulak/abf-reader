docker build --tag=abf:v1 C:\\Users\\kunam\\Desktop\\Research

docker run -i -t -p 8888:8888 -v C:\\Users\\kunam\\Desktop\\Research\\data:/app/data  -v C:\\Users\\kunam\\Desktop\\Research\\code:/app/code abf:v1
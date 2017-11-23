# docker build -t malikasinger/node-web-app1:development .
# docker push malikasinger/node-web-app1:development


# Buildiong an image tag development
docker build -t malikasinger/node-web-app1:development .

# tagging that image with registry url
docker tag malikasinger/node-web-app1:development registry.heroku.com/docker-hello/web

# pushing the image to eroku registry
docker push registry.heroku.com/docker-hello/web
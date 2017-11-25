FROM node:carbon-alpine


# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

ENV PORT=3200

# EXPOSE 8080
# Expose is not supported in heroku, we will use gunicon instead
CMD gunicorn --bind localhost:$PORT wsgi 

CMD npm start 
# you can also write like
# CMD [ "npm", "start" ]
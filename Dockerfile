FROM node:carbon-alpine


# Create app directory in the container
WORKDIR /usr/app/src

# copy project file in it
COPY package.json .

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

ENV PORT=3200

EXPOSE 3200
# Expose is not good practice, use gunicon instead
# CMD gunicorn --bind localhost:$PORT wsgi 

# copy project file in it
COPY . .

# Run the image as a non-root user
RUN adduser -D myuser
USER myuser

# CMD npm start 
# you can also write like
CMD [ "npm", "start" ]z
FROM node:20-alpine

RUN npm install -g freellmapi

EXPOSE 31415

ENV BASE_URL=http://0.0.0.0:31415
ENV API_KEY=freellmapi-a72d08f996b5cf830182609bf006a0dc010c80c9b136ee01

CMD ["freellmapi", "setup-claude", "--url", "http://0.0.0.0:31415"]
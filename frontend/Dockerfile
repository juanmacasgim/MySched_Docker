# Build Stage
FROM node:18-alpine AS build


RUN apk add --no-cache git
RUN git clone https://github.com/juanmacasgim/MySched_React.git
#RUN npm install -g vite
WORKDIR /MySched_React
#COPY vite-project/package*.json ./
RUN npm install
#COPY vite-project .
RUN npm run build
 
# Production Stage
FROM nginx:stable-alpine AS production
COPY --from=build /MySched_React/dist /usr/share/nginx/html
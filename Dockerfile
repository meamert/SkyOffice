FROM node:16.5
LABEL maintainer=mert<mert@meamert.me>

ENV BACKEND_URL="wss://skyback.gurudesk.com"

WORKDIR /app
COPY . .

WORKDIR /app/client
RUN yarn
CMD ["yarn", "dev", "--host"]

EXPOSE 5173

FROM nestjs/cli

COPY ./ /app

WORKDIR /app

EXPOSE 4000

RUN yarn build

ENTRYPOINT exec node dist/main.js
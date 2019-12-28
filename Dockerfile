FROM nestjs/cli

COPY ./dist /app

WORKDIR /app

EXPOSE 4000

ENTRYPOINT exec node dist/main.js
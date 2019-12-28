FROM nestjs/cli

COPY ./dist /app/dist

WORKDIR /app

EXPOSE 4000

ENTRYPOINT exec node dist/main.js
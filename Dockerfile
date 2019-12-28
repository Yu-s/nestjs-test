FROM nestjs/cli

COPY ./ /app

WORKDIR /app

EXPOSE 4000

RUN npm run build

ENTRYPOINT exec node dist/main.js
FROM nestjs/cli

COPY ./ /app

WORKDIR /app

EXPOSE 4000

SHELL ["/bin/bash", "-c"]

RUN yarn build

ENTRYPOINT exec node dist/main.js
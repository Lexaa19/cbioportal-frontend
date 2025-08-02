FROM node:15.2.1

WORKDIR /app
COPY . .

ENV BRANCH_ENV=master


RUN yarn install --frozen-lockfile --ignore-engines \
    && yarn run buildDLL:dev \
    && yarn run buildModules \
    && yarn run build

CMD yarn run start
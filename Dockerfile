FROM node:15.2.1

WORKDIR /app
COPY . .

RUN yarn install --frozen-lockfile --ignore-engines
RUN yarn run buildDLL:dev && yarn run buildModules && yarn run build

CMD BRANCH_ENV=master yarn run start
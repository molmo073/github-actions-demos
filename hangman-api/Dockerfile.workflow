#------------------------------------------------------------------------------
# -- app
#------------------------------------------------------------------------------
ARG version=lts-alpine
FROM node:${version} AS app

WORKDIR /app
COPY --from=builder /app/dist .
COPY package.json .
COPY package-lock.json .

ENV NODE_ENV=production

RUN npm install


CMD ["npm", "start"]

FROM sandeep4642/angular14:1

WORKDIR /apps/frontend/

COPY frontend/* /apps/frontend/

RUN npm install

RUN npm run build

EXPOSE 4200

CMD ["npm", "run", "start"]

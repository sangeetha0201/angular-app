FROM sandeep4642/angular-app:1

RUN mkdir /apps

COPY . /apps

WORKDIR /apps

RUN npm install

RUN npm run build

EXPOSE 4200

CMD ["npm", "run", "start"]

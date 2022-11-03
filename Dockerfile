FROM sandeep4642/angular-app

RUN mkdir /apps

COPY ./target/*.jar /apps/shopsample1.jar

EXPOSE 8080

CMD ["java", "-jar", "/apps/shopsample1.jar"]

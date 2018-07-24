# Building on top of Ubuntu.
FROM ubuntu
# Update the repository sources list
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get update -y && apt-get install jq -y

RUN apt-get install git -y
RUN apt-get install btrfs-tools -y
RUN apt-get install libreadline-dev -y

#COPY ./angular-circle-ci-test /opt/
RUN git clone https://github.com/stephenmulwa/angular.git /opt/


EXPOSE 8080

ENTRYPOINT ["/opt"]

#start the application
CMD ["ng serve --open"]

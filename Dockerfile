# Use the official image as a parent image
FROM node:13-slim

RUN dpkg -i git

USER node
RUN npm install -g purescript@0.13.6 spago@0.14.0 parcel-bundler@1.12.4 sass@1.25.0
# yarn is already installed in node image (yarn@1.22.0)


# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 1234

# Run the specified command within the container.
CMD [ "bash", "" ]

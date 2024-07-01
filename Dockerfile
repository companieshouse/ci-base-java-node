ARG BUILD_VERSION="latest"
FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-corretto-build-21:${BUILD_VERSION}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN  dnf upgrade -y \
     && dnf update \
     && dnf install jq -y

# Setting Up Node.js on an Amazon EC2 (Amazon Linux 2023)
# https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html
RUN  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash \
     && . ~/.nvm/nvm.sh \
     && nvm install --lts \
     && npm install -g @cyclonedx/cdxgen@latest \
     && dnf clean all


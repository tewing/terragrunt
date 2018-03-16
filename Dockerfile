FROM hashicorp/terraform:light

ADD https://github.com/gruntwork-io/terragrunt/releases/download/v0.14.2/terragrunt_linux_amd64  /bin/terragrunt
RUN chmod 755 /bin/terragrunt
RUN apk -v --update add \
                    python \
                    py-pip \
                    groff \
                    less \
                    mailcap
RUN pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic


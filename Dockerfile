FROM alpine:latest

LABEL "com.github.actions.name"="Import role to ansible-galaxy"
LABEL "com.github.actions.description"="Import role to ansible-galaxy"
LABEL "com.github.actions.icon"="rotate-cw"
LABEL "com.github.actions.color"="red"
LABEL "repository"="https://github.com/youyo/import-role-to-ansible-galaxy"
LABEL "homepage"="https://github.com/youyo/import-role-to-ansible-galaxy"
LABEL "maintainer"="youyo <1003ni2@gmail.com>"

RUN apk --update --no-cache add ansible

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]

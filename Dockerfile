# Utilize esse arquivo para gerar uma imagem docker customizada do limarka
# Documentação: https://github.com/abntex/limarka/wiki/Limarka-com-Docker

FROM limarka/limarka:latest

# Adicione os pacotes que precisa instalar nessa imagem customizada:
RUN tlmgr install subfig
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8
ENV LANG pt_BR.UTF8

# Configurando usuário para geração de arquivos com as mesmas permissões #23
ARG GROUP_ID=1001
ARG USER_NAME=limarka
ARG USER_ID=1001

RUN groupadd -r $USER_NAME -g $GROUP_ID && useradd --no-log-init -r -g $USER_NAME -u $USER_ID $USER_NAME

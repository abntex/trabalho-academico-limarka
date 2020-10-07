# Utilize esse arquivo para gerar uma imagem docker customizada do limarka
# Documentação: https://github.com/abntex/limarka/wiki/Limarka-com-Docker

FROM limarka/limarka:latest
RUN wget -O /update.sh http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh
RUN chmod +x /update.sh
RUN /update.sh
RUN  tlmgr update --self

# Adicione os pacotes que precisa instalar nessa imagem customizada:
RUN tlmgr install subfig


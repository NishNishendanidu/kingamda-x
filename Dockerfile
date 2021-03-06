FROM fusuf/whatsasena:latest

RUN git clone https://github.com/NishNishendanidu/kingamda-x.git/root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
RUN git clone https://github.com/NishNishendanidu/kingamda-x.git
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]

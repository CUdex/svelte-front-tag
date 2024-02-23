FROM node:20.11.1-slim

RUN apt update && apt install -y git
RUN mkdir /app
WORKDIR /app
# RUN npm install -g npm@10.4.0
RUN npm uninstall -g degit && npm install -g tiged
# RUN npm create vite@latest svelte-aws-ec2-tag -- --template svelte
RUN tiged RoyRao2333/template-vite-svelte-ts-tailwind#Svelte svelte-aws-ec2-info

WORKDIR /app/svelte-aws-ec2-info
RUN npm install

CMD ["bash"]

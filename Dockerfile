### pnpm
FROM node:18-alpine

RUN npm install -g pnpm

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN pnpm install

COPY . .

EXPOSE 5173

ENV CHOKIDAR_USEPOLLING=true

CMD ["pnpm", "run", "dev"] 

### npm 測試
# # 使用 Node.js 18 Alpine 映像作為基礎映像
# FROM node:18-alpine

# # 設置在 container 中 app 所放置的工作目錄
# WORKDIR /app

# # 為了要在 container 中安裝相關的套件，
# # 必須先複製 package.json 和 package-lock.json，install 才有依據
# COPY package.json package-lock.json ./

# # 安裝依賴項
# # RUN 指的時在 container 環境建置
# RUN npm install

# # 複製其餘的應用代碼
# COPY . .

# # 暴露應用運行的端口
# EXPOSE 5173

# # 設置環境變量，用於熱重載
# ENV CHOKIDAR_USEPOLLING=true

# # 啟動 Vite 開發伺服器
# CMD ["npm", "run", "dev"]

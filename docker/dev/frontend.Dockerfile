# เริ่มจาก base image
FROM node:18-alpine

WORKDIR /app

# ใส่ไฟล์ package.json เปล่าไว้ก่อน
COPY package.json ./

# ติดตั้ง dependencies (ไม่มีจริงก็ใช้ dummy ไปก่อน)
RUN npm install || true

CMD ["npm", "run", "dev"]

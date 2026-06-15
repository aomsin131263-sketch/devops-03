# 1. ดึงระบบปฏิบัติการจิ๋วที่มี Python 3.9 ติดตั้งมาให้แล้วซะก่อน
FROM python:3.9-slim

# 2. สร้างโฟลเดอร์สำหรับทำงานข้างใน Container ชื่อว่า /app
WORKDIR /app

# 3. คัดลอกโค้ดทั้งหมดจากเครื่องเรา (เช่น app.py) เข้าไปไว้ในระบบของ Container
COPY . .

# 4. สั่งให้ Container รันคำสั่ง python app.py ทันทีที่มันเริ่มทำงาน
CMD ["python", "app.py"]
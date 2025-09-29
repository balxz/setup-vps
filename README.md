### Setup VPS Jadi Lebih Mudah Untuk NodeJs

Script ini dibuat untuk mempermudah setup VPS fresh ygy
Fitur script:  
- Update dan upgrade sistem  
- Install dependensi dasar (curl, git)  
- Install NVM (Node Version Manager)  
- Pilihan install Node.js versi 18, 20, 21, 22, 23, atau 24  
- Set default versi Node.js sesuai pilihan  
- Install PM2 untuk process manager  
- Install Nginx untuk web server  

### ???kegunaan
- Menyiapkan VPS agar siap dipakai untuk aplikasi Node.js  
- Mengelola versi Node.js dengan mudah lewat NVM  
- Menjalankan aplikasi Node.js secara background dengan PM2  
- Menyediakan Nginx untuk reverse proxy atau static file server  

### ???cara install
1. Login ke VPS dengan SSH  
2. Clone repository ini
```bash
git clone https://github.com/balxz/setup-vps
```
```bash
cd setup-vps
```
4. Beri izin eksekusi script
```bash
chmod +x setup.sh
```
4. Jalankan script
```bash
./setup.sh
```
```bash
bash setup.sh
```
### ???cara pakai
- Saat menjalankan script, pilih versi Node.js yang tersedia  
- Versi yang dipilih akan otomatis diatur sebagai default  
- Cek instalasi:
```bash
node -v npm -v pm2 -v nginx -v
```
- Untuk menjalankan aplikasi Node.js dengan PM2:
```bash
pm2 start . --name "bot"
```
```bash
pm2 save 
```
```bash
pm2 startup
```



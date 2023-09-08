// Untuk hapus github
git remote -v
git remote remove origin

// Untuk tambah commit pada github
git add .
git commit -m "Edit tampilan tabel dan perbaiki sedikit bug"
git branch -M main
git remote set-url origin https://github.com/karismanomen/simakkata_v2.0.git
git push -u origin main
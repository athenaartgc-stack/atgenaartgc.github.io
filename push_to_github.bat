@echo off
cd /d "E:\งาน ชั่วคราว\AOA Studio\วาดเล่น\วาดเล่น\โฟลเดอร์ใหม่ (2)\DAY\Comic\บช\โฟลเดอร์ใหม่\CMS\ตัวอย่างงาน\ตัวอย่างงาน\atgenaartgc.github.io"
echo === Current status ===
git status
echo.
echo === Merging remote history ===
git merge origin/main --allow-unrelated-histories -m "merge remote and local"
echo.
echo === Pushing to GitHub ===
git push origin main
echo.
echo === Done! ===
pause

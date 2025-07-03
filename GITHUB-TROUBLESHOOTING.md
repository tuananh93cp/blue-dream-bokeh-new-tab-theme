# 🔧 Khắc phục sự cố GitHub Push

## ❌ Lỗi gặp phải:
```
git: 'credential-manager-core' is not a git command
! [rejected] main -> main (fetch first)
error: failed to push some refs
```

## ✅ Cách khắc phục:

### Bước 1: Cài đặt Git (nếu chưa có)
1. Tải Git từ: https://git-scm.com/download/windows
2. Cài đặt với tất cả tùy chọn mặc định
3. **QUAN TRỌNG**: Khởi động lại PowerShell sau khi cài đặt

### Bước 2: Sử dụng Git Bash thay vì PowerShell
1. Nhấn chuột phải trong thư mục `extension1`
2. Chọn "Git Bash Here"
3. Chạy các lệnh sau:

```bash
git config user.name "XMP"
git config user.email "lanhanh64529@gmail.com"
git add .
git commit -m "Blue Dream Bokeh New Tab Theme - Complete Extension"
git pull origin main --allow-unrelated-histories
git push -u origin main
```

### Bước 3: Hoặc sử dụng script tự động
1. Double-click file `git-push-script.bat`
2. Script sẽ tự động thực hiện tất cả các bước

### Bước 4: Xử lý conflict (nếu có)
Nếu có conflict khi merge:
```bash
git status
# Xem file nào bị conflict
# Sửa file conflict bằng tay
git add .
git commit -m "Resolve merge conflicts"
git push origin main
```

## 🎯 Kết quả mong đợi:
- Repository GitHub: https://github.com/tuananh93cp/blue-dream-bokeh-new-tab-theme
- Tất cả files đã được push thành công
- Extension sẵn sàng để phát triển tiếp

## 🚨 Lưu ý quan trọng:

### Nếu repository đã có README.md:
```bash
git pull origin main --allow-unrelated-histories
git push origin main
```

### Nếu muốn force push (cẩn thận):
```bash
git push origin main --force
```

### Kiểm tra remote repository:
```bash
git remote -v
```

### Thay đổi remote URL (nếu cần):
```bash
git remote set-url origin https://github.com/tuananh93cp/blue-dream-bokeh-new-tab-theme.git
```

## 📋 Checklist sau khi push thành công:

- [ ] Repository hiển thị đầy đủ files
- [ ] README.md hiển thị đúng
- [ ] Có thể clone repository
- [ ] GitHub Pages hoạt động (nếu enable)

## 🔄 Các bước tiếp theo:

1. **Kiểm tra repository**: https://github.com/tuananh93cp/blue-dream-bokeh-new-tab-theme
2. **Thêm ảnh nền thật** vào `images/blue-bokeh-bg.jpg`
3. **Tạo icons** từ `icon-generator.html`
4. **Commit và push** lại sau khi thêm ảnh
5. **Upload extension** lên Chrome Web Store

---

**💡 Mẹo**: Luôn sử dụng Git Bash để tránh lỗi PowerShell với Git!
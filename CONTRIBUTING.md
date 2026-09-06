# راهنمای مشارکت · Contributing Guide

از این‌که به پروژهٔ **re-flow (تک‌نقطه)** علاقه‌مند هستید سپاسگزاریم.

---

## 🛠️ نحوهٔ مشارکت (How to Contribute)

1. **کلون کردن ریپازیتوری**:
   ```bash
   git clone https://github.com/re-code-sh/re-flow.git
   cd re-flow
   ```

2. **نصب وابستگی‌ها**:
   ```bash
   flutter pub get
   ```

3. **بررسی استایل و اجرای تست‌ها**:
   ```bash
   dart format --output=none --set-exit-if-changed lib test
   flutter analyze
   flutter test
   ```

4. **ارسال تغییرات (Pull Request)**:
   - یک برنچ جدید برای قابلیت یا باگ‌فیکس خود بسازید.
   - مطمئن شوید تمامی تست‌ها (`flutter test`) با موفقیت پاس می‌شوند.
   - پول‌ریکوئست خود را با توضیحات شفاف باز کنید.

---

Thank you for contributing to **re-flow**!

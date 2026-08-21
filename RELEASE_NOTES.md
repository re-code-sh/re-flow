# re.flow (تک‌نقطه) — v0.0.12

- پیاده‌سازی انیمیشن دوطرفه برای پیام تکمیل تخته‌سنگ (The Boulder has fallen): ورود نرم از بالا (Slide-down) و محو شدن گرانشی به سمت پایین (Falling-down exit) جهت القای مفهوم سقوط تخته‌سنگ
- رفع لگ و بهینه‌سازی ترنزیشن ورود به تایمر فوکوس با انیمیشن روان Scale-Fade (۳۲۰ میلی‌ثانیه با منحنی سهند)
- بهینه‌سازی انیمیشن تمامی پیام‌ها و توست‌های برنامه با شتاب‌های طبیعی و متناسب با فیزیک حرکت
- اضافه شدن مجموعه تست‌های خودکار چرخه حیات انیمیشن و ارتقای تست‌ها به ۹۱ تست سبز
- حفظ کارایی و پشتیبانی کامل از قابلیت Reduced Motion برای دسترسی‌پذیری

---

- Implemented two-way motion for The Boulder completion toast: smooth slide-down entrance and gravity-inspired falling downward exit
- Optimized Focus timer transition: eliminated entry lag with a fluid 320ms scale-fade cubic route transition
- Enhanced motion curves across all app toasts and ephemeral notices with physics-based cubic easings
- Added automated widget tests for toast animation lifecycles, bringing the test suite to 91 passing tests
- Accessibility and reduced motion support preserved with zero animation overhead when disabled

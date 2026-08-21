# re.flow (تک‌نقطه) — v0.0.12

- پیاده‌سازی انیمیشن دوطرفه برای پیام تکمیل تخته‌سنگ (The Boulder has fallen): ورود نرم از بالا (Slide-down) و محو شدن گرانشی به سمت پایین (Falling-down exit) جهت القای مفهوم سقوط تخته‌سنگ
- بهینه‌سازی انیمیشن تمامی پیام‌ها و توست‌های برنامه با شتاب‌های طبیعی و متناسب با فیزیک حرکت
- اضافه شدن مجموعه تست‌های خودکار چرخه حیات انیمیشن و ارتقای تست‌ها به ۹۱ تست سبز
- حفظ کارایی و پشتیبانی کامل از قابلیت Reduced Motion برای دسترسی‌پذیری

---

- Implemented two-way motion for The Boulder completion toast: smooth slide-down entrance and gravity-inspired falling downward exit
- Enhanced motion curves across all app toasts and ephemeral notices with physics-based cubic easings
- Added automated widget tests for toast animation lifecycles, bringing the test suite to 91 passing tests
- Accessibility and reduced motion support preserved with zero animation overhead when disabled

# re.flow (تک‌نقطه) — v0.0.11

- رفع باگ محاسبه زمان کار عمیق: محاسبه دقیق زمان خالص تمرکز و جلوگیری از احتساب زمان‌های توقف (Pause) در آمار کار عمیق
- افزایش غلظت و ماتی پنل ناوبری پایین صفحه همراه با بلور شیشه‌ای (Backdrop Filter) جهت پوشش کامل و عدم نمایش المان‌های اسکرول‌شونده در زیر نوار
- پیاده‌سازی ساختار چندزبانه برای مستندات و ریدمی ریپازیتوری (فارسی به عنوان زبان پیش‌فرض و انگلیسی هایپرلینک‌شده)
- یکپارچگی ظاهری پنل ناوبری شناور با سایر کارت‌ها و بلوک‌های رابط کاربری Liquid Glass

---

- Fix deep-work duration calculation: accurately tracks pure focus time, preventing timer pause intervals from inflating stats in the Mirror
- Enhanced bottom navigation bar opacity with backdrop blur filtering to completely mask elements scrolling underneath
- Bilingual README documentation system with dedicated Persian (primary) and English editions
- Polished visual consistency for floating navigation surface matching Liquid Glass cards and sheets

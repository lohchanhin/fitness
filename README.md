# 健身深層 App (Fitness Insight)

這是一個透過 Flutter 開發的跨平台健身追蹤與互動應用程式，整合 AI 技術幫助教練和學員更有效地管理健身計劃、追蹤進度，並提供動力與持續性的回饋機制。

---

## 🚀 功能特色

### 學員端功能

* 📸 **智慧飲食記錄**：AI 拍照辨識餐點，快速記錄每日攝取卡路里。
* 📈 **個人化運動計劃**：教練量身打造的訓練計劃，輕鬆追蹤每日運動。
* 📊 **進度追蹤報告**：隨時查看體重、BMI 等身體數據變化。
* 🥇 **激勵與成就系統**：連續打卡、成就解鎖，提升健身動力。
* 💬 **即時溝通**：隨時與教練聯繫，討論健身與營養問題。

### 教練端功能

* 🗂️ **學員資料總覽**：清晰查看所有學員的飲食與運動記錄。
* 📝 **運動計劃管理**：快速設計、儲存與調整個人化健身套餐。
* 📅 **日程與提醒系統**：自動提醒學員訓練進度並追蹤完成情況。
* 📊 **報表分析**：AI分析學員數據，提供即時見解與調整建議。
* 🔔 **主動互動與提醒**：快速找出需要特別關注的學員並即時溝通。

---

## 🛠️ 技術堆疊

* **Flutter**
* **Dart**
* **Firebase Authentication & Database**
* **Google ML Kit (圖像辨識與 AI 分析)**
* **Provider / Riverpod (狀態管理)**
* **REST API (後端服務整合)**

---

## 📲 開發環境設定

### 1. 克隆專案

```bash
git clone https://github.com/your-username/fitness-insight.git
```

### 2. 安裝依賴

```bash
flutter pub get
```

### 3. 啟動模擬器或連接實體設備

確認模擬器或實體設備已連接後，執行：

```bash
flutter run
```

---

## 📁 專案結構

```
lib
├── screens
│   ├── student
│   │   ├── diet_tracker.dart
│   │   └── workout_plan.dart
│   ├── trainer
│   │   ├── manage_students.dart
│   │   └── create_workout.dart
├── models
│   ├── user.dart
│   ├── meal.dart
│   └── workout.dart
├── services
│   ├── auth_service.dart
│   ├── ai_service.dart
│   └── api_service.dart
└── widgets
    ├── custom_card.dart
    └── progress_chart.dart
```

---

## 🎯 未來規劃

* 支援更多健康追蹤數據（如睡眠、水分攝取）
* 社交功能強化（如好友競爭排名）
* 多語系支援

---

## 📄 貢獻專案

歡迎任何形式的貢獻！若有任何疑問或建議，歡迎開 Issue 或直接提交 Pull Request。

---

## 📜 授權條款

本專案採用 MIT 授權，詳情請見 [LICENSE](LICENSE) 檔案。

---

🌟 感謝你的使用，讓我們一同打造更健康的未來！

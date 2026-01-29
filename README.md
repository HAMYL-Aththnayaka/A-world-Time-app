
## 🌍 World Time App (Flutter)

A clean and minimal **Flutter World Time application** that displays the current local time for cities around the world using a real-time API.  
This project focuses on **Flutter UI**, **asynchronous programming**, **API integration**, and **secure environment variable handling**.


## ✨ Features

- 🌐 View real-time local time for multiple global locations
- 🌞🌙 Automatically detects day and night
- 📍 Choose locations from different continents
- 🔄 Dynamic background changes based on time
- 🔐 Secure API key management using `.env`
- 📱 Simple, responsive Flutter UI



## 🛠️ Tech Stack

- **Flutter**
- **Dart**
- **REST API (RapidAPI – World Time API)**
- **HTTP package**
- **flutter_dotenv** for environment variables
- **intl** for time formatting
- **flutter_spinkit** for loading animation

---

## 📸 Screenshots



<div style="display: flex; justify-content: space-between; gap: 10px;">

  <img src="https://github.com/user-attachments/assets/e375322b-c956-4f54-ac61-566f21ce6832" alt="Screenshot 1" width="300"/>
  <img src="https://github.com/user-attachments/assets/b2bc1fb0-955b-4a3b-b102-171c6c1125fc" alt="Screenshot 2" width="300"/>
  <img src="https://github.com/user-attachments/assets/60e1c873-00a2-4405-a116-df371388b574" alt="Screenshot 3" width="300"/>

</div>



## 📦 Installation & Setup

### 1️⃣ Clone the repository
```bash
git clone https://github.com/HAMYL-Aththnayaka/A-world-Time-app.git
cd A-world-Time-app
````

---

### 2️⃣ Install dependencies

```bash
flutter pub get
```

---

### 3️⃣ Create `.env` file (IMPORTANT)

Create a file named `.env` in the **project root**:

```env
RAPIDAPI_KEY=your_api_key_here
RAPIDAPI_HOST=world-time-api3.p.rapidapi.com
API_BASE_URL=https://world-time-api3.p.rapidapi.com/timezone/

** if you need my .env file feel free to contact me
```

⚠️ **Do NOT commit `.env` to GitHub**
Make sure `.env` is added to `.gitignore`.

---

### 4️⃣ Run the app

```bash
flutter run
```

---

## 🧠 What I Learned

* Flutter navigation and routing
* Making asynchronous HTTP requests
* Parsing JSON responses
* Timezone and UTC offset handling
* Secure API key management using `.env`
* Dynamic UI updates based on app state

---

## 📁 Project Structure

```
lib/
 ├── pages/
 │    ├── loading.dart
 │    ├── home.dart
 │    └── choose_location.dart
 ├── services/
 │    └── world_time.dart
 └── main.dart
```

---

## 🚀 Future Improvements

* 🔍 Search functionality for cities
* ⭐ Favorite / pinned locations
* 🌙 Manual dark mode toggle
* 📴 Offline caching
* 📊 More detailed time information

---

## 🤝 Contributing

Contributions are welcome!
Feel free to fork the repository and submit a pull request.

---

## 📄 License

This project is open-source and available under the **MIT License**.

---

## 👤 Author

**Yasas Aththanayaka**
BSc (Hons) IT Undergraduate
University of Vavuniya, Sri Lanka

🔗 GitHub: [HAMYL-Aththnayaka](https://github.com/HAMYL-Aththnayaka)
🔗 Email: aththanayakayasas@gmail.com

---

⭐ If you like this project, consider giving it a star!

```




# Railway Deploy Guide for freellmapi

## Files ready in Downloads:
- `Dockerfile` — Railway will use this

---

## Deploy Steps (5 min):

### 1. GitHub pe repo banao
```bash
cd C:\Users\hp\Downloads
git init
git add Dockerfile
git commit -m "freellmapi docker"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/freellmapi.git
git push -u origin main
```

### 2. Railway.app pe deploy
1. Jao: https://railway.app
2. "New Project" → "Deploy from GitHub repo"
3. Apna repo select karo
4. Railway auto-detect karega Dockerfile → Deploy karega

### 3. Environment Variables (Railway dashboard me set karo):
```
BASE_URL = https://your-app-name.railway.app
API_KEY = freellmapi-a72d08f996b5cf830182609bf006a0dc010c80c9b136ee01
PORT = 31415
```

### 4. Done!
- Railway dega permanent URL: `https://xxx.railway.app`
- Use as `BASE_URL` in your clients
- API_KEY same rahega

---

## Local test pehle (optional):
```bash
docker build -t freellmapi .
docker run -p 31415:31415 freellmapi
# Test: curl http://localhost:31415
```
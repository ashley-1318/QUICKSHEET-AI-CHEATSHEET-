# 📚 QuickSheet AI

<div align="center">

![QuickSheet AI Banner](https://img.shields.io/badge/QuickSheet-AI-8B5CF6?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJMMiA3TDEyIDEyTDIyIDdMMTIgMloiIHN0cm9rZT0id2hpdGUiIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDEyTDEyIDE3TDIyIDEyIiBzdHJva2U9IndoaXRlIiBzdHJva2Utd2lkdGg9IjIiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)

**Transform your study materials into AI-powered cheat sheets in seconds**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![React](https://img.shields.io/badge/React-18-61DAFB?logo=react)](https://reactjs.org/)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.104-009688?logo=fastapi)](https://fastapi.tiangolo.com/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5-3178C6?logo=typescript)](https://www.typescriptlang.org/)
[![Groq](https://img.shields.io/badge/Powered%20by-Groq-FF6F00)](https://groq.com/)

[Demo](#-demo) • [Features](#-features) • [Quick Start](#-quick-start) • [Documentation](#-documentation) • [Contributing](#-contributing)

</div>

---

## 🎯 Overview

QuickSheet AI is an intelligent study companion that transforms your documents into structured, exam-ready cheat sheets using advanced RAG (Retrieval Augmented Generation) technology. Upload your PDFs, DOCX, PPTX, or TXT files and get comprehensive summaries with key concepts, formulas, definitions, and practice flashcards.

### 🌟 Why QuickSheet AI?

- **⚡ Lightning Fast** — Generate comprehensive cheat sheets in under 30 seconds
- **🎯 Exam-Focused** — Optimized for quick revision and exam preparation
- **🤖 RAG-Powered** — Uses semantic search to find and synthesize the most important content
- **💳 Flashcard Export** — Generate Anki-compatible flashcards automatically
- **📱 Chat Assistant** — Ask follow-up questions about your study materials
- **🔒 Privacy First** — Your documents are processed securely with Google OAuth
- **💰 Cost-Effective** — Powered by Groq's free LLM API (`llama-3.1-8b-instant`)

---

## ✨ Features

<table>
<tr>
<td width="50%">

### 📄 Document Processing
- ✅ Multi-format support (PDF, DOCX, PPTX, TXT)
- ✅ Batch upload (up to 4 files)
- ✅ Automatic text extraction
- ✅ Smart chunking with overlap
- ✅ Semantic embeddings

</td>
<td width="50%">

### 🧠 AI Generation
- ✅ Structured cheat sheets
- ✅ Key concepts extraction
- ✅ Formula identification
- ✅ Definition summaries
- ✅ Comparison tables

</td>
</tr>
<tr>
<td width="50%">

### 🎴 Study Tools
- ✅ Flashcard generation
- ✅ Exam mode optimization
- ✅ Formula-only mode
- ✅ Revision highlights
- ✅ Mistake warnings

</td>
<td width="50%">

### 💾 Export & Share
- ✅ PDF export (jsPDF)
- ✅ Markdown export
- ✅ Anki deck export (.apkg)
- ✅ Copy to clipboard
- ✅ User history tracking

</td>
</tr>
</table>

---

## 🎬 Demo

### Live Demo
🔗 **[Try QuickSheet AI](https://quicksheet-ai.vercel.app)** *(Coming soon)*

### Screenshots

<details>
<summary>📸 Click to view screenshots</summary>

#### Upload Interface
![Upload](https://via.placeholder.com/800x400/8B5CF6/ffffff?text=Upload+Interface)

#### Generated Cheat Sheet
![Cheatsheet](https://via.placeholder.com/800x400/3B82F6/ffffff?text=Generated+Cheat+Sheet)

#### Flashcards View
![Flashcards](https://via.placeholder.com/800x400/10B981/ffffff?text=Flashcards)

#### Chat Assistant
![Chat](https://via.placeholder.com/800x400/F59E0B/ffffff?text=AI+Chat+Assistant)

</details>

### Video Demo
🎥 **[Watch Demo on YouTube](https://youtube.com)** *(Coming soon)*

---

## 🚀 Quick Start

### Prerequisites

- **Node.js** 16+ and npm
- **Python** 3.8+
- **Groq API Key** ([Get free key](https://console.groq.com/keys))
- **Supabase Account** ([Sign up free](https://supabase.com))
- **Google OAuth Client ID** (optional, for authentication)

### Installation

**1. Clone the repository**
```bash
git clone https://github.com/yourusername/quicksheet-ai.git
cd quicksheet-ai
```

**2. Install dependencies**
```bash
npm install
```

**3. Setup environment variables**
```bash
cp .env.example .env
```

Edit `.env` with your credentials:
```env
# Required
GROQ_API_KEY_CHEATSHEET=your_groq_api_key_here
GROQ_API_KEY_CHAT=your_groq_api_key_here
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key

# Authentication (recommended for production)
GOOGLE_CLIENT_ID=your_google_client_id

# Development (optional - bypasses auth)
ALLOW_DEV_AUTH=true
DEV_USER_ID=dev-user-test
```

**4. Run the application**
```bash
npm run dev:all
```

This starts:
- 🔧 Backend: http://127.0.0.1:8000
- 🎨 Frontend: http://localhost:8080

**5. Open your browser**

Navigate to http://localhost:8080 and start generating cheat sheets!

---

## 📖 Documentation

### How It Works

1. Frontend uploads files and options to the RAG endpoint.
2. Backend extracts text, chunks it, embeds, and retrieves top-K chunks.
3. Groq generates structured JSON.
4. Frontend renders the cheat sheet and flashcards; export is available.

### API Endpoints

#### Generate Cheat Sheet
```http
POST /api/v1/rag/cheatsheet
Content-Type: multipart/form-data
```

**Request Parameters:**

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `files[]` | File | ✅ | PDF, DOCX, PPTX, or TXT files |
| `query` | string | ❌ | Custom query for focused extraction |
| `top_k` | int | ❌ | Number of chunks to retrieve (default: 5) |
| `chunk_size` | int | ❌ | Size of text chunks (default: 1000) |
| `chunk_overlap` | int | ❌ | Overlap between chunks (default: 200) |
| `flashcards` | bool | ❌ | Generate flashcards |
| `flashcard_count` | int | ❌ | Number of flashcards (5–10) |
| `fast_mode` | bool | ❌ | Skip detailed processing |

<details>
<summary>📄 Response Schema</summary>

```json
{
  "title": "string",
  "one_line_summary": "string",
  "definitions": [{ "term": "string", "definition": "string" }],
  "core_formulas": [{ "formula": "string", "description": "string", "variables": "string" }],
  "key_concepts": [{ "concept": "string", "explanation": "string", "importance": "string" }],
  "diagrams": ["string"],
  "comparison_table": { "headers": ["string"], "rows": [["string"]] },
  "important_metrics": ["string"],
  "mistakes_to_avoid": ["string"],
  "flashcards": [{ "front": "string", "back": "string" }],
  "original_words": 0,
  "compressed_words": 0
}
```

</details>

#### Chat with Documents
```http
POST /api/v1/chat/ask
Content-Type: application/json

{
  "message": "string",
  "context_ids": ["string"]
}
```

#### Get User History
```http
GET /api/v1/history
Authorization: Bearer <token>
```

### Environment Variables

<details>
<summary>🔧 Complete Environment Variable Reference</summary>

#### Required

| Variable | Description | Example |
|----------|-------------|---------|
| `GROQ_API_KEY_CHEATSHEET` | Groq API key for cheatsheet generation | `gsk_...` |
| `GROQ_API_KEY_CHAT` | Groq API key for chat functionality | `gsk_...` |
| `SUPABASE_URL` | Supabase project URL | `https://xxx.supabase.co` |
| `SUPABASE_SERVICE_ROLE_KEY` | Supabase service role key | `eyJ...` |

#### Authentication (Recommended)

| Variable | Description | Default |
|----------|-------------|---------|
| `GOOGLE_CLIENT_ID` | Google OAuth client ID | — |
| `ALLOW_DEV_AUTH` | Bypass OAuth in development | `false` |
| `DEV_USER_ID` | Development user ID | `dev-user-test` |

#### Model Configuration (Optional)

| Variable | Description | Default |
|----------|-------------|---------|
| `MODEL_NAME` | LLM model to use | `llama-3.1-8b-instant` |
| `LLM_TEMPERATURE` | Model temperature (0–1) | `0.3` |
| `MAX_TOKENS_PER_CHUNK` | Max tokens per chunk | `4000` |

#### Processing Limits (Optional)

| Variable | Description | Default |
|----------|-------------|---------|
| `MAX_FILE_SIZE_MB` | Max file size in MB | `10` |
| `MAX_PDF_PAGES` | Max PDF pages to process | `50` |
| `RAG_MAX_FILES` | Max files per upload | `4` |

#### RAG Configuration (Optional)

| Variable | Description | Default |
|----------|-------------|---------|
| `RAG_CHUNK_SIZE` | Text chunk size | `1000` |
| `RAG_CHUNK_OVERLAP` | Chunk overlap | `200` |
| `RAG_TOP_K` | Top chunks to retrieve | `5` |
| `RAG_EMBEDDING_MODEL` | Embedding model | `all-MiniLM-L6-v2` |

</details>

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────┐
│                    FRONTEND (React)                      │
│  ┌────────────┐  ┌────────────┐  ┌────────────┐        │
│  │  Upload UI │  │ Cheatsheet │  │   Chat     │        │
│  │  Component │  │  Display   │  │ Assistant  │        │
│  └────────────┘  └────────────┘  └────────────┘        │
└──────────────────────┬──────────────────────────────────┘
                       │ HTTP/REST
                       ▼
┌─────────────────────────────────────────────────────────┐
│                  BACKEND (FastAPI)                       │
│  ┌────────────────────────────────────────────┐         │
│  │         RAG Pipeline                       │         │
│  │  ┌─────────┐ ┌─────────┐ ┌─────────┐     │         │
│  │  │ Extract │→│  Chunk  │→│  Embed  │     │         │
│  │  └─────────┘ └─────────┘ └─────────┘     │         │
│  │          ↓                                 │         │
│  │  ┌─────────────────────────────┐          │         │
│  │  │   FAISS Vector Store        │          │         │
│  │  └─────────────────────────────┘          │         │
│  │          ↓                                 │         │
│  │  ┌─────────┐ ┌──────────┐                │         │
│  │  │Retrieve │→│ Generate │                │         │
│  │  └─────────┘ └──────────┘                │         │
│  └────────────────────────────────────────────┘         │
└──────────────┬───────────────┬──────────────────────────┘
               │               │
               ▼               ▼
        ┌───────────┐   ┌──────────┐
        │  Groq AI  │   │ Supabase │
        │    API    │   │    DB    │
        └───────────┘   └──────────┘
```

---

## 🛠️ Tech Stack

### Frontend
- **React 18** + **TypeScript** + **Vite**
- **Tailwind CSS** + **shadcn/ui** + **Radix UI**
- **Framer Motion** — Smooth animations
- **Lucide React** — Icon library
- **jsPDF** — PDF export
- **React Markdown** — Markdown rendering

### Backend
- **FastAPI** + **Uvicorn**
- **Groq** — Ultra-fast LLM inference (`llama-3.1-8b-instant`)
- **LangChain** + **FAISS** + **Sentence Transformers**
- **pdfplumber**, **python-docx**, **python-pptx**

### Infrastructure
- **Supabase** — PostgreSQL database + Auth
- **Vercel** — Frontend hosting
- **Railway** — Backend hosting
- **Google OAuth** — Authentication

---

## 📁 Project Structure

```
quicksheet-ai/
├── app/                      # FastAPI backend
│   ├── main.py              # Main application entry
│   ├── config.py            # Configuration management
│   ├── routes/
│   │   ├── rag.py          # RAG cheatsheet endpoint
│   │   ├── chat.py         # Chat assistant endpoint
│   │   └── history.py      # User history endpoint
│   ├── services/
│   │   ├── rag_service.py  # RAG pipeline
│   │   ├── llm_service.py  # LLM integration
│   │   └── auth_service.py # Authentication
│   └── utils/
│       ├── extractors.py   # Text extraction
│       └── validators.py   # Input validation
│
├── src/                     # React frontend
│   ├── components/
│   │   ├── Upload.tsx      # File upload interface
│   │   ├── Cheatsheet.tsx  # Cheatsheet display
│   │   ├── Flashcards.tsx  # Flashcard viewer
│   │   └── Chat.tsx        # Chat interface
│   ├── hooks/              # Custom React hooks
│   ├── lib/                # Utilities
│   ├── types/              # TypeScript types
│   └── App.tsx             # Main app component
│
├── public/                 # Static assets
├── .env.example            # Environment template
├── package.json            # Node dependencies
├── requirements.txt        # Python dependencies
├── vercel.json             # Vercel config
├── railway.json            # Railway config
└── README.md               # This file
```

---

## 🚢 Deployment

### Deploy to Vercel + Railway

#### 1. Deploy Backend (Railway)

```bash
# Install Railway CLI
npm install -g @railway/cli

railway login
railway init

# Set environment variables
railway variables set GROQ_API_KEY_CHEATSHEET=your_key
railway variables set GROQ_API_KEY_CHAT=your_key
railway variables set SUPABASE_URL=your_url
railway variables set SUPABASE_SERVICE_ROLE_KEY=your_key

railway up
```

Your backend will be available at: `https://your-app.railway.app`

#### 2. Deploy Frontend (Vercel)

```bash
# Install Vercel CLI
npm install -g vercel

vercel login

# Update vercel.json destination with your Railway URL, then:
vercel --prod

# Set environment variable
vercel env add VITE_API_URL production
# Enter: https://your-app.railway.app
```

Your frontend will be available at: `https://your-app.vercel.app`

<details>
<summary>📝 Manual Deployment Steps</summary>

**Railway (Backend)**
1. Go to [railway.app](https://railway.app) and create a new project
2. Connect your GitHub repo
3. Add environment variables
4. Uses `railway.json` with `uvicorn app.main:app --host 0.0.0.0 --port $PORT`

**Vercel (Frontend)**
1. Go to [vercel.com](https://vercel.com) and import your GitHub repo
2. Framework: Vite | Root: `./` | Build: `npm run build` | Output: `dist`
3. Add environment variables
4. `vercel.json` rewrites `/api/v1/*` to your Railway backend URL

</details>

---

## 🧪 Development

```bash
# Run both frontend and backend
npm run dev:all

# Run backend only
npm run dev:api

# Run frontend only
npm run dev:ui

# Run tests
cd app && pytest       # Backend
npm run test           # Frontend

# Production build
npm run build
npm run preview
```

---

## 🐛 Troubleshooting

<details>
<summary>Common Issues & Solutions</summary>

| Issue | Cause | Solution |
|-------|-------|----------|
| `401 Unauthorized` | Missing/invalid OAuth token | Set `GOOGLE_CLIENT_ID` or enable `ALLOW_DEV_AUTH=true` |
| `500 Internal Server Error` | Missing environment variables | Verify `GROQ_API_KEY_CHEATSHEET`, `SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY` |
| `Failed to fetch` | Backend unreachable | Check backend is on port 8000; verify `vercel.json` rewrite URL |
| No extractable text | Scanned/image-based PDF | Install `tesseract-ocr` for OCR support |
| Slow first run | Sentence-transformers downloading (~500MB) | Wait for initial download; subsequent runs will be fast |
| Port already in use | Another process on port 8000 | `lsof -ti:8000 \| xargs kill -9` (macOS/Linux) |

</details>

---

## 📊 Performance

| Metric | Value |
|--------|-------|
| Generation Time | 5–30 seconds |
| Supported Formats | PDF, DOCX, PPTX, TXT |
| File Size Limit | 10 MB per file |
| Batch Upload | Up to 4 files |
| Embedding Model | all-MiniLM-L6-v2 (384 dimensions) |
| Retrieval | Top-5 most relevant chunks |
| Cost | $0 (Groq free tier) |

---

## 🗺️ Roadmap

- [x] Multi-format document support
- [x] RAG pipeline with FAISS
- [x] Flashcard generation
- [x] Chat assistant
- [x] User authentication
- [ ] Anki deck export (.apkg)
- [ ] Voice-to-cheatsheet (Whisper)
- [ ] Progress tracking UI
- [ ] Multi-document comparison
- [ ] Collaborative study groups
- [ ] Mobile app (React Native)
- [ ] Browser extension
- [ ] Spaced repetition scheduler

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

Please follow existing code style, write clear commit messages, add tests for new features, and keep PRs focused and small.

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

## 👥 Authors

**Your Name**
- GitHub: [@yourusername](https://github.com/yourusername)
- LinkedIn: [Your Name](https://linkedin.com/in/yourname)
- Email: your.email@example.com

---

## 🙏 Acknowledgments

- [Groq](https://groq.com) for ultra-fast LLM inference
- [Supabase](https://supabase.com) for database and authentication
- [FastAPI](https://fastapi.tiangolo.com) for the amazing Python framework
- [shadcn/ui](https://ui.shadcn.com) for beautiful React components
- [LangChain](https://langchain.com) for LLM orchestration tools
- [Sentence Transformers](https://www.sbert.net) for embedding models

---

## 📞 Support

- 📧 Email: support@quicksheet.ai
- 💬 Discord: [Join our community](https://discord.gg/quicksheet)
- 🐦 Twitter: [@QuickSheetAI](https://twitter.com/QuickSheetAI)
- 📖 Docs: [docs.quicksheet.ai](https://docs.quicksheet.ai)

---

<div align="center">

If you found this helpful, please consider giving it a ⭐

[Report Bug](https://github.com/yourusername/quicksheet-ai/issues) • [Request Feature](https://github.com/yourusername/quicksheet-ai/issues) • [Join Community](https://discord.gg/quicksheet)

</div>

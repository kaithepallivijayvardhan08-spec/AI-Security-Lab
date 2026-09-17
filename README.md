# 🛡️ AI Security Lab

### Practical AI Security Learning & Testing Environment

> **Learn the architecture. Understand the attack surface. Test safely. Build better security thinking.**

## 👋 About This Project

I am a Computer Science and Engineering student with a strong interest in **Cybersecurity, Artificial Intelligence, Linux, and Application Security**.

I created this repository as my personal **AI Security Lab** to learn AI security in a practical way.

My goal is not to memorize a list of vulnerabilities or practice only one vulnerable chatbot.

My goal is to understand **different AI applications, different technologies, different architectures, different trust boundaries, and different security risks**.

AI applications are changing quickly. A new application may use LLMs, RAG, AI Agents, MCP, Voice AI, Multimodal AI, browser automation, coding agents, memory systems, vector databases, APIs, cloud services, local models, or multi-agent systems.

If I understand the architecture behind these systems, I can build a better security mindset when I meet a new AI feature or application.

## 🎯 Main Goal

When I see a new AI application, I want to be able to think:

```text
New AI Application
        |
        v
What type of application is this?
        |
        v
What technologies are used?
        |
        v
How does the data flow?
        |
        v
What is trusted?
What is untrusted?
        |
        v
What can the AI access?
        |
        v
What actions can the AI perform?
        |
        v
Where are the security boundaries?
        |
        v
What can go wrong?
        |
        v
How should it be secured?
```

## 🧠 What This Lab Covers

| Area | What I Learn |
|---|---|
| AI Applications | Basic AI application architecture |
| LLM Applications | LLM integration and security |
| Prompt Injection | Instruction and input boundaries |
| RAG | Retrieval pipelines and document security |
| Vector Databases | Embeddings, retrieval and isolation |
| AI Agents | AI systems that use tools |
| Tool Security | Permissions and least privilege |
| MCP | Model Context Protocol architecture |
| Voice AI | Speech → AI → action pipelines |
| Multimodal AI | Text, image, PDF, audio and video |
| Browser Agents | AI-controlled browser workflows |
| AI Memory | Persistent context and data isolation |
| Coding Agents | AI interacting with code and development tools |
| Multi-Agent AI | Multiple AI agents working together |
| AI SaaS | Authentication, tenants and data isolation |
| Containers | Docker-based AI applications |
| Linux | Linux and AI infrastructure |
| APIs | AI + REST/API security |
| Databases | AI applications connected to databases |
| AI Red Teaming | Authorized testing in controlled labs |
| AI Security Testing | Understanding and testing AI attack surfaces |

# 🏗️ Core Architecture

The repository has four main layers:

```text
                         AI SECURITY LAB
                                |
          +---------------------+---------------------+
          |                     |                     |
          v                     v                     v
   LEARNING LAYER          LAB LAYER             TOOL LAYER
          |                     |                     |
   Lessons/Notes          Installable Labs      Environment
   Diagrams               Isolated Resources    Lab Manager
   Exercises              Lab-specific Deps    Storage Checks
   Progress               Cleanup              Verification
          |                     |
          +---------------------+
                    |
                    v
             PRACTICE RESULTS
                    |
                    v
             NOTES / REPORTS
```

The important design principle is:

> **The lab environment is temporary. The knowledge and notes are persistent.**

# 🧪 Modular Lab Architecture

The repository does **not** install every AI technology at once.

Each learning area is an independent lab.

```text
AI Security Lab
|
+-- Lab 01: Web AI
+-- Lab 02: LLM Security
+-- Lab 03: RAG
+-- Lab 04: AI Agents
+-- Lab 05: MCP
+-- Lab 06: Multimodal AI
+-- Lab 07: Voice AI
+-- Lab 08: Browser Agents
+-- Lab 09: AI Memory
+-- Lab 10: Coding Agents
+-- Lab 11: Multi-Agent Systems
+-- Lab 12: AI SaaS / Multi-Tenant
+-- Lab 13: Local AI
+-- Lab 14: AI Security Testing
```

A learner can install one lab, study it, document it, remove it, and continue to the next one.

```text
Install Lab 01
      |
      v
Learn + Practice
      |
      v
Save Notes / Results
      |
      v
Remove Lab 01
      |
      v
Free Storage
      |
      v
Install Lab 02
      |
      v
Learn + Practice
```

# 💾 Storage-First Design

AI software can use a lot of storage.

The base setup contains only common requirements such as Git, Python, Docker, Docker Compose, and basic command-line utilities.

It does **not** automatically install:

- Large local LLMs
- Ollama models
- PyTorch for every lab
- Large Hugging Face models
- Large datasets
- Every vulnerable application

This prevents unnecessary disk usage.

# 🤖 Ollama — Optional, With Two Use Cases

Ollama is intentionally **optional**.

### Mode 1 — Optional Local AI Lab

A learner can choose to study local LLM security.

```text
AI Security Lab
      |
      v
Optional Local AI
      |
      v
Ollama
      |
      v
Local LLM
      |
      v
AI Application
```

### Mode 2 — Ollama Required by a Specific Lab

A particular lab may teach an application that specifically uses Ollama.

```text
Install Specific Lab
        |
        v
Lab checks dependencies
        |
        v
Ollama required?
     /       \
   No         Yes
   |           |
   v           v
Continue    Check Storage
               |
               v
        Show requirements
               |
               v
         User confirms
               |
               v
       Install / configure
               |
               v
            Run Lab
```

Large models are never silently downloaded. Before a large local-AI installation, the lab should explain its storage requirement and allow the learner to decide.

# 🧩 Lab Lifecycle

Every lab follows:

```text
DISCOVER
   |
   v
INSTALL
   |
   v
VERIFY
   |
   v
LEARN
   |
   v
PRACTICE
   |
   v
DOCUMENT
   |
   v
CLEAN UP
   |
   v
REMOVE
```

A future lab manager is designed around:

```bash
./lab list
./lab install <lab>
./lab status <lab>
./lab start <lab>
./lab stop <lab>
./lab remove <lab>
./lab cleanup <lab>
```

# 🧹 Safe Cleanup

Removing a lab should not blindly delete unrelated files.

Each lab should know about its own:

```text
Lab Manifest
|
+-- Source directory
+-- Python environment
+-- Docker containers
+-- Docker volumes
+-- Docker images
+-- Temporary datasets
+-- Cache
+-- Optional local model resources
```

Before cleanup:

```text
Remove Lab
    |
    v
Read Lab Manifest
    |
    v
Identify Resources
    |
    v
Show What Will Be Removed
    |
    v
User Confirmation
    |
    v
Clean Lab Resources
    |
    v
Verify Cleanup
```

Personal notes, progress, and saved reports are kept separately.

# 🔐 Isolation Philosophy

The labs are intended to run in controlled environments.

```text
                         KALI LINUX
                              |
                       AI SECURITY LAB
                              |
              +---------------+---------------+
              |               |               |
              v               v               v
           LAB 01          LAB 02          LAB 03
           Web AI            RAG            Agent
              |               |               |
           Docker           Docker          Docker
              |               |               |
           Isolated         Isolated        Isolated
           Resources        Resources       Resources
```

One lab should not require another lab to remain installed unless explicitly documented.

# 📚 Learning Before Testing

This project is designed around:

```text
Understand
    ↓
Map Architecture
    ↓
Understand Data Flow
    ↓
Identify Trust Boundaries
    ↓
Identify Capabilities
    ↓
Study Attack Surface
    ↓
Perform Safe Local Test
    ↓
Understand Root Cause
    ↓
Think About the Fix
    ↓
Document
```

I do not want to simply run commands and copy results.

I want to understand **why something works and why something can become insecure**.

# 🏛️ Example: AI Application Architecture

```text
USER
 |
 v
+-------------+
|  FRONTEND   |
+-------------+
       |
       v
+-------------+
|   BACKEND   |
+-------------+
       |
       +-----------> DATABASE
       |
       v
+-------------+
|     LLM     |
+-------------+
       |
       +-----------> TOOLS / APIs
       |
       +-----------> MEMORY
       |
       +-----------> RAG
```

# 📚 Example: RAG Architecture

```text
DOCUMENTS
    |
    v
PARSER
    |
    v
EMBEDDINGS
    |
    v
VECTOR DATABASE
    ^
    |
QUESTION -> RETRIEVAL
               |
               v
              LLM
               |
               v
             ANSWER
```

Security questions include:

- Who can access documents?
- Can one user retrieve another user's data?
- Which information is trusted?
- Can retrieved content contain instructions?
- What happens when untrusted documents enter the context?

# 🛠️ Example: AI Agent

```text
USER
 |
 v
+---------+
|  AGENT  |
+---------+
    |
    +------> FILES
    +------> API
    +------> DATABASE
    +------> BROWSER
```

Focus areas include tool permissions, least privilege, human approval, and capability boundaries.

# 🔌 Example: MCP

```text
+----------+       +-----------+       +-----------+
| AI HOST  | ----> | MCP CLIENT| ----> | MCP SERVER|
+----------+       +-----------+       +-----------+
                                             |
                                  +----------+----------+
                                  |          |          |
                                  v          v          v
                                TOOL       DATA       API
```

# 🎤 Example: Voice AI

```text
MIC
 |
 v
Speech-to-Text
 |
 v
LLM
 |
 +------> Tools / APIs
 |
 v
Text-to-Speech
 |
 v
SPEAKER
```

# 👁️ Example: Multimodal AI

```text
 TEXT
 IMAGE
 PDF  ---> MULTIMODAL AI
 AUDIO
 VIDEO
```

# 🌐 Example: Browser Agent

```text
USER
 |
 v
LLM
 |
 v
BROWSER
 +--> READ
 +--> CLICK
 +--> TYPE
 +--> NAVIGATE
 +--> SUBMIT
```

# 🧠 Example: AI Memory

```text
USER
 |
 v
AI APPLICATION
 |
 +---- Current Context
 +---- Conversation History
 +---- Long-Term Memory
 +---- External Knowledge
```

# 👨‍💻 Example: Coding Agent

```text
USER
 |
 v
CODING AGENT
 |
 +---- Codebase
 +---- Terminal
 +---- Git
 +---- Package Manager
 +---- APIs
 +---- Filesystem
```

# 🧪 Daily Practice Method

For every lab, I answer:

1. What application am I studying?
2. What technologies does it use?
3. How does its architecture work?
4. What data enters the system?
5. What is trusted?
6. What is untrusted?
7. What can the AI access?
8. What actions can it perform?
9. What is the attack surface?
10. Why could a security weakness happen?
11. What would a secure design look like?
12. Can I recognize the same architecture in another application?

# 📅 30-Day Learning Path

## Week 1 — AI Fundamentals

1. Map an AI application
2. Frontend and backend
3. LLM integration
4. Data flow
5. Trust boundaries
6. Authentication and authorization
7. Architecture review

## Week 2 — RAG

8. RAG architecture
9. Document parsing
10. Embeddings
11. Vector databases
12. Retrieval security
13. Indirect instruction concepts
14. Data isolation

## Week 3 — Agents

15. AI agents
16. Tool calling
17. Tool permissions
18. Filesystem tools
19. API and database tools
20. Browser agents
21. AI memory

## Week 4 — Modern AI

22. MCP
23. MCP security
24. Multimodal AI
25. Voice AI
26. Coding agents
27. Multi-agent systems
28. AI SaaS and multi-tenancy
29. Local AI and security testing
30. Analyze a completely new AI feature from its architecture

# 🧰 Base Technology

The base environment is designed around:

```text
Kali Linux
    |
    +-- Python
    +-- Git
    +-- Docker
    +-- Docker Compose
    +-- Bash
    +-- curl
    +-- jq
```

Lab-specific technologies are installed only when needed.

# 💽 Storage Philosophy

> **Install what you are learning. Learn it. Save your knowledge. Remove the temporary environment. Move to the next architecture.**

Example:

```text
56 GB Free
   |
   v
Install Web AI Lab
   |
   v
Learn
   |
   v
Save Notes
   |
   v
Remove Web AI Lab
   |
   v
Storage Recovered
   |
   v
Install RAG Lab
```

# 🛡️ Responsible Security

This repository is intended for education, security research, local laboratory practice, authorized testing, and defensive security learning.

The vulnerable applications and testing exercises should be used only in environments where the learner has permission to test.

**Never test systems you do not own or have authorization to test.**

# 📈 Learning Philosophy

```text
Don't just run the command.
        ↓
Understand the command.
        ↓
Understand the application.
        ↓
Understand the architecture.
        ↓
Understand the security boundary.
        ↓
Understand the weakness.
        ↓
Understand the fix.
        ↓
Document what you learned.
```

### Build → Break Safely → Understand → Fix → Document → Repeat

# 👨‍💻 About Me

I am a **Computer Science and Engineering student** interested in:

- 🔐 Cybersecurity
- 🤖 Artificial Intelligence
- 🛡️ AI Security
- 🐧 Linux
- 🌐 Web Security
- 🔬 Security Research
- 💻 Software Development

I learn best by **building projects, testing systems in controlled environments, understanding how things work, and learning from what breaks**.

This repository is part of my journey toward developing practical skills in **Cybersecurity and AI Security**.

# 📈 Future Direction

This lab will continue to grow as I learn new AI architectures and technologies.

The goal is not to make the repository a collection of random vulnerable applications.

The goal is to build a structured environment where each lab teaches something **different**.

```text
New Technology
      |
      v
New Architecture
      |
      v
New Trust Boundary
      |
      v
New Attack Surface
      |
      v
New Security Lessons
```

## 🔐 Learn the Architecture. Understand the Attack Surface. Build More Secure AI.

**— K. Vijay Vardhan**

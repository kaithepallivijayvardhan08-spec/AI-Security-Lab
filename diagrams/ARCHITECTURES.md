# Architecture Diagrams

## Basic AI Application

```text
USER
 |
 v
FRONTEND
 |
 v
BACKEND
 |
 +----> DATABASE
 |
 v
LLM
 |
 +----> TOOLS / APIs
 +----> RAG
 +----> MEMORY
```

## RAG

```text
DOCUMENTS -> PARSER -> EMBEDDINGS -> VECTOR DB
                                      ^
                                      |
QUESTION -> RETRIEVAL ---------------+
                                      |
                                      v
                                     LLM
```

## Agent

```text
USER -> AGENT
           |
       +---+---+---+
       v       v   v
     FILES    API  DB
```

## MCP

```text
AI HOST -> MCP CLIENT -> MCP SERVER -> TOOL / DATA
```

## Voice

```text
MIC -> STT -> LLM -> TOOLS -> TTS -> SPEAKER
```

## Browser Agent

```text
USER -> LLM -> BROWSER
               +-> READ
               +-> CLICK
               +-> TYPE
               +-> NAVIGATE
```

## Multi-Agent

```text
              MANAGER
             /   |   \
            v    v    v
        RESEARCH CODE BROWSER
           \     |     /
            +----+----+
                 |
                DATA
```

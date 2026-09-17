# Storage Policy

AI software can consume significant disk space through Docker images, volumes, Python caches, PyTorch, model files, datasets, and build caches.

Rules:

1. Base setup stays lightweight.
2. Install one lab at a time when practical.
3. Large dependencies must be documented before installation.
4. Ollama is optional.
5. Large local models are optional.
6. Check storage before large downloads.

Useful checks:

```bash
df -h /
docker system df
```

Do not run destructive cleanup commands blindly. Inspect first.

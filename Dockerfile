FROM python:3.13-alpine

ENV PYTHONDONTWRITEBYTECODE=1 \
PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY version.txt ollama_client.py llm.py ./

ENTRYPOINT ["python", "llm.py"]
CMD ["--help"]
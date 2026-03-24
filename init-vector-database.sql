CREATE DATABASE "vectordb-n8n";

GRANT ALL PRIVILEGES ON DATABASE "vectordb-n8n" TO n8n;

\c vectordb-n8n

CREATE EXTENSION IF NOT EXISTS vector;

GRANT ALL PRIVILEGES ON SCHEMA public TO n8n;

CREATE TABLE public.embeddings
(
    id bigserial PRIMARY KEY,
    embedding vector(3072) NOT NULL,
    text text,
    metadata jsonb
);
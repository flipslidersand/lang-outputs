# Python

Public projects in this language, hosted in the [flipslidersand-labs](https://github.com/flipslidersand-labs) organization. Descriptions are the repositories' own.

Python の公開プロジェクトです。組織 [flipslidersand-labs](https://github.com/flipslidersand-labs) に置いています。説明は各リポジトリ自身のものです。

| Project | Description |
|---|---|
| [doc-ingest](https://github.com/flipslidersand-labs/doc-ingest) | Document ingestion pipeline: external API docs / design docs / arxiv papers into Qdrant |
| [nugget-rag-eval](https://github.com/flipslidersand-labs/nugget-rag-eval) | Nugget retrieval vs full-chunk RAG evaluation harness |
| [search-engine](https://github.com/flipslidersand-labs/search-engine) | BM25 + vector hybrid search & RAG REST API (FastAPI + SQLite FTS5 + Ollama) |
| [forge](https://github.com/flipslidersand-labs/forge) | Automatic GPU kernel optimizer: Triton kernel search for PyTorch operations |
| [marketplace-lakehouse-reference](https://github.com/flipslidersand-labs/marketplace-lakehouse-reference) | Reference lakehouse architecture using PySpark, Delta Lake and Medallion Architecture |

## Entries

| Entry | What | Verified by |
|---|---|---|
| [wordfreq.py](wordfreq.py) | Word frequency, top 3 ([spec](../spec/README.md)) | `bash scripts/verify.sh` compares output with `spec/expected.txt` |

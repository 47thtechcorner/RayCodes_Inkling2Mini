# Production Runtime & Memory Benchmark Report

> **Hardware Baseline:** 4GB VRAM / 16GB System RAM (Windows PowerShell)  
> **Active Model Footprint:** Inkling 2 Mini (AD-IQ1_S Quant: 6.88 GB via llama-cpp-python)

---

### Task Performance & Memory Usage

| Task | Capability Tested | Execution Time | VRAM Allocated | System RAM Used |
| :--- | :--- | :--- | :--- | :--- |
| **Vision-Guided Interface Automator** | UI Spatial Coordinate Grounding | {{t1}}s | 3.1 GB | 4.1 GB |
| **Document & Invoice Auditor** | Multimodal Dense OCR Audit | {{t2}}s | 3.1 GB | 4.8 GB |
| **Autonomous MCP Research Swarm** | Multi-Tool Database Telemetry | {{t3}}s | 3.1 GB | 3.8 GB |

---

### Memory Allocation Breakdown

- **Total Weights on Disk:** 6.88 GB (`Inkling-2-Mini-AD-IQ1_S.gguf`)
- **GPU VRAM Offload:** 3.1 GB (n_gpu_layers=6 safely fitting within 4GB VRAM limit)
- **Host System RAM:** 3.8 GB – 4.8 GB (Streams remaining MoE layers + 2048-token looped KV cache)
- **Total Pipeline Execution:** ~{{total_t}}s


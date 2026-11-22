[![Inkling 2 Mini: 5.4B Active Vision AI Ties Opus 5.5 Locally on Your Laptop!](https://img.youtube.com/vi/IW4a2lPjNak/maxresdefault.jpg)](https://youtu.be/IW4a2lPjNak)

# Inkling 2 Mini: 5.4B Active Vision AI Ties Opus 5.5 Locally on Your Laptop!

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Model Size](https://img.shields.io/badge/Total%20Params-26.4B%20(5.4B%20Active)-orange.svg)](https://huggingface.co/thinkingmachines/Inkling-2-Mini)
[![SWE-Bench](https://img.shields.io/badge/SWE--Bench%20Verified-79.2%25-green.svg)](https://thinkingmachines.ai/news/inkling-2-mini/)
[![Context Window](https://img.shields.io/badge/Context%20Window-1M%20Tokens-purple.svg)](https://thinkingmachines.ai/news/inkling-2-mini/)
[![Local Footprint](https://img.shields.io/badge/Local%20Footprint-6.88GB%20(AD--IQ1__S)-red.svg)](https://huggingface.co/AtomicChat/Inkling-2-Mini-GGUF)

> "Inkling 2 Mini executes a 24-layer decoder-only looped transformer with 8-of-128 sparse Mixture-of-Experts routing, looping its middle 12 layers three times per token to deliver 5.4B effective active parameters of deep internal reasoning without bloated chain-of-thought text."

---

## 📊 Production Test Workflows

| Workflow | Capability Tested | Input Artifact | Expected Deliverable |
| :--- | :--- | :--- | :--- |
| **Vision-Guided Interface Automator** | Pixel-level button grounding and spatial coordinate detection | Messy desktop application screenshot with distorted UI elements | Interactive visual execution trace mapping exact click coordinates |
| **Document & Invoice Auditor** | Dense tabular OCR parsing and 1M context token analysis | Multi-page unstructured financial document scan | Interactive financial dashboard highlighting ledger discrepancies |
| **Autonomous Research Swarm** | Protocol-driven multi-tool synthesis and fact verification | Complex engineering query requiring external verification | Comprehensive technical report with verified external sources |

---

## ⚡ Quick Start (Windows PowerShell)

### Step 1: Setup Environment, Download Weights & Register Runtime

```powershell
# Create and activate virtual environment
python -m venv .venv
.\.venv\Scripts\Activate.ps1

# Install dependencies and Hugging Face downloader
pip install --upgrade pip
pip install -U huggingface_hub requests pillow

# Enable NVIDIA CUDA for 4 GB GPU and install llama-cpp-python with looped-transformer support
$env:CMAKE_ARGS="-DGGML_CUDA=on"
pip install --upgrade --force-reinstall --no-cache-dir git+https://github.com/abetlen/llama-cpp-python.git

# Download the 6.88 GB quantized GGUF weights
hf download AtomicChat/Inkling-2-Mini-GGUF Inkling-2-Mini-AD-IQ1_S.gguf --local-dir models
```

### Step 2: Run Production Pipeline

```powershell
python main.py
```

---

## 🛠️ Practical Use Cases

- 🛡️ **Air-Gapped Enterprise Code Maintenance**: Autonomously trace multi-file software bugs and synthesize minimal corrective patches inside strictly offline security perimeters.
- 🩺 **Visual Accessibility & GUI Orchestration**: Ground interactive screen coordinates directly from raw display frames without relying on fragile DOM trees or accessibility APIs.
- ⚡ **High-Density Document Verification**: Audit dense balance sheets, scanned receipts, and compliance forms across an expansive 1M token context window.
- 📊 **Autonomous Multi-Tool Operations**: Coordinate Model Context Protocol servers to perform live file reads, database lookups, and fact synthesis.

---

## 🗺️ Future Feature Roadmap

- 🚀 **Hardware Speculative Decoding Bridge**: Integrate the dedicated 402MB DSpark draft model for 2.5x faster decode throughput.
- 🔍 **Streaming Visual Grounding Inspector**: Overlay live bounding box heatmaps directly onto active desktop sessions during UI automation.
- 🌐 **Distributed Multi-Agent Swarm Framework**: Enable parallel looped transformer sub-agents collaborating on large-scale repository migrations.
- 📦 **Embedded Client Runtime Packaging**: Compile standalone native binary distributions for zero-dependency edge deployments.

---

## 🏷️ Search Tags & Keywords

`inkling 2 mini`, `inkling mini 2`, `thinking machines`, `thinking machines lab`, `inkling 2`, `inkling mini`, `ollama inkling 2 mini`, `inkling 2 mini ollama`, `inkling 2 mini gguf`, `inkling 2 mini vs qwen 3.8`, `looped transformer`, `local coding agent`, `claude code alternative`, `opus 5.5`, `local coding ai`, `offline coding agent`, `1m context`, `gui automator`, `document auditor`, `mcp tool calling`, `llama.cpp inkling`, `unsloth gguf`, `26b moe`, `5.4b active`, `sub 8gb llm`

# AI General repos

## RAG

- [MicrosoftTwitch 2024-07-17](https://github.com/ytang07/rag_cookbooks)

## Generation Music

- [Github models](https://github.com/nicolaus625/FM4Music)

## LLM

- `ollama` or `vllm`
- `tinygrad`
- Ollama is faster than 

## Configuration

- `hydra` (using `yaml` files to generate configuration)

## Viseme

- Look at `MPEG4-FA` Face Animation


## FineTuning

- Using [`Unsloth`](https://unsloth.ai)

## ASR (Automatic Speech Recognition) / STT (Speech-To-Text)

From [Evaluation of real-time transcriptions using end-to-end ASR models](https://arxiv.org/html/2409.05674v1)

- Batch translation
  - Whisper (End-to-End E2E)
  - Wav2Vec (E2E)
  - Kaldi (Traditional GMM/HMM and modular)


### Low latency ASR

- [E2E Segmentation in a Two-Pass Cascaded Encoder ASR Model, 2023](https://arxiv.org/pdf/2211.15432)



 
## VAD (Voice Activity Detection) - Continuous Integrate and Fire (CIF)

- Best: Silero VAD (good noise, uses Onnx GPU)
- Lightweight: WebRTC VAD:
  - [TestingWebRTC](https://malaya-speech.readthedocs.io/en/stable/load-vad.html)
  - [Coding](https://github.com/wiseman/py-webrtcvad/blob/master/cbits/webrtc/common_audio/vad/vad_core.c)
- Modern VAD

 

- CIF: large models, computationally intensive

### Comparison

- [Review](https://github.com/bigcash/awesome-vad)

- EAT (Efficient Audio Transformer)



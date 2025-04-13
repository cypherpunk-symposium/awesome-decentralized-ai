# decentralized and/or distributed training (deAI)

<br>

## 影森 content

<br>

- [🌲 defai: distributed and decentralized training](#🌲-defai-distributed-and-decentralized-training)
- [🌲 training architectures](#🌲-training-architectures)
  - [diloco](#diloco)
  - [open diloco](#open-diloco)
  - [distro](#distro)
  - [demo](#demo)
  - [swarm parallel](#swarm-parallel)
- [🌲 training tools and techniques](#🌲-training-tools-and-techniques)
  - [libraries](#libraries)
  - [fine-tuning](#fine-tuning)
    - [reinforcement learning from human feedback (rlhf)](#reinforcement-learning-from-human-feedback-rlhf)
    - [direct preference optimization (dpo)](#direct-preference-optimization-dpo)
- [🌲 models](#🌲-models)
  - [deepseek](#deepseek)
  - [anthropic](#anthropic)
- [🌲 ml on blockchains](#🌲-ml-on-blockchains)
- [🌲 security and sybil resistance](#🌲-security-and-sybil-resistance)
- [🌲 hardware and costs](#🌲-hardware-and-costs)

<br>

---

## 🌲 defai: distributed and decentralized training

<br>

- [deai – part 1: exiting the matrix](https://www.bigbrain.holdings/post/deai-part1-exiting-the-matrix/) and [deai - part 2: decentralized training](https://www.bigbrain.holdings/post/dai-part2-decentralized-training/)
- [the past, present, and future of decentralized training](https://www.symbolic.capital/writing/frontier-training): 
    - <i>"decentralized ai training faces three critical hurdles: technical feasibility, achieving trustless and private handling of data and model weights, and scaling networks to compete with centralized solutions."</i>
    - <i>"if we continue with this centralized approach, the only way forward will be to build ever-larger data centers, adding more compute power and investing heavily in advanced networking to avoid bottlenecks. but it's unclear if this model of scaling will even hold."</i>
- [the state of the art of decentralized training](https://www.primeintellect.ai/blog/our-approach-to-decentralized-training)
- [gpt@home: why the future of training is decentralized, by j. amico](https://www.gensyn.ai/articles/gpt-at-home)
- [the scaling hypothesis](https://gwern.net/scaling-hypothesis)

<br>

---

## 🌲 training architectures

<br>

### decentralized training

<br>

- [swarm parallelism: training large models can be surprisingly communication-efficient](https://arxiv.org/pdf/2301.11913)
- [deepmind's diloco: distributed low-communication training of language models](https://arxiv.org/pdf/2311.08105)
- [decentralized training of foundation models in heterogeneous environments](https://arxiv.org/pdf/2206.01288)
- [deepmind's dipaco: distributed path composition](https://arxiv.org/pdf/2403.10616)
- [towards crowdsourced training of large neural networks using decentralized mixture-of-experts](https://arxiv.org/pdf/2002.04013)
- [lo-fi: distributed fine-tuning without communication](https://arxiv.org/pdf/2210.11948)
- [the future of large language model pre-training is federated](https://arxiv.org/abs/2405.10853v2)

<br>

<img src="imgs/training_compute_of_notable_models.png" width="500">
<img src="imgs/market_wide_training_throughput.png" width="500">
<img src="imgs/cloud_compute_cost.png" width="500">

<br>

---

### diloco

<br>

> diloco (distributed low-communication) is a training approach that minimizes communication overhead between distributed nodes.

<br>

- [deepmind's diloco: distributed low-communication training of language models](https://arxiv.org/pdf/2311.08105)

<br>

---

### open diloco

<br>

> open diloco extends the diloco approach with open-source implementations and community-driven improvements.

<br>

- [prime intellect's opendiloco: an open-source framework for globally distributed low-communication training](https://arxiv.org/pdf/2407.07852)
- [a preliminary report on distro](https://github.com/nousresearch/distro/blob/main/a_preliminary_report_on_distro.pdf)

<br>

---

### distro

<br>

> distro (distributed training optimization) focuses on optimizing distributed training workflows and resource utilization.

<br>

---

### demo

<br>

> demo (decentralized model) emphasizes decentralized model training and deployment strategies.

<br>

- [demo: decoupled momentum optimization](https://arxiv.org/pdf/2411.19870)

<br>

---

### swarm parallel

<br>

> swarm parallel enables parallel training across multiple nodes with efficient resource allocation and synchronization.

<br>

- [swarm parallelism: training large models can be surprisingly communication-efficient](https://arxiv.org/pdf/2301.11913)

<br>

--- 

## 🌲 training tools and techniques

<br>

### libraries

<br>

- [ray compute engine](https://github.com/ray-project/ray): ai compute engine. ray consists of a core distributed runtime and a set of ai libraries for accelerating ml workloads
- [deepspeed](https://github.com/deepspeedai/deepspeed): deep learning optimization library that makes distributed training and inference easy, efficient, and effective

<br>

---

### fine-tuning

<br>

- [kiln](https://github.com/kiln-ai/kiln)
- [unsloth](https://github.com/unslothai/unsloth)
- [llama3.2_finetuning](https://github.com/shubhamsaboo/awesome-llm-apps/tree/main/llm_finetuning_tutorials/llama3.2_finetuning)
- [nousresearch's bittensor fine-tuning subnet](https://github.com/nousresearch/finetuning-subnet?tab=readme-ov-file)
- [openai's guide](https://platform.openai.com/docs/guides/fine-tuning)

<br>

<img src="imgs/dpo_and_rlhf.png" width="500">

<br>

#### reinforcement learning from human feedback (rlhf)

<br>

- [nathan lambert's rlhf book](https://rlhfbook.com/)
    - <i>"the most compelling view of how rlhf works is to think of how style applies to interactions you have with language models"</i>

<br>

#### direct preference optimization (dpo)

<br>

> dpo is a method for fine-tuning language models that directly optimizes for human preferences without requiring reinforcement learning.

<br>

---

## 🌲 models

<br>

### deepseek

<br>

- [awesome-deepseek-integration](https://github.com/deepseek-ai/awesome-deepseek-integration)

<br>

#### r1

<br>

> *"deepseek r1 zero will be best known as the first open model trained with 'large-scale reinforcement learning (rl) without supervised fine-tuning (sft) as a preliminary step'."* - nathan lambert

<br>

- [deepseek-r1](https://github.com/deepseek-ai/deepseek-r1) ([ollama](https://ollama.com/library/deepseek-r1))
- [light-r1](https://github.com/qihoo360/light-r1)
- [open-r1](https://github.com/huggingface/open-r1)
- [train-deepseek-r1](https://github.com/fareedkhan-dev/train-deepseek-r1)

<br>

#### v3

<br>

- [deepseek-v3](https://github.com/deepseek-ai/deepseek-v3)

<br>


#### distillation in llms

<br>

- [deepseek r1 recipe for o1](https://www.interconnects.ai/p/deepseek-r1-recipe-for-o1)
- [distillation in llms](https://www.datacamp.com/blog/distillation-llm)
- [rl backlog: openai's many rls, clarifying distillation, and latent reasoning](https://www.interconnects.ai/p/rl-backlog-openais-many-rls-clarifying)

<br>

<img src="imgs/deepseek_aime_accuracy.png" width="500">
<img src="imgs/deepseek_length_per_response.png" width="500">

<br>

---

### anthropic

<br>

- [anthropic-cookbook](https://github.com/anthropics/anthropic-cookbook)

<br>

---

## 🌲 ml on blockchains

<br>

- [opml: optimistic machine learning on blockchain](https://arxiv.org/pdf/2401.17555)

<br>

---

## 🌲 security and sybil resistance

<br>

> <i>to ensure valid participation in a decentralized training network, we need to leverage applied cryptography to verify that computation has been done correctly during training.</i>

<br>

---

### zero-knowledge machine learning (zkml)

<br>

> <i>zero-knowledge machine learning has been used to attest to the performance of a model without revealing the model's underlying weights.</i>

<br>

- [ezkl](https://github.com/zkonduit/ezkl): engine for doing inference for deep learning models and other computational graphs in a zk-snark ([python notebooks](https://github.com/zkonduit/ezkl/tree/main/examples/notebooks))

<br>

---

### fully homomorphic encryption (fhe)

<br>

> <i>the holy grail of privacy-preserving computation, fhe allows for computation on encrypted data. however, to date, pre-training on encrypted data has simply been unfeasible.</i>

<br>

---

### trusted execution environments (tees)

<br>

> <i>tees are much more computationally efficient: model weights could be held and processed in tees to ensure privacy without introducing significant overhead. however, they are only present on specialized hardware.</i>

<br>

---

## 🌲 hardware and costs

<br>

- [building an efficient gpu server with nvidia geforce rtx 4090s/5090s](https://a16z.com/building-an-efficient-gpu-server-with-nvidia-geforce-rtx-4090s-5090s/)

<br>

---

### costs

<br>

```
centralized training's cost of compute = training cost

decentralized training's cost of compute * decentralization multiplier
```

<br>

---

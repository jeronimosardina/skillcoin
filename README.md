# 🪙 SkillCoin – Token personal en Solana Devnet

![Status](https://img.shields.io/badge/network-Solana%20Devnet-29b6f6?style=for-the-badge&logo=solana)
![License](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)

**SkillCoin** es una criptomoneda experimental desarrollada en la blockchain de Solana (Devnet) con el objetivo de aprender a crear, configurar e integrar tokens SPL con metadata e íconos personalizados.

---

 Stack utilizado

- 🐳 Docker (contenedor personalizado)
- 🦀 Rust
- 🧱 Solana CLI y `spl-token`
- 🌐 Pinata + IPFS
- 🧪 Red de pruebas Devnet



 Funcionalidades

- ✅ Wallet personalizada (`dad...`)
- ✅ Mint address con prefijo (`mnt...`)
- ✅ Token SPL con metadata, nombre, símbolo e ícono
- ✅ 1000 unidades minteadas
- ✅ Transferencias habilitadas en Devnet

---

  Explorer

🔎 Ver el token en Solana Explorer (Devnet):  
[https://explorer.solana.com/address/mntASmhk12T2JFYP3BwwEo8rgNfkD5D5bpfhgiAP4iv?cluster=devnet](https://explorer.solana.com/address/mntASmhk12T2JFYP3BwwEo8rgNfkD5D5bpfhgiAP4iv?cluster=devnet)

---
 Instrucciones rápidas

```bash
git clone git@github.com:jeronimosardina/skillcoin.git
cd skillcoin
docker build -t heysolana .
docker run -it --rm -v $(pwd):/solana-token -v $(pwd)/solana-data:/root/.config/solana heysolana

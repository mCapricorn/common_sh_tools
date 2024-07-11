#下载矿池程序-CPU-矿池模式
wget -O aleo-pool-prover https://github.com/zkrush/aleo-pool-client/releases/download/v1.5-testnet-beta/aleo-pool-prover && chmod +x aleo-pool-prover

#启动挖矿程序
nohup ./aleo-pool-prover --pool wss://aleo.zkrush.com:3333 --account zhouxx1 --worker-name mac_m1_pro > prover.log 2>&1 &
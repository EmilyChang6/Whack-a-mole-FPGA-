# Whack-a-mole-FPGA-
利用 FPGA 設計遊戲 - 趣味打地鼠  
## 遊戲介紹
當遊戲開始時，地鼠會隨機從洞中冒出。  
遊戲的目標是用錘子打地鼠的頭，使地鼠回到洞中，以增加玩家的分數。  
(以設計好的 LED 閃爍順序代表地鼠出沒，若在時間內開啟/關閉對應的 switch 使 Led 變暗，將會獲得一分) 
## IO使用
LED 5 顆  
Switch 6 個  
顯示器 4 個（七段顯示器 4 位數）
![image](https://github.com/EmilyChang6/Whack-a-mole-FPGA-/blob/main/DE0.png)
## 操作說明
(1) 啟動遊戲：開啟switch_9  
(2) 當Led亮時，在時間內開啟/關閉對應的switch 使Led變暗，則會獲得一分
（顯示分數在七段顯示器上）  
(3) Reset：關閉switch_9

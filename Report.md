Report :
Tx : 0xb53f2d22a4e7441e892d9c155e6852b951348445c7a55f0c70205e61d17110ed
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 – created the contract at – 0x8dddd8cd2f20ebf70af7c205434d9c88e4f0962b

Tx : 0x5d0cafd7df8fbfc96391060546742ef8d009b94851606a3b78a57263d56669f8
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 – used setText(“Test Text”)
Result → Text was set to “Test Text”

Non-Tx function call :
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 – used helloWorld()
Result → received “Test Text” as response

Tx : 0x4e549c24b01613b26837bc36c3b18ff1101a81411dc2020b316fe9a1f665a815
0xf1ee3175ebe4b9ff80ec0441c9aa66a319a16d75 – used setText(“New awesome text”)
Result → Transaction was reverted. Fail with error 'Caller is not the owner'

Tx : 0xb6edd81267fa0ed9c2d36d3308314aa486a2c79a6a106e9b73cd4597916c7f57
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 – used transferOwnership(0xf1ee3175ebe4b9ff80ec0441c9aa66a319a16d75)
Result → 0xf1ee3175ebe4b9ff80ec0441c9aa66a319a16d75 is the new owner

Non-Tx function call :
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 – used owner()
Result → received 0xf1ee3175ebe4b9ff80ec0441c9aa66a319a16d75 as response

Tx : 0x2165ee56de78e513f89a3810b76977bca3653c508df462a4ee211388ca5f3d13
0xf1ee3175ebe4b9ff80ec0441c9aa66a319a16d75 – used setText(“New awesome text”)
Result → This time the text was set to “New awesome text”

Tx : 0x2733a2b989192cf1eb355bbcffab0640f8f8f64284889bb56707a234932e3956
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 – used setText(“da”)
Result → Transaction was reverted. Fail with error 'Caller is not the owner'

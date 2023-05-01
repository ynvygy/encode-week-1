Report (Goerli) :

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
Result → received  0xf1ee3175ebe4b9ff80ec0441c9aa66a319a16d75 as response

Tx : 0x2165ee56de78e513f89a3810b76977bca3653c508df462a4ee211388ca5f3d13
0xf1ee3175ebe4b9ff80ec0441c9aa66a319a16d75 – used setText(“New awesome text”)
Result → This time the text was set to “New awesome text”

Tx : 0x2733a2b989192cf1eb355bbcffab0640f8f8f64284889bb56707a234932e3956
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 – used setText(“da”)
Result → Transaction was reverted. Fail with error 'Caller is not the owner'

Report (Sepolia) : 

Tx : 0x509b9489642d6291bbdd41dc3484f3663cefa0be79a10aea45a5739579c68eae
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 – created the contract at – 0x8dddd8cd2f20ebf70af7c205434d9c88e4f0962b

Tx : 0x2fe78789a651704f1d5c109cbc2d143c3c937d67ebe854405474ad1419097019
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 – used setText(“test text”)
Result → Text was set to “test text”

Tx : 0x99414f67fca0d473641f7152304ade1a5b87d97ec203c85520537dc7ee0f9e6c
0x3e702e39e0649bd8581d07a5bf1b9e5924d94ce0 → used transferOwnership(0x73047ee0903e8a9a4c4d2448e56bc89850d37e4a)
Result → 0x73047ee0903e8a9a4c4d2448e56bc89850d37e4a is the new owner

Tx : 0xdb8b213e46e62a2f734674a1a6de520e5cc603ddd19aee64aaeb46ca91d9cbcb
0x73047ee0903e8a9a4c4d2448e56bc89850d37e4a – used setText(“test new owner”)
Result → Text was set to “test new owner”

Tx : 0x849ccc77c1cee5c83915ca5c7ba6e1a093cca79cd87140b23aea5db40fde3619
0xc706045555e9302aa2c63b7da55681369949df90 – used setText(“fail”)
Result → Transaction was reverted. Fail with error 'Caller is not the owner'

Tx : 0x7c1ca4c61a9c5c969bf8e0b421af7c6f7ad778578d15504a742b213af24c6a4d
0x73047ee0903e8a9a4c4d2448e56bc89850d37e4a → used transferOwnership(0xc706045555e9302aa2c63b7da55681369949df90)
Result → 0xc706045555e9302aa2c63b7da55681369949df90 is the new owner

Tx : 0x7e6990a5dacbd76106baf0fc12aa5314eef4a39a3bc0a1699ba6468b58890b99
0xc706045555e9302aa2c63b7da55681369949df90 → called setText(“fail”)
Result → Text was set to “fail”

Tx : 0x7b668ec272d0bcacceb45c087e1ea65293afff0aae2bd205fb8cbe235cb71ab0
0xc706045555e9302aa2c63b7da55681369949df90→ used transferOwnership(0x8dddd8cd2f20ebf70af7c205434d9c88e4f0962b)
Result → 0x8dddd8cd2f20ebf70af7c205434d9c88e4f0962b is the new owner (this is also the contract)
So we lost access to the contract :D

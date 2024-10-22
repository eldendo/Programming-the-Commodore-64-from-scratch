# Programming-the-Commodore-64-from-scratch
A toolchain for the c64 starting with nothing but the native BASIC interpreter  

(c)2022-2024 by ir. Marc Dendooven

---
## Introduction
The Commodore 64 was, and is, a great computer. I had a lot of fun with it but never explored it to its limits. Now that I have retired I really want to do the things I always wanted to do with the c64: building an environment that is better than the native BASIC environment, without using modern tools.

The c64 was shipped in a hurry... the BASIC interpreter was the same one used for the older PET computers which lacked the graphic and sound possibilities of the 64. In contrast to other computers of the '80 one can not simply draw a point or a line to the screen. There is no software onboard to do that. Almost all hardware has to be accessed using memory mapped IO. That means reading and writing to the IO registers of the hardware using the basic commands PEEK and POKE. But this is also an opportunity: one is obliged to learn how the hardware works in order to use it. And if you want to do something at a reasonable speed, you are almost obliged to learn machine language. Every step opens a complete new world of possibilities. 

Of course later a whole bunch of development software was available... Alternative interpreters like Simon's Basic or C and Pascal compilers became available. Nowadays there are complete cross development systems where one can develop c64 programs on a PC using all modern facilities.

But it is my goal here to restart my Commodore adventures where I started them in 1983: With a bare computer and a storage device and no other software than the native BASIC V2 interpreter. All necessary tools have to be build in BASIC, hand-translated machine code or using the tools already (self)made in this project before.

Of course it is not necessary to use a real Commodore. An emulator is perfect replacement. I will use VICE. Writing code can be done in a simple editor, using cut & paste in vice. 


Let the games begin...  

---
### oct 2024  
- Development version of editor
### jul 2023 - may 2024   
- Test version of the two pass assembler
- Test version of the pl0/E compiler

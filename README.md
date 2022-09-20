# 在C8051F340上进行的FreeRTOS移植
## 从FreeRTOS公版中的Demo/Cygnal下的项目开始移植
这个是C8051F120，最接近C8051F340的。
需要注意：
1. 修改Makefile文件

设置编译的--xram-size 4096

2. 修改FreeRTOSConfig.h文件

- 将#include "c8051f120.h"修改为#include "c8051f340.h"。

- 修改#define configSTACK_START			( 0x21 )，其中(0x21)是编译出来的main.mem文件中的值，可能需要根据实际情况变化，请查看编译出来的.mem进行相应的修改。

- 修改时钟频率：#define configCPU_CLOCK_HZ			( ( unsigned long ) 12000000 )

3. 修改各文件中的asm...endasm;为__asm...__endasm;

4. 修改各port.c文件，重点修改配置Timer2参数。

- 根据C8051F340的Timer2参数进行设置。重点是prvSetupTimerInterrupt()函数。

5. 修改各interrupt为__interrupt
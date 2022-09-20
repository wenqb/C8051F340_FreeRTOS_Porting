//main.c
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "serial.h"

#define LED0 P3_3
#define LED1 P3_4
#define LED2 P3_5
#define LED3 P3_6


//任务优先级
#define START_TASK_PRIO		1
//任务堆栈大小	
#define START_STK_SIZE 		128  
//任务句柄
TaskHandle_t StartTask_Handler;
//任务函数
void start_task(void *pvParameters);
 
//任务优先级
#define LED0_TASK_PRIO		2
//任务堆栈大小	
#define LED0_STK_SIZE 		50  
//任务句柄
TaskHandle_t LED0Task_Handler;
//任务函数
void led0_task(void *pvParameters);
 
//任务优先级
#define LED1_TASK_PRIO		3
//任务堆栈大小	
#define LED1_STK_SIZE 		50       //50*4个字节 = 200字节    含寄存器和任务的变量
//任务句柄
TaskHandle_t LED1Task_Handler;
//任务函数
void led1_task(void *pvParameters);


#define LED2_TASK_PRIO		2
//任务堆栈大小	
#define LED2_STK_SIZE 		50       //50*4个字节 = 200字节    含寄存器和任务的变量
//任务句柄
TaskHandle_t LED2Task_Handler;
//任务函数
void led2_task(void *pvParameters);

#define LED3_TASK_PRIO		3
//任务堆栈大小	
#define LED3_STK_SIZE 		50       //50*4个字节 = 200字节    含寄存器和任务的变量
//任务句柄
TaskHandle_t LED3Task_Handler;
//任务函数
void led3_task(void *pvParameters);

void _sdcc_external_startup(void){
	// 关闭看门狗。FreeRTOS时，需要在_sdcc_external_startup()中关闭。否则系统无法启动。
	PCA0MD &= ~0x40;
}

int main(void)
{
	char myStr[] = "System start...\r\n";
	char myStr2[] = "Running...\r\n";
	char *myStrPtr = myStr;
	char *myStrPtr2 = myStr2;
	unsigned int i;
	
	// 关闭看门狗。FreeRTOS时，需要在_sdcc_external_startup()中关闭。否则系统无法启动。
	//PCA0MD &= ~0x40;

	//初始化外部时钟（可选1）
/*
    OSCXCN=0X67;         //0X67=0110,0111
    for(i=0;i<256;i++);         //等待>1ms
    while(!(OSCXCN&0X80));      //等待XTLVLD变为1
    // OSCICN=0X88;         //时钟失效监测器，选择外部时钟源作为系统时钟
*/

	// 或初始化内部里程（可选2）
	OSCICN = 0x83;
	//OSCICN |= 0x03;	//Enable internal oscillator (24.5MHz)
					//Set sysclock to internal oscillator / 8
	for(i=0;i<256;i++);
	while(!(OSCICN | 0x40));
	// OSCICN=0x88;

	RSTSRC = 0x04;	//Enable missing clock detector

	P3MDOUT = 0xFF;
	P0MDOUT |= 0x10;
	
	/* Port/Corssbar init */
	XBR0 = 0x01;	// Skip all pins in crossbar selection
	XBR1 = 0x40;	// Enable the crossbar
	
	
	xSerialPortInitMinimal(9600, 128);
	
	
	while(*myStrPtr){
		xSerialPutChar(0, *myStrPtr, 300);
		myStrPtr = myStrPtr + 1;
	}
	
	// EA = 1;			// Enable global interrupts
	
	//创建开始任务
    xTaskCreate((TaskFunction_t )start_task,            //任务函数
                (const char*    )"start_task",          //任务名称
                (uint16_t       )START_STK_SIZE,        //任务堆栈大小
                (void*          )NULL,                  //传递给任务函数的参数
                (UBaseType_t    )START_TASK_PRIO,       //任务优先级
                (TaskHandle_t*  )&StartTask_Handler);   //任务句柄              
	vTaskStartScheduler();          //开启任务调度
	while(1){;}

}
 
//开始任务任务函数
void start_task(void *pvParameters)
{
    taskENTER_CRITICAL();           //进入临界区
    //创建LED0任务
    xTaskCreate((TaskFunction_t )led0_task,     	
                (const char*    )"led0_task",   	
                (uint16_t       )LED0_STK_SIZE, 
                (void*          )NULL,				
                (UBaseType_t    )LED0_TASK_PRIO,	
                (TaskHandle_t*  )&LED0Task_Handler);   
    //创建LED1任务
    xTaskCreate((TaskFunction_t )led1_task,     
                (const char*    )"led1_task",   
                (uint16_t       )LED1_STK_SIZE, 
                (void*          )NULL,
                (UBaseType_t    )LED1_TASK_PRIO,
                (TaskHandle_t*  )&LED1Task_Handler);         
    //创建LED2任务
    xTaskCreate((TaskFunction_t )led2_task,     
                (const char*    )"led2_task",   
                (uint16_t       )LED2_STK_SIZE, 
                (void*          )NULL,
                (UBaseType_t    )LED2_TASK_PRIO,
                (TaskHandle_t*  )&LED2Task_Handler); 
    //创建LED3任务
    xTaskCreate((TaskFunction_t )led3_task,     
                (const char*    )"led3_task",   
                (uint16_t       )LED3_STK_SIZE, 
                (void*          )NULL,
                (UBaseType_t    )LED3_TASK_PRIO,
                (TaskHandle_t*  )&LED3Task_Handler); 
    vTaskDelete(StartTask_Handler); //删除开始任务
    taskEXIT_CRITICAL();            //退出临界区
}
 
//LED0任务函数 
void led0_task(void *pvParameters)
{
    while(1)
    {
		xSerialPutChar(0, 'T', 300);
		xSerialPutChar(0, '0', 300);
		xSerialPutChar(0, '\r', 300);
		xSerialPutChar(0, '\n', 300);		
		LED0=!LED0;
        vTaskDelay(100);
        //LED0=!LED0;
        //vTaskDelay(500);
    }
}   
 
//LED1任务函数
void led1_task(void *pvParameters)
{
    while(1)
    {
		xSerialPutChar(0, 'T', 300);
		xSerialPutChar(0, '1', 300);
		xSerialPutChar(0, '\r', 300);
		xSerialPutChar(0, '\n', 300);
        LED1=0;
        vTaskDelay(30);
        LED1=1;
        vTaskDelay(70);		
    }
}

void led2_task(void *pvParameters)
{
    while(1)
    {
		xSerialPutChar(0, 'T', 300);
		xSerialPutChar(0, '2', 300);
		xSerialPutChar(0, '\r', 300);
		xSerialPutChar(0, '\n', 300);
        LED2=0;
        vTaskDelay(100);
        LED2=1;
        vTaskDelay(50);		
    }
}

void led3_task(void *pvParameters)
{
    while(1)
    {
		xSerialPutChar(0, 'T', 300);
		xSerialPutChar(0, '3', 300);
		xSerialPutChar(0, '\r', 300);
		xSerialPutChar(0, '\n', 300);
        LED3=0;
        vTaskDelay(70);
        LED3=1;
        vTaskDelay(30);		
    }
}
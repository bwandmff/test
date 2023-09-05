#include <stdio.h>
#include "mqtt.h"
#include "sensor.h"
#include "alg.h"

int main() {
    // 初始化MQTT连接
    mqtt_init();

    // 初始化传感器
    sensor_init();

    // 运行算法处理
    alg_process();

    // 关闭MQTT连接
    mqtt_cleanup();

    return 0;
}
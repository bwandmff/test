#include <stdio.h>
#include <stdlib.h>
#include "mqtt.h"
#include "sensor.h"
#include "alg.h"

int main(void) {
    printf("=== Application Starting ===\n\n");

    // 初始化MQTT连接
    if (mqtt_init() != 0) {
        fprintf(stderr, "[ERROR] Failed to initialize MQTT!\n");
        return EXIT_FAILURE;
    }

    // 初始化传感器
    if (sensor_init() != 0) {
        fprintf(stderr, "[ERROR] Failed to initialize sensor!\n");
        mqtt_cleanup();
        return EXIT_FAILURE;
    }

    // 运行算法处理
    if (alg_process() != 0) {
        fprintf(stderr, "[ERROR] Algorithm processing failed!\n");
        sensor_cleanup();
        mqtt_cleanup();
        return EXIT_FAILURE;
    }

    // 清理资源 (按初始化的逆序)
    printf("\n=== Shutting Down ===\n");
    sensor_cleanup();
    mqtt_cleanup();

    printf("\n=== Application Finished ===\n");
    return EXIT_SUCCESS;
}

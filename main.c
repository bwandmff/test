#include <stdio.h>
#include "mqtt.h"
#include "sensor.h"
#include "alg.h"

int main() {
    // ��ʼ��MQTT����
    mqtt_init();

    // ��ʼ��������
    sensor_init();

    // �����㷨����
    alg_process();

    // �ر�MQTT����
    mqtt_cleanup();

    return 0;
}
#ifndef MQTT_H
#define MQTT_H

/**
 * @brief 初始化MQTT连接
 * @return 0 成功, -1 失败
 */
int mqtt_init(void);

/**
 * @brief 关闭MQTT连接并释放资源
 */
void mqtt_cleanup(void);

#endif  // MQTT_H

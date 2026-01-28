#ifndef SENSOR_H
#define SENSOR_H

/**
 * @brief 初始化传感器
 * @return 0 成功, -1 失败
 */
int sensor_init(void);

/**
 * @brief 关闭传感器并释放资源
 */
void sensor_cleanup(void);

#endif  // SENSOR_H

# 嵌入式传感器项目

一个模块化的嵌入式C语言项目框架，集成MQTT通信、传感器采集和算法处理功能。

## 📁 项目结构

```
test/
├── main.c          # 主程序入口
├── mqtt.c          # MQTT通信模块
├── sensor.c        # 传感器采集模块
├── alg.c           # 算法处理模块
├── include/        # 头文件目录
│   ├── mqtt.h
│   ├── sensor.h
│   └── alg.h
├── Makefile        # 编译配置
└── README.md       # 项目说明
```

## 🚀 快速开始

### 编译项目
```bash
make
```

### 运行程序
```bash
make run
# 或直接运行
./ctest
```

### 清理编译产物
```bash
make clean
```

### 重新编译
```bash
make rebuild
```

## 📦 模块说明

### MQTT模块 (`mqtt.c`)
负责与MQTT Broker的通信连接：
- `mqtt_init()` - 初始化并建立MQTT连接
- `mqtt_cleanup()` - 关闭连接并释放资源

### 传感器模块 (`sensor.c`)
负责传感器的初始化和数据采集：
- `sensor_init()` - 初始化传感器硬件
- `sensor_cleanup()` - 关闭传感器并释放资源

### 算法模块 (`alg.c`)
负责数据处理和算法计算：
- `alg_process()` - 执行算法处理流程

## ⚙️ 编译选项

| 选项 | 说明 |
|------|------|
| `-Wall -Wextra` | 开启所有警告 |
| `-g` | 包含调试信息 |
| `-pthread` | 支持多线程 |
| `-std=c11` | 使用C11标准 |

## 🔧 扩展开发

### 添加新模块
1. 在根目录创建 `xxx.c`
2. 在 `include/` 目录创建 `xxx.h`
3. 在 `Makefile` 的 `SRCS` 中添加 `xxx.c`
4. 在 `main.c` 中引入并调用

### 错误处理
所有初始化函数返回 `int` 类型：
- 返回 `0` 表示成功
- 返回 `-1` 表示失败

## 📝 更新日志

### v1.1.0 (2026-01-28)
- ✅ 添加完整的错误处理机制
- ✅ 修复 `sensor_cleanup()` 未调用的问题
- ✅ 统一代码风格和注释
- ✅ 优化 Makefile，支持自动依赖生成
- ✅ 更新项目文档

### v1.0.0 (2025-01-27)
- 🎉 初始版本

## 📄 License

MIT License

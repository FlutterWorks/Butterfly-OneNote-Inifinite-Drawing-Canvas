---
title: Area tool
---

The area tool allows you to create, edit and remove areas.

## Actions

|          滑鼠         |      觸控      |       Action      |
| :-----------------: | :----------: | :---------------: |
| Left click and drag | Tap and drag | Create a new area |
|     Middle click    |  Two fingers |    Move canvas    |
|     Right click     |   Long tap   |     Edit area     |

## Configuration

| Property | Default | 說明                                                                                                                                                                                               |
| -------: | :-----: | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       寬度 |    0    | The fixed width of the area. If set to 0, the width will be calculated automatically.                                                                            |
|       高度 |    0    | The fixed height of the area. If set to 0, the height will be calculated automatically.                                                                          |
|      長寬比 |    0    | The fixed aspect ratio of the area. If set to 0, the aspect ratio will be calculated automatically. A aspect ratio is defined as width / height. |

There are three aspect ratio presets:

- Square (1:1)
- Page portrait (sqrt(2)) - This is the default aspect ratio of an A4 page in portrait mode.
- Page landscape (1/sqrt(2)) - This is the default aspect ratio of an A4 page in landscape mode.

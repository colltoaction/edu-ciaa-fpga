{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "edu-ciaa-fpga",
    "graph": {
      "blocks": [
        {
          "id": "5a1fb05d-b5f9-4cd0-9c6b-701faa5215d7",
          "type": "basic.output",
          "data": {
            "name": "v signal",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "1"
              }
            ]
          },
          "position": {
            "x": 800,
            "y": 160
          }
        },
        {
          "id": "47860135-2403-4006-8b66-7dfc5a961558",
          "type": "basic.input",
          "data": {
            "name": "u SIGNAL",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "BTN4",
                "value": "34"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 192,
            "y": 160
          }
        },
        {
          "id": "d6cf6feb-f742-474f-b003-fb5840479ee0",
          "type": "basic.input",
          "data": {
            "name": "x1 in",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "BTN3",
                "value": "33"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 192,
            "y": 256
          }
        },
        {
          "id": "b209546a-7670-4c58-a348-6e062bf74645",
          "type": "basic.output",
          "data": {
            "name": "y1 in",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "LED2",
                "value": "3"
              }
            ]
          },
          "position": {
            "x": 800,
            "y": 256
          }
        },
        {
          "id": "67890130-925b-41da-a923-32233fcaf8bb",
          "type": "basic.input",
          "data": {
            "name": "x2 in",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "BTN2",
                "value": "32"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 192,
            "y": 344
          }
        },
        {
          "id": "0a7a8b9f-70f5-4dac-a712-5a1b503438c5",
          "type": "basic.output",
          "data": {
            "name": "y2 out",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "LED1",
                "value": "2"
              }
            ]
          },
          "position": {
            "x": 800,
            "y": 344
          }
        },
        {
          "id": "77cd16d3-c63e-4df2-8776-027fd90672b3",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "u"
                },
                {
                  "name": "x1"
                },
                {
                  "name": "x2"
                }
              ],
              "out": [
                {
                  "name": "v"
                },
                {
                  "name": "y1"
                },
                {
                  "name": "y2"
                }
              ]
            },
            "params": [],
            "code": "always @(x1, x2) begin\n    v = u;\n    case(u)\n        0: begin\n            y1 = x2;\n            y2 = x1;\n        end\n        1: begin\n            y1 = x1;\n            y2 = x2;\n        end\n    endcase\nend"
          },
          "position": {
            "x": 352,
            "y": 160
          },
          "size": {
            "width": 392,
            "height": 248
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "47860135-2403-4006-8b66-7dfc5a961558",
            "port": "out"
          },
          "target": {
            "block": "77cd16d3-c63e-4df2-8776-027fd90672b3",
            "port": "u"
          }
        },
        {
          "source": {
            "block": "d6cf6feb-f742-474f-b003-fb5840479ee0",
            "port": "out"
          },
          "target": {
            "block": "77cd16d3-c63e-4df2-8776-027fd90672b3",
            "port": "x1"
          }
        },
        {
          "source": {
            "block": "67890130-925b-41da-a923-32233fcaf8bb",
            "port": "out"
          },
          "target": {
            "block": "77cd16d3-c63e-4df2-8776-027fd90672b3",
            "port": "x2"
          }
        },
        {
          "source": {
            "block": "77cd16d3-c63e-4df2-8776-027fd90672b3",
            "port": "v"
          },
          "target": {
            "block": "5a1fb05d-b5f9-4cd0-9c6b-701faa5215d7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "77cd16d3-c63e-4df2-8776-027fd90672b3",
            "port": "y1"
          },
          "target": {
            "block": "b209546a-7670-4c58-a348-6e062bf74645",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "77cd16d3-c63e-4df2-8776-027fd90672b3",
            "port": "y2"
          },
          "target": {
            "block": "0a7a8b9f-70f5-4dac-a712-5a1b503438c5",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}
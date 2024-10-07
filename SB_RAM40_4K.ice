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
          "id": "1e496543-fa67-402d-b23d-f775d172812c",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "94"
              }
            ],
            "clock": false
          },
          "position": {
            "x": -256,
            "y": 184
          }
        },
        {
          "id": "781a731c-0b4c-4d2a-9e79-489e43d99fb5",
          "type": "basic.output",
          "data": {
            "name": "led1",
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
            "x": 1432,
            "y": 200
          }
        },
        {
          "id": "e1df12e1-f34b-4366-af86-0776b99551de",
          "type": "basic.output",
          "data": {
            "name": "led2",
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
            "x": 1432,
            "y": 280
          }
        },
        {
          "id": "7b002a26-0a6d-49ee-af1d-f6e9688b81f8",
          "type": "basic.output",
          "data": {
            "name": "led3",
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
            "x": 1432,
            "y": 360
          }
        },
        {
          "id": "31e5265f-e68e-4eb5-9d9d-d6b7cc5195c6",
          "type": "basic.output",
          "data": {
            "name": "led4",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "LED3",
                "value": "4"
              }
            ]
          },
          "position": {
            "x": 1432,
            "y": 440
          }
        },
        {
          "id": "8f4d9916-9876-4fbd-a2f9-75e3646a2e55",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "i",
                  "range": "[15:0]",
                  "size": 16
                }
              ],
              "out": [
                {
                  "name": "o1"
                },
                {
                  "name": "o2"
                },
                {
                  "name": "o3"
                },
                {
                  "name": "o4"
                }
              ]
            },
            "params": [],
            "code": "assign o1 = i[15];\nassign o2 = i[14];\nassign o3 = i[13];\nassign o4 = i[12];"
          },
          "position": {
            "x": 680,
            "y": 272
          },
          "size": {
            "width": 584,
            "height": 152
          }
        },
        {
          "id": "03ab508c-b1a8-47df-837b-ff9bdf0cda9e",
          "type": "febcfed8636b8ee9a98750b96ed9e53a165dd4a8",
          "position": {
            "x": -256,
            "y": 264
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "7d61c4eb-1fa5-43a5-86af-874bfded0757",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "RADDR",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "RCLK"
                },
                {
                  "name": "RCLKE"
                },
                {
                  "name": "RE"
                },
                {
                  "name": "WADDR",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "WCLK"
                },
                {
                  "name": "WCLKE"
                },
                {
                  "name": "WDATA",
                  "range": "[15:0]",
                  "size": 16
                },
                {
                  "name": "WE"
                },
                {
                  "name": "MASK",
                  "range": "[15:0]",
                  "size": 16
                }
              ],
              "out": [
                {
                  "name": "RDATA",
                  "range": "[15:0]",
                  "size": 16
                }
              ]
            },
            "params": [],
            "code": "SB_RAM40_4K ram40_4kinst_physical (\n    .RDATA(RDATA),\n    .RADDR(RADDR),\n    .WADDR(WADDR),\n    .MASK(MASK),\n    .WDATA(WDATA),\n    .RCLKE(RCLKE),\n    .RCLK(RCLK),\n    .RE(RE),\n    .WCLKE(WCLKE),\n    .WCLK(WCLK),\n    .WE(WE)\n);\ndefparam ram40_4kinst_physical.INIT_0 =\n    256'h1111111111111111111111111111111111111111111111111111111111111111;\n"
          },
          "position": {
            "x": 40,
            "y": 160
          },
          "size": {
            "width": 448,
            "height": 384
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8f4d9916-9876-4fbd-a2f9-75e3646a2e55",
            "port": "o1"
          },
          "target": {
            "block": "781a731c-0b4c-4d2a-9e79-489e43d99fb5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8f4d9916-9876-4fbd-a2f9-75e3646a2e55",
            "port": "o2"
          },
          "target": {
            "block": "e1df12e1-f34b-4366-af86-0776b99551de",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8f4d9916-9876-4fbd-a2f9-75e3646a2e55",
            "port": "o3"
          },
          "target": {
            "block": "7b002a26-0a6d-49ee-af1d-f6e9688b81f8",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8f4d9916-9876-4fbd-a2f9-75e3646a2e55",
            "port": "o4"
          },
          "target": {
            "block": "31e5265f-e68e-4eb5-9d9d-d6b7cc5195c6",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "7d61c4eb-1fa5-43a5-86af-874bfded0757",
            "port": "RDATA"
          },
          "target": {
            "block": "8f4d9916-9876-4fbd-a2f9-75e3646a2e55",
            "port": "i"
          },
          "size": 16
        },
        {
          "source": {
            "block": "03ab508c-b1a8-47df-837b-ff9bdf0cda9e",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "7d61c4eb-1fa5-43a5-86af-874bfded0757",
            "port": "RE"
          }
        },
        {
          "source": {
            "block": "03ab508c-b1a8-47df-837b-ff9bdf0cda9e",
            "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
          },
          "target": {
            "block": "7d61c4eb-1fa5-43a5-86af-874bfded0757",
            "port": "RCLKE"
          }
        },
        {
          "source": {
            "block": "1e496543-fa67-402d-b23d-f775d172812c",
            "port": "out"
          },
          "target": {
            "block": "7d61c4eb-1fa5-43a5-86af-874bfded0757",
            "port": "RCLK"
          }
        }
      ]
    }
  },
  "dependencies": {
    "febcfed8636b8ee9a98750b96ed9e53a165dd4a8": {
      "package": {
        "name": "bit-1",
        "version": "0.2",
        "description": "Constant bit 1",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2289.79%22%20height=%22185.093%22%20viewBox=%220%200%2084.179064%20173.52585%22%3E%3Cpath%20d=%22M7.702%2032.42L49.972%200l34.207%207.725-27.333%20116.736-26.607-6.01L51.26%2025.273%2020.023%2044.2z%22%20fill=%22green%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M46.13%20117.28l21.355%2028.258-17.91%2021.368%206.198%205.513m-14.033-54.45l-12.4%2028.26-28.242%205.512%202.067%208.959%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222.196%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 456,
                "y": 120
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Constant bit-1\nassign q = 1'b1;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 248,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}
KLANG MANUAL
============

## Specifications

### Electrical

| Rail     | Typical Current draw |
|:---------|---------------------:|
|  **12V** | ~23mA                |
| **-12V** | <2mA                 |
|   **5V** | —                    |

### Inputs
| Input | Type    | Voltage range | On/off state |
|:------|:--------|--------------:|-------------:|
| **⇥** | Trigger | 0V to 10V     | >1V / <1V    |
| **↤↦**| CV      | -5V to 5V     | —            |
| **⇤** | Trigger | 0V to 10V     | >1V / <1V    |
| **⟳** | CV      | -5V to 5V     | —            |

### Outputs
| Output  | Voltage range  |
|:--------|---------------:|
| **1**   | -5V to 5V      |
| **2**   | -5V to 5V      |
| **3**   | -5V to 5V      |
| **4**   | -5V to 5V      |

## Installation

<article>
1. Connect the module to your case power supply using the provided 10-pin to 16-pin connector.  
Plug the 10-pin connector into the module `POWER` socket (fig.1) and the 16-pin connector into your case power supply.  
2. Ensure the module is securely mounted in your case.
3. Power on your case and play!

![[fig.1]](/KLANG/assets/klang-back.svg)
</article>

## Firmware upgrade

To update the firmware, follow these steps:

1. Download [the latest firmware](https://github.com/elektrofon/klang-firmware/releases/latest).
2. Put the `elektrofon-klang.bin` file on a microSD card. (1)
2. Unmount the module from your case.
3. Insert the microSD card into the module's microSD slot.
4. Power on the module.
5. The module will automatically detect the firmware file and start the update process.
6. Wait for the update to complete. The module will restart automatically. (2)
7. Remove the microSD card from the module.
8. Re-mount the module in your case.

\(1\) The safest way to prepare the microSD card is to format it using [SD Memory Card Formatter](https://www.sdcard.org/downloads/) and copy the firmware file to the root directory of the card.

\(2\) If the module doesn't restart automatically, you can power it off and on again to try again.  
If it doesn't work the second time, please check the microSD card and the firmware file. The SD Card can be corrupted or the firmware file might be missing. Corrupted SD Cards are more common than you think.

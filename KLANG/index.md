KLANG MANUAL
============

---

## Symbolic language

<article class="symbols">
![**Traverse**](../KLANG/assets/symbol-traverse.svg)

![**Direction**](../KLANG/assets/symbol-direction.svg)

![**Reset**](../KLANG/assets/symbol-reset.svg)

![**Transpose**](../KLANG/assets/symbol-transpose.svg)
</article>

---

## Overview

<article>
<div class="overview-list">
1. **Voice encoders**: These encoders controls each color coded voice. Watch the corresponding dial on the display change when you turn the encoder. The little number on each dial denotes the octave of the voice. Turn it 360° to see the octave number go up and down.
    - **Press and turn**: Hold the encoder down while turning to fine tune the voice.
2. **Browse encoder**: Use this encoder to browse the current chords. The numbers at the bottom of the display shows the active chord index and the total chord count currently in memory.
    - **Click**: Click to toggle pause. When paused, the module does not respond to any triggers.
    - **Press and hold**: Press and hold to enter tuning mode. This sets all voices to middle C as long as you press the encoder. Release to return to the current chord.
3. **Minus button**: Removes the active chord. (1)
4. **Plus button**: Adds a new chord after the active chord. The new chord is a copy of the active chord. The newly created chord becomes the active chord.
5. **Traverse trigger input**: This trigger input is used to traverse the chord list. Without any CV input on the **direction** input, a trigger will move to the next chord (+1).
6. **Direction input**: This input is used to set the traverse direction and amount. A negative voltage will result in backwards traverse, a positive voltage will result in forwards traverse. The **direction** input only sets the direction and amount — It does not perform a traversal. The chord changes only when a trigger is received on the **traverse** input. 0V will result in no movement.
7. **Transpose input**: This input is used to transpose the current chord. A negative voltage will transpose down, a positive voltage will transpose up. 0V will result in no transposition.
8. **Reset trigger input**: This trigger input immediately resets the current chord to the first chord in the list. This is useful for quickly resetting the module to a known state. 
9. **Outputs**: These are the bipolar CV outputs — One for each voice. They are laboratory grade 1V/octave outputs.


\(1\) `Active chord` is the chord shown on the display at the moment of interaction.
</div>

![[fig.1]](../KLANG/assets/function-overview.svg)
</article>

---

## Setting display brightness

To set the display brightness, press and hold the **browse encoder** to enter tuning mode. While in tuning mode, turn the **yellow voice encoder**. Turn clockwise to increase brightness and counter-clockwise to decrease brightness.

---

## Modes of operation

KLANG has three modes of operation:

1. **Normal mode**: This is the default mode of operation. The module responds to triggers and CV inputs as described in the overview.
2. **Absolute indexing mode**: In this mode, the **direction input** is used to set the absolute index in the chord sequence. The module will respond in real-time to the **direction input**. The **traverse input** is ignored in this mode. The **direction input** can be set to a value between -5V and 5V, where -5V is chord index 0 and 5V is chord index 99. No matter how many chords you have in memory, the voltage applied will always be mapped to the same chord index.
3. **Absolute indexing sample & hold**: In this mode, the **direction input** is used to set the absolute index in the chord sequence, but the module will only respond to the **direction input** when a trigger is received on the **traverse input**. This allows you to sample and hold the current chord index. The **direction input** can be set to a value between -5V and 5V, where -5V is chord index 0 and 5V is chord index 99. No matter how many chords you have in memory, the voltage applied will always be mapped to the same chord index.

### Switching modes

Switching modes can only be done at power on. To switch modes, follow these steps:

1. Power off the module.
2. Press and hold the yellow, blue or gray voice encoder.
3. Power on the module while still holding the voice encoder.

The yellow voice encoder will switch to **normal mode**, the blue voice encoder will switch to **absolute indexing mode**, and the gray voice encoder will switch to **absolute indexing sample & hold mode**.

The module remembers the last used mode, so you only need to switch modes if you want to change the mode of operation.

---

## Specifications

### Electrical

| Rail     | Typical Current draw     |
|:---------|-------------------------:|
|  **12V** |                ~23mA (1) |
| **-12V** |                     <2mA |
|   **5V** |                        — |

\(1\) At normal operation with default display brightness.

### Inputs
| Input                                                                             | Type    | Voltage range | On/off state |
|:----------------------------------------------------------------------------------|:--------|--------------:|-------------:|
| <span class="icon">![Traverse](../KLANG/assets/symbol-traverse.svg)</span>        | Trigger |     0V to 10V |    >1V / <1V |
| <span class="icon">![Direction](../KLANG/assets/symbol-direction.svg)</span>      | CV      |     -5V to 5V |            — |
| <span class="icon">![Reset](../KLANG/assets/symbol-reset.svg)</span>              | Trigger |     0V to 10V |    >1V / <1V |
| <span class="icon last">![Transpose](../KLANG/assets/symbol-transpose.svg)</span> | CV      |     -5V to 5V |            — |

### Outputs
| Output  | Voltage range  |
|:--------|---------------:|
| **1**   |      -5V to 5V |
| **2**   |      -5V to 5V |
| **3**   |      -5V to 5V |
| **4**   |      -5V to 5V |

---

## Installation

<article>
1. Connect the module to your case power supply using the provided 10-pin to 16-pin connector.  
Plug the 10-pin connector into the module `POWER` socket (fig.2) and the 16-pin connector into your case power supply.  
2. Ensure the module is securely mounted in your case.
3. Power on your case and play!

![[fig.2]](../KLANG/assets/klang-back.svg)
</article>

---

## Firmware upgrade

To update the firmware, follow these steps:

1. Download [the latest firmware](https://github.com/elektrofon/klang-firmware/releases/latest) <span class="firmware-version"></span> (<span class="firmware-date"></span>).
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

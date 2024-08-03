
  This script allows dynamic switching between 'a' and 'd' keys to ensure continuous movement in games.
  When one key is held and the other is pressed, the script switches movement to the newly pressed key.

Features:
  - Continuous Movement: Prevents stopping when both 'a' and 'd' are pressed.
  - Priority Switching: Prioritizes the latest key press for seamless direction change.

How It Works:
  - Variables: Tracks key states with `isAPressed` and `isDPressed`.
  - Pressing 'a':
    - If 'd' is pressed, release 'd' and press 'a'.
    - If 'd' is not pressed, press 'a'.
  - Pressing 'd':
    - If 'a' is pressed, release 'a' and press 'd'.
    - If 'a' is not pressed, press 'd'.
  - Releasing Keys:
    - On 'a' release: Stop 'a' and check if 'd' is pressed to continue 'd'.
    - On 'd' release: Stop 'd' and check if 'a' is pressed to continue 'a'.

Usage:
  - Run this script with AutoHotkey before playing the game to activate it.
  - Designed for games where 'a' and 'd' control left and right movements.


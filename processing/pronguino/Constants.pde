/**
 * Constants
 *
 * Logically name constants to remove the need to use numbers in rest of code, make more understandable, and less error prone 
 *
 * @author  Neil Deighan
 */
public static class Constants {

  static final int PLAYER_ONE = 0;               // Index for player 1
  static final int PLAYER_TWO = 1;               // Index for player 2
  static final int PLAYER_COUNT = 2;             // Number of players    

  static final int AXIS_HORIZONTAL = 1;          // Axes on which paddle or ball is moving/bouncing on
  static final int AXIS_VERTICAL = 2;

  static final int DIRECTION_LEFT = -1;          // Multiplier used on the x co-ord of ball to go left
  static final int DIRECTION_RIGHT = 1;          // Multiplier used on the x co-ord of ball to go right
  static final int DIRECTION_UP = -1;            // Multiplier used on the y co-ord of paddle to go up
  static final int DIRECTION_DOWN = 1;           // Multiplier used on the y co-ord of paddle to go down
  static final int DIRECTION_OPPOSITE = -1;      // Multiplier used on the x/y co-ord of ball/paddle to go in opposite direction
  static final int DIRECTION_NONE = 0;           // Multiplier used on the x/y co-ord of ball/paddle stop
}

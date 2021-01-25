/**
 * Player
 *
 * Encapsulates the player
 *
 * @author  Neil Deighan
 */
class Player {

  int index;
  int score;
  char upKey;
  char downKey;

  Paddle paddle;

  /**
   * Class Constructor
   *
   * @param  index  array index of the player being created
   */
  Player(int index) {
    this.index = index;
    this.score = 0;

    // Sets the control keys for the player
    this.upKey = options.keys[index].up;
    this.downKey = options.keys[index].down;

    //Create Paddle
    this.paddle = new Paddle(this);
  }

  /**
   * Checks which key has been pressed to determine direction of players paddle
   *
   * @param  pressedKey  
   */
  void checkKeyPressed(char pressedKey) {
    if (pressedKey == downKey) {
      this.paddle.updateDirection(Constants.DIRECTION_DOWN);
    } else {
      if (pressedKey == upKey) {
        this.paddle.updateDirection(Constants.DIRECTION_UP);
      }
    }
  }

  /**
   * Checks which key has been released stop movement of players paddle
   *
   * @param  releasedKey  
   */
  void checkKeyReleased(char releasedKey) {
    if (releasedKey == downKey || releasedKey == upKey) {
      this.paddle.updateDirection(Constants.DIRECTION_NONE);
    }
  }

  /**
   * Checks if players paddle hits wall
   *
   * @return  true, if players paddle hits wall
   */
  boolean hitsWall() {
    return paddle.hitsWall();
  }

  /**
   * Checks if players paddle hits ball
   *
   * @param  ball  
   *
   * @return  true, if players paddle hits ball
   */
  boolean hits(Ball ball) {
    return paddle.hits(ball);
  }

  /**
   * Checks if players paddle misses ball
   *
   * @param  ball  
   *
   * @return  true, if players paddle misses ball
   */
  boolean misses(Ball ball) {
    return paddle.misses(ball);
  }

  /**
   * Sets start position of players paddle
   */
  void positionAtStart() {
    this.paddle.positionAtStart();
  }  

  /**
   * Sets position of players paddle at wall
   */
  void positionAtWall() {
    this.paddle.positionAtWall();
  }

  /**
   * Stop players paddle moving
   */
  void stopMoving() {
    this.paddle.stopMoving();
  }

  /**
   * Move the players paddle
   */
  void move() {
    this.paddle.move();
  }

  /**
   * Draw the players paddle
   */
  void display() {
    paddle.display();
  }
}

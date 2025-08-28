package ros.msgs.geometry_msgs;

public class Quaternion {
  public float x;
  
  public float y;
  
  public float z;
  
  public float w;
  
  public Quaternion() {}
  
  public Quaternion(float x, float y, float z, float w) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = w;
  }
}


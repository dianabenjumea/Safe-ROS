datatype Twist = Twist(x: int, y: int, z: int)

class CmdVelInterceptor {
    var stop_requested: bool 

    // Constructor
    constructor () 
        ensures stop_requested == false
    {
        stop_requested := false;
    }

    method stop_callback(msg: bool)
        modifies this
        ensures stop_requested == msg
    {
        stop_requested := msg;
    }

    method cmd_vel_callback(msg: Twist) returns (out: Twist)

        ensures stop_requested ==> out == Twist(0, 0, 0)
        ensures !stop_requested ==> out == msg
    {
        if stop_requested {
            out := Twist(0, 0, 0);
        } else {
            out := msg;
        }
    }
}

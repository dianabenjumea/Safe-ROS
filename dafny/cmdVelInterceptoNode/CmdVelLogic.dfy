module {:extern "CmdVelLogic"} CmdVelLogic {

  datatype Decision =
    | UseAgent
    | UseNav
    | Stop
    | Wait

  class Arbiter {

    var stopRequested: bool
    var agentGoalActive: bool
    var agentCmdAvailable: bool
    var navCmdAvailable: bool

    constructor ()
    {
      stopRequested := false;
      agentGoalActive := false;
      agentCmdAvailable := false;
      navCmdAvailable := false;
    }

    method SetStop(v: bool)
      modifies this
    {
      stopRequested := v;
    }

    method SetAgentGoal()
      modifies this
    {
      agentGoalActive := true;
      agentCmdAvailable := false;
    }

    method AgentCmd()
      modifies this
    {
      agentCmdAvailable := true;
    }

    method NavCmd()
      modifies this
    {
      navCmdAvailable := true;
    }

    method Decide() returns (d: Decision)
    {
      if stopRequested {
        if agentGoalActive {
          if agentCmdAvailable {
            d := Decision.UseAgent;
          } else {
            d := Decision.Wait;
          }
        } else {
          d := Decision.Stop;
        }
      } else {
        if agentGoalActive && agentCmdAvailable {
          d := Decision.UseAgent;
        } else if !agentGoalActive && navCmdAvailable {
          d := Decision.UseNav;
        } else {
          d := Decision.Wait;
        }
      }
    }
  }
}


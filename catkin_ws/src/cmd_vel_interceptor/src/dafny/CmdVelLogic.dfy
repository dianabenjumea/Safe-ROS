module {:extern "CmdVelLogic"} CmdVelLogic {

  datatype Decision =
    | UseAgent
    | UseNav
    | Stop
    | Wait

  class Orchestrator {

    var stopRequested: bool
    var agentGoalActive: bool
    var agentCmdAvailable: bool
    var navCmdAvailable: bool


    method Decide() returns (d: Decision)
    {
      if stopRequested {
        // Stop is active
        if agentGoalActive {
          if agentCmdAvailable {
            d := Decision.UseAgent;
          } else {
            d := Decision.Wait; //wait for agent cmd_vel
          }
        } else {
          d := Decision.Stop; //zero cmd_vel if no goal from agent
        }
      } else {
        //stop not active
        if agentGoalActive && agentCmdAvailable {
          d := Decision.UseAgent; // No stop + agent goal → forwarding agent cmd_vel
        } else if !agentGoalActive && navCmdAvailable {
          d := Decision.UseNav; //No stop + no agent goal → forwarding nav cmd_vel
        } else {
          d := Decision.Wait; //wait
        }
      }
    }
  }
}


import sys
from typing import Callable, Any, TypeVar, NamedTuple
from math import floor
from itertools import count

import module_ as module_
import _dafny as _dafny
import System_ as System_

# Module: CmdVelLogic


class Decision:
    @_dafny.classproperty
    def AllSingletonConstructors(cls):
        return [Decision_UseAgent(), Decision_UseNav(), Decision_Stop(), Decision_Wait()]
    @classmethod
    def default(cls, ):
        return lambda: Decision_UseAgent()
    def __ne__(self, __o: object) -> bool:
        return not self.__eq__(__o)
    @property
    def is_UseAgent(self) -> bool:
        return isinstance(self, Decision_UseAgent)
    @property
    def is_UseNav(self) -> bool:
        return isinstance(self, Decision_UseNav)
    @property
    def is_Stop(self) -> bool:
        return isinstance(self, Decision_Stop)
    @property
    def is_Wait(self) -> bool:
        return isinstance(self, Decision_Wait)

class Decision_UseAgent(Decision, NamedTuple('UseAgent', [])):
    def __dafnystr__(self) -> str:
        return f'CmdVelLogic.Decision.UseAgent'
    def __eq__(self, __o: object) -> bool:
        return isinstance(__o, Decision_UseAgent)
    def __hash__(self) -> int:
        return super().__hash__()

class Decision_UseNav(Decision, NamedTuple('UseNav', [])):
    def __dafnystr__(self) -> str:
        return f'CmdVelLogic.Decision.UseNav'
    def __eq__(self, __o: object) -> bool:
        return isinstance(__o, Decision_UseNav)
    def __hash__(self) -> int:
        return super().__hash__()

class Decision_Stop(Decision, NamedTuple('Stop', [])):
    def __dafnystr__(self) -> str:
        return f'CmdVelLogic.Decision.Stop'
    def __eq__(self, __o: object) -> bool:
        return isinstance(__o, Decision_Stop)
    def __hash__(self) -> int:
        return super().__hash__()

class Decision_Wait(Decision, NamedTuple('Wait', [])):
    def __dafnystr__(self) -> str:
        return f'CmdVelLogic.Decision.Wait'
    def __eq__(self, __o: object) -> bool:
        return isinstance(__o, Decision_Wait)
    def __hash__(self) -> int:
        return super().__hash__()


class Arbiter:
    def  __init__(self):
        self.stopRequested: bool = False
        self.agentGoalActive: bool = False
        self.agentCmdAvailable: bool = False
        self.navCmdAvailable: bool = False
        pass

    def __dafnystr__(self) -> str:
        return "CmdVelLogic.Arbiter"
    def ctor__(self):
        (self).stopRequested = False
        (self).agentGoalActive = False
        (self).agentCmdAvailable = False
        (self).navCmdAvailable = False

    def SetStop(self, v):
        (self).stopRequested = v

    def SetAgentGoal(self):
        (self).agentGoalActive = True
        (self).agentCmdAvailable = False

    def AgentCmd(self):
        (self).agentCmdAvailable = True

    def NavCmd(self):
        (self).navCmdAvailable = True

    def Decide(self):
        d: Decision = Decision.default()()
        if self.stopRequested:
            if self.agentGoalActive:
                if self.agentCmdAvailable:
                    d = Decision_UseAgent()
                elif True:
                    d = Decision_Wait()
            elif True:
                d = Decision_Stop()
        elif True:
            if (self.agentGoalActive) and (self.agentCmdAvailable):
                d = Decision_UseAgent()
            elif (not(self.agentGoalActive)) and (self.navCmdAvailable):
                d = Decision_UseNav()
            elif True:
                d = Decision_Wait()
        return d


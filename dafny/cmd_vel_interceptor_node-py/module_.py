import sys
from typing import Callable, Any, TypeVar, NamedTuple
from math import floor
from itertools import count

import module_ as module_
import _dafny as _dafny
import System_ as System_

# Module: module_


class Twist:
    @classmethod
    def default(cls, ):
        return lambda: Twist_Twist(int(0), int(0), int(0))
    def __ne__(self, __o: object) -> bool:
        return not self.__eq__(__o)
    @property
    def is_Twist(self) -> bool:
        return isinstance(self, Twist_Twist)

class Twist_Twist(Twist, NamedTuple('Twist', [('x', Any), ('y', Any), ('z', Any)])):
    def __dafnystr__(self) -> str:
        return f'Twist.Twist({_dafny.string_of(self.x)}, {_dafny.string_of(self.y)}, {_dafny.string_of(self.z)})'
    def __eq__(self, __o: object) -> bool:
        return isinstance(__o, Twist_Twist) and self.x == __o.x and self.y == __o.y and self.z == __o.z
    def __hash__(self) -> int:
        return super().__hash__()


class CmdVelInterceptor:
    def  __init__(self):
        self.stop__requested: bool = False
        pass

    def __dafnystr__(self) -> str:
        return "_module.CmdVelInterceptor"
    def ctor__(self):
        (self).stop__requested = False

    def stop__callback(self, msg):
        (self).stop__requested = msg

    def cmd__vel__callback(self, msg):
        out: Twist = Twist.default()()
        if self.stop__requested:
            out = Twist_Twist(0, 0, 0)
        elif True:
            out = msg
        return out


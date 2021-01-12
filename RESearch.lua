local function RESearchExists ()
  return Plugin.Exist("F250C12A-78E2-4ABC-A784-3FDD3156E415")
end

local function CallRS(...)
  return Plugin.Call("F250C12A-78E2-4ABC-A784-3FDD3156E415", ...)
end

local function CallRSS(...)
  return Plugin.SyncCall("F250C12A-78E2-4ABC-A784-3FDD3156E415", ...)
end


Macro {
  description=""; area="Shell"; key="ShiftF7"; flags=""; condition=RESearchExists;
  action=function() CallRS("Search") end;
}

Macro {
  description=""; area="Shell"; key="CtrlShiftF7"; flags=""; condition=RESearchExists;
  action=function() CallRS("Replace") end;
}

Macro {
  description=""; area="Shell"; key="AltAdd"; flags=""; condition=RESearchExists;
  action=function() CallRS("Select") end;
}

Macro {
  description=""; area="Shell"; key="AltSubtract"; flags=""; condition=RESearchExists;
  action=function() CallRS("Unselect") end;
}

Macro {
  description=""; area="Shell"; key="AltMultiply"; flags=""; condition=RESearchExists;
  action=function() CallRS("FlipSelection") end;
}



Macro {
  description=""; area="Editor"; key="AltF7"; flags=""; condition=RESearchExists;
  action=function() CallRS("Search") end;
}

Macro {
  description=""; area="Editor"; key="CtrlAltF7"; flags=""; condition=RESearchExists;
  action=function() CallRS("Replace") end;
}

Macro {
  description=""; area="Editor"; key="ShiftAltF7"; flags=""; condition=RESearchExists;
  action=function() CallRS("SRAgain") end;
}



Macro {
  description=""; area="Viewer"; key="AltF7"; flags=""; condition=RESearchExists;
  action=function() CallRS("Search") end;
}

Macro {
  description=""; area="Viewer"; key="ShiftAltF7"; flags=""; condition=RESearchExists;
  action=function() CallRS("SRAgain") end;
}

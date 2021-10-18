
warn("Update Portal Initalized, finding last gateway...")
print(point)

if not point then 
  warn("Unkown last gateway: no signals found. Please execute one of the loader scripts, if you think this is a mistake contact discord staff.")
  else 
  FindPortal(point)
end


function FindPortal(portal)
  if portal == "test" then 
    warn("Test Module initalized.")
  end
end

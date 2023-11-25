local blocks = {
  ["minecraft:air"] = {}
}
local moddedBlocks = {}

BLK = {
  vanilla = blocks,
  modded = moddedBlocks,
  compiled = false
}

---@type function
local blockAt = world.getBlockState



---   SETTINGS   ---

local CYCLE_SIZE = 256

--- END SETTINGS ---

local OOB = "minecraft:void_air"
local BARRIER = "minecraft:barrier"
local BLANK = "minecraft:air"

local SX, SZ = 1, 1


local state


do --Verify that this script should even run at all.
  if not host:isHost() then error("Failed to initialize. Client is not host.") end
end

local function readBlock(x, y, z)
  local block = blockAt(x, y, z)

  local id = block.id
  local prop = block.properties

  local data = id:match("^minecraft:") and blocks or moddedBlocks

  if blockAt(x, 60, z).id ~= BARRIER then
    return false, "Found the void. Make sure the search is within world bounds and your render distance is high enough to see the entire grid."
  elseif id == BLANK then
    --print(("found blank at <%d, %d>"):format(x, z))
    local pos = state.pos
    pos.x = x + 2
    pos.z = SZ
    local nextID = blockAt(pos.x, 70, pos.z).id

    if nextID == BLANK then
      --print("ShouldStop")
      return true
    end

    --print("NextLine")
    return
  end

  --print(id)

  if not data[id] then
    local blkData = {}

    if prop then
      for n, v in pairs(prop) do
        blkData[n] = {[v] = true}
      end
    end

    data[id] = blkData
  else
    local blkData = data[id]

    if prop then
      for n, v in pairs(prop) do
        blkData[n][v] = true
      end
    end
  end

  state.pos.z = z + 2
end

local function cycle()
  if state.waiting then return end

  local pos = state.pos
  local s, e
  for _ = 1, CYCLE_SIZE do
    s, e = readBlock(pos.x, 70, pos.z)
    if s == nil then
      -- Do nothing.
    elseif s == false then
      state.waiting = true

      print(
        (
          "Search paused at <%d, %d>:\n" ..
          "%s\n\n" ..

          "After fixing this issue, you can unpause the search by typing\n" ..
          "  §7/figura run §bContinue()§r"
        ):format(pos.x, pos.z, e)
      )

      break
    elseif s == true then
      print(
        "Done.\n" ..
        "To view the collected data, search the §bBLK§f.§avanilla§r table\n" ..
        "    (and the §bBLK§f.§amodded§r table if using content mods).\n" ..
        "To start compiling the data, run\n" ..
        "  §7/figura run §bCompile()§r"
      )
      events.TICK:remove("searchCycle")
      state = nil
      break
    end
  end
end

function StartSearch()
  if blockAt(SX, 60, SZ).id ~= BARRIER then
    error("Failed to start search. Debug grid is not in view.")
  elseif blockAt(SX, 70, SZ).id ~= BLANK or blockAt(SX, 70, SZ + 2).id ~= "minecraft:stone" then
    error("Failed to start search. Could not find debug grid.")
  end

  if state then
    print("Cannot start a search at this time.")
    return
  end

  print("Starting search, this may take a while...")

  state = {
    pos = {
      x = SX,
      z = SZ + 2
    },
    waiting = false
  }
  --readBlock(SX, 70, SZ)

  events.TICK:register(cycle, "searchCycle")
end

function Continue()
  if not state then
    print("No search to continue.")
    return
  end
  state.waiting = false
end


print("Ready to search.\nStart with\n  §7/figura run StartSearch()§r")







local function getRange(blk, prp)
  local bool = {false, false}
  local num = {}
  local enum = {}

  for v in pairs(blk[prp]) do
    if v == "true" then
      bool[1] = true
    elseif v == "false" then
      bool[2] = true
    elseif v:match("^%d+$") then
      num[#num+1] = tonumber(v)
    else
      enum[#enum+1] = v
    end
  end

  table.sort(num)

  if false and #num > 0 and prp == "age" then
    print("§c\"" .. prp .. "\"§r")
    print("[§b" .. table.concat(num, "§r,§b") .. "§r]")
    print(("\nFirst: §b%d§r | Last: §b%d§r | Len: §b%d§r | Range: §b%d§r | Test: §5%s§r"):format(
      num[1],
      num[#num],
      #num,
      num[#num] - num[1] + 1,
      tostring(#num > 0 and (#num == (num[#num] - num[1] + 1)))
    ))
    print(
      (
        "\n" ..
        "§8`#enum > 0`§r: §5%s§r\n" ..
        "§8`(#num > 0 and (bool[1] or bool[2]))`§r: §5%s§r\n" ..
        "§8`not (bool[1] and bool[2])`§r: §5%s§r\n" ..
        "§8`(#num > 0 and (#num ~= (num[#num] - num[1] + 1)))`§r: §5%s§r\n" ..
        "Success: §5%s§r"
      ):format(
        tostring(#enum > 0),
        tostring((#num > 0 and (bool[1] or bool[2]))),
        tostring(not (bool[1] and bool[2])),
        tostring((#num > 0 and (#num ~= (num[#num] - num[1] + 1)))),

        tostring(
          #enum > 0
          or (#num > 0 and (bool[1] or bool[2]))
          or (#num == 0 and not (bool[1] and bool[2]))
          or (#num > 0 and (#num ~= (num[#num] - num[1] + 1)))
        )
      )
    )
    print("-----")
  end

  if #enum > 0 --Enum always wins.
  or (#num > 0 and (bool[1] or bool[2])) --Num and Bool cannot exist together.
  or (#num == 0 and not (bool[1] and bool[2])) --Both bools must exist.
  or (#num > 0 and (#num ~= (num[#num] - num[1] + 1))) --Num must be a sequence.
  then
    if bool[1] then enum[#enum+1] = "true" end
    if bool[2] then enum[#enum+1] = "false" end
    for _, v in ipairs(num) do enum[#enum+1] = tostring(v) end

    table.sort(enum)

    return {
      __type = "enum",
      value = enum,
      hash = "$" .. table.concat(enum, ",")
    }
  elseif bool[1] and bool[2] then
    return {
      __type = "bool",
      hash = "^"
    }
  elseif #num > 0 then
    return {
      __type = "num",
      value = {num[1], num[#num]},
      hash = "#" .. num[1] .. "," .. num[#num]
    }
  else
    return error("Failed to find any range.")
  end
end


local typerank = {
  bool = 1,
  num = 2,
  enum = 3
}

local function sortRanges(a, b)
  local A = a.range
  local B = b.range

  local ar = typerank[A.__type]
  local br = typerank[B.__type]

  if ar == br then
    if ar == 1 then
      error("impossible state, boolean compared to boolean.")
    elseif ar == 2 then
      if A.value[1] == B.value[1] then
        return A.value[#A.value] < B.value[#B.value]
      else
        return A.value[1] < B.value[1]
      end
    elseif ar == 3 then
      if #A.value == #B.value then
        return A.hash < B.hash
      else
        return #A.value < #B.value
      end
    else
      print(ar, br)
      printTable(A and A.range or A, 99)
      printTable(B and B.range or B, 99)
      error("impossible state, unknown range type")
    end
  else
    return ar < br
  end
end


local function occurSort(a, b)
  if not a.bytes then
    a.bytes = #a.name * (a.amount - 1)
  end
  if not b.bytes then
    b.bytes = #b.name * (b.amount - 1)
  end

  if a.bytes == b.bytes then
    if a.amount == b.amount then
      return a.name > b.name
    else
      return a.amount > b.amount
    end
  else
    return a.bytes > b.bytes
  end
end



function Compile()
  print("This may cause a lag spike on low-end computers...")

  --What the fuck am I doing here?
  --  First I need to get each property by itself.
  --    First I will iterate through all blocks and find all properties.
  --    I will note which blocks contain each property.
  --  Then I need to extract values from blocks and sort them.
  --    Booleans < numbers < strings.
  --  Then I need to create ranges from those values and sort them,
  --    This is gonna require a lot of checks.
  --
  --This will only generate data for vanilla properties because it's already too much.

  local props = {}
  local occur = {
    rank = {},
    blocks = {}
  }

  for bn, b in pairs(blocks) do
    for pn in pairs(b) do
      if not props[pn] then props[pn] = {blocks = {}} end
      local range = getRange(b, pn)
      local propData = props[pn]
      propData.blocks[bn] = range

      occur.blocks[bn] = (occur.blocks[bn] or 0) + 1

      local found = false
      for _, r in ipairs(propData) do
        if r.range.hash == range.hash then
          r.blocks[#r.blocks+1] = bn
          found = true
          break
        end
      end

      if not found then propData[#propData+1] = {range = range, blocks = {bn}} end
    end
  end

  for _, p in pairs(props) do
    table.sort(p, sortRanges)
    for _, r in ipairs(p) do
      table.sort(r.blocks)
    end
  end

  for bn, n in pairs(occur.blocks) do
    occur.rank[#occur.rank+1] = {name = bn, amount = n}
  end

  table.sort(occur.rank, occurSort)

  BLK.compiled = props
  BLK.compileO = occur
  print(
    "Done.\n" ..
    "To view the compiled data, search the §bBLK§f.§acompiled§r table.\n" ..
    "To copy the data to your clipboard, run\n" ..
    "  §7/figura run §bCopy()§r"
  )
end




function Copy()
  local cmp = BLK.compiled --[[@as table]]
  local rnk = BLK.compileO.rank

  local ranks = {
    r2b = {},
    b2r = {}
  }

  for i = 1, 100 do
    local block = rnk[i]

    if block.bytes == 0 then break end

    ranks.b2r[block.name:gsub("minecraft:", ":")] = i
    ranks.r2b[i] = block.name:gsub("minecraft:", ":")
  end

  local function subsRank(str)
    --return str .. ","
    return ((ranks.b2r[str] and (ranks.b2r[str] - 1) or str) .. ",")
  end

  local out = {
    --""
    "%" .. table.concat(ranks.r2b, ",") .. "%"
  }

  local pns = {}
  for pn in pairs(BLK.compiled) do
    pns[#pns+1] = pn
  end

  table.sort(pns)

  for _, pn in ipairs(pns) do
    local p = cmp[pn]
    local ranges = {}
    for _, r in ipairs(p) do
      ranges[#ranges+1] = (
        r.range.hash .. ";" ..
        ("," .. table.concat(r.blocks, ",") .. ",")
          :gsub(",minecraft:", ",:")
          :gsub("([a-z0-9_:/.-]+),", subsRank)
          :sub(2, -2)
      )
    end

    out[#out+1] = pn .. "~" .. table.concat(ranges, "+")
  end

  print(
    "State property information copied to clipboard.\n" ..
    "If someone requested this data, paste the data into a file and send it over to whoever requested it.\n" ..
    "If you know what you are doing, paste the data into the `./scripts/properties/properties.txt` file."
  )
  host:setClipboard(table.concat(out, "\n"))
end

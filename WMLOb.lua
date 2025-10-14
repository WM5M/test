local v0="https://rawcdn.githack.com/WM5M/test/b74dc5d7d2cafc6ecf859735c4a7af304950106c/wmk.json";local v1=MachoWebRequest(v0);local v2=MachoAuthenticationKey();local function v3() if  not v1 then return false;end local v63,v64=pcall(json.decode,v1);if ( not v63 or  not v64 or (type(v64)~="table")) then return false;end local v65=os.time();for v224,v225 in ipairs(v64) do if (v225.key==v2) then if v225.expires then local v279=0 -0 ;local v280;local v281;local v282;local v283;local v284;local v285;while true do if (v279==(700 -(271 + 429))) then v280,v281,v282,v283,v284,v285=string.match(v225.expires,"([%d]+)-([%d]+)-([%d]+)T([%d]+):([%d]+):([%d]+)Z");if (v280 and v281 and v282 and v283 and v284 and v285) then local v355=0 + 0 ;local v356;while true do if (v355==0) then v356=os.time({year=tonumber(v280),month=tonumber(v281),day=tonumber(v282),hour=tonumber(v283),min=tonumber(v284),sec=tonumber(v285)});if (v356>v65) then return true;end break;end end end break;end end end end end return false;end if  not v3() then local v226=1500 -(1408 + 92) ;while true do if (v226==(1086 -(461 + 625))) then MachoMenuNotification("WizeMenu","Your key ain't valid lmfao: "   .. v2 ,10);return;end end end Citizen.CreateThread(function() local v66=0;local v67;local v68;while true do if (v66==(1288 -(993 + 295))) then v67,v68=pcall(json.decode,v1);if (v67 and v68 and (type(v68)=="table")) then for v298,v299 in ipairs(v68) do if ((v299.key==v2) and v299.expires) then local v340,v341,v342,v343,v344,v345=string.match(v299.expires,"([%d]+)-([%d]+)-([%d]+)T([%d]+):([%d]+):([%d]+)Z");if (v340 and v341 and v342 and v343 and v344 and v345) then local v357=0 + 0 ;local v358;local v359;local v360;local v361;local v362;local v363;while true do if (v357==2) then v362=math.floor((v360%(87571 -(418 + 753)))/3600 );v363=nil;v357=2 + 1 ;end if (v357==(1 + 0)) then v360=v359-v358 ;v361=math.floor(v360/86400 );v357=1 + 1 ;end if (v357==(1 + 2)) then if (v361>(529 -(406 + 123))) then v363=string.format("You have %d days and %d hours left. Enjoy!",v361,v362);else v363=string.format("You have %d hours left. Enjoy!",v362);end MachoMenuNotification("WizeMenu",v363,5);break;end if (v357==0) then v358=os.time();v359=os.time({year=tonumber(v340),month=tonumber(v341),day=tonumber(v342),hour=tonumber(v343),min=tonumber(v344),sec=tonumber(v345)});v357=1770 -(1749 + 20) ;end end end break;end end end break;end end end);local v4=vec2(179 + 571 ,1822 -(1249 + 73) );local v5=vec2(179 + 321 ,1645 -(466 + 679) );local v6=360 -210 ;local v7=28 -18 ;local v8=1915 -(106 + 1794) ;local v9=v4.x-v6 ;local v10=v4.y-(2 * v7) ;local v11=(v9-(v7 * (1 + 2)))/(1 + 1) ;local v12=(v10-(v7 * (8 -5)))/2 ;local v13=MachoMenuTabbedWindow("WIZEMenu",v5.x,v5.y,v4.x,v4.y,v6);MachoMenuSetKeybind(v13,20);MachoMenuSetAccent(v13,207,43 -27 ,146 -(4 + 110) );MachoMenuText(v13,"YT @JayThaaGamer");local v14=MachoMenuAddTab(v13,"Self");local v15=MachoMenuAddTab(v13,"Server");local v16=MachoMenuAddTab(v13,"Teleport");local v17=MachoMenuAddTab(v13,"Weapon");local v18=MachoMenuAddTab(v13,"Vehicle");local v19=MachoMenuAddTab(v13,"Animations");local v20=MachoMenuAddTab(v13,"Triggers");local v21=MachoMenuAddTab(v13,"Settings");local v22=MachoMenuAddTab(v13,"Purchase VIP");local function v23(v69) local v70=v6 + v7 ;local v71=v7 + v8 ;local v72=v71 + v12 + v7 ;local v73=v70 + v11 + v7 ;local v74=(v12 * (586 -(57 + 527))) + v7 ;local v75=MachoMenuGroup(v69,"Self",v70,v71,v70 + v11 ,v71 + v74 );local v76=MachoMenuGroup(v69,"Model Changer",v73,v71,v73 + v11 ,v71 + v12 );local v77=MachoMenuGroup(v69,"Functions",v73,v72,v73 + v11 ,v72 + v12 );return v75,v76,v77;end local function v24(v78) local v79=1427 -(41 + 1386) ;local v80;local v81;local v82;local v83;local v84;local v85;local v86;while true do if (v79==(106 -(17 + 86))) then v86=MachoMenuGroup(v78,"Everyone",v84,v7 + v8 ,v85,v10);return v83,v86;end if (v79==(1 + 0)) then v82=v81 + v80 ;v83=MachoMenuGroup(v78,"Player",v81,v7 + v8 ,v82,v10);v79=3 -1 ;end if (v79==(5 -3)) then v84=v82 + v7 ;v85=v84 + v80 ;v79=3;end if (v79==0) then v80=(v9-(v7 * (169 -(122 + 44))))/(2 -0) ;v81=v6 + v7 ;v79=3 -2 ;end end end local function v25(v87) local v88=(v9-(v7 * (3 + 0)))/2 ;local v89=v6 + v7 ;local v90=v89 + v88 ;local v91=MachoMenuGroup(v87,"Teleport",v89,v7 + v8 ,v90,v10);local v92=v90 + v7 ;local v93=v92 + v88 ;local v94=MachoMenuGroup(v87,"Other",v92,v7 + v8 ,v93,v10);return v91,v94;end local function v26(v95) local v96=v6 + v7 ;local v97=v7 + v8 ;local v98=v97 + v12 + v7 ;local v99=MachoMenuGroup(v95,"Mods",v96,v97,v96 + v11 ,v97 + v12 );local v100=v96 + v11 + v7 ;local v101=MachoMenuGroup(v95,"Other",v100,v7 + v8 ,v100 + v11 ,v10);return v99,SectionTwo,v101;end local function v27(v102) local v103=0;local v104;local v105;local v106;local v107;local v108;local v109;local v110;while true do if (v103==(1 + 2)) then v110=MachoMenuGroup(v102,"Other",v109,v7 + v8 ,v109 + v11 ,v10);return v107,v108,v110;end if ((1 -0)==v103) then v106=v105 + v12 + v7 ;v107=MachoMenuGroup(v102,"Mods",v104,v105,v104 + v11 ,v105 + v12 );v103=67 -(30 + 35) ;end if (v103==0) then v104=v6 + v7 ;v105=v7 + v8 ;v103=1 + 0 ;end if (v103==2) then v108=MachoMenuGroup(v102,"Plate & Spawning",v104,v106,v104 + v11 ,v106 + v12 );v109=v104 + v11 + v7 ;v103=3;end end end local function v28(v111) local v112=1257 -(1043 + 214) ;local v113;local v114;local v115;local v116;local v117;local v118;local v119;while true do if (v112==(7 -5)) then v117=v115 + v7 ;v118=v117 + v113 ;v112=3;end if (v112==(1212 -(323 + 889))) then v113=(v9-(v7 * 3))/2 ;v114=v6 + v7 ;v112=2 -1 ;end if (v112==1) then v115=v114 + v113 ;v116=MachoMenuGroup(v111,"Animations",v114,v7 + v8 ,v115,v10);v112=582 -(361 + 219) ;end if (v112==3) then v119=MachoMenuGroup(v111,"Force Emotes",v117,v7 + v8 ,v118,v10);return v116,v119;end end end local function v29(v120) local v121=320 -(53 + 267) ;local v122;local v123;local v124;local v125;local v126;local v127;while true do if ((0 + 0)==v121) then v122=v6 + v7 ;v123=v7 + v8 ;v121=1;end if (v121==2) then v126=v122 + v11 + v7 ;v127=MachoMenuGroup(v120,"Common Exploits",v126,v123,v126 + v11 ,v123 + v12 );v121=3;end if (v121==(416 -(15 + 398))) then return v125,SectionTwo,v127,SectionFour;end if (v121==(983 -(18 + 964))) then v124=v123 + v12 + v7 ;v125=MachoMenuGroup(v120,"Money Spawner",v122,v123,v122 + v11 ,v123 + v12 );v121=7 -5 ;end end end local function v30(v128) local v129=0 + 0 ;local v130;local v131;local v132;local v133;local v134;while true do if (0==v129) then v130=v6 + v7 ;v131=v7 + v8 ;v129=1 + 0 ;end if (2==v129) then v134=v130 + v11 + v7 ;return v133,SectionTwo,SectionThree;end if (v129==(851 -(20 + 830))) then v132=v131 + v12 + v7 ;v133=MachoMenuGroup(v128,"UPGRADE TO PRO",v130,v131,v130 + v11 ,v131 + v12 );v129=2;end end end local function v31(v135) local v136=v6 + v7 ;local v137=v7 + v8 ;local v138=v137 + v12 + v7 ;local v139=MachoMenuGroup(v135,"Stop",v136,v137,v136 + v11 ,v137 + v12 );local v140=MachoMenuGroup(v135,"Menu Design",v136,v138,v136 + v11 ,v138 + v12 );local v141=v136 + v11 + v7 ;local v142=MachoMenuGroup(v135,"Server Settings",v141,v7 + v8 ,v141 + v11 ,v10);return v139,v140,v142;end local v32={v23(v14)};local v33={v24(v15)};local v34={v25(v16)};local v35={v26(v17)};local v36={v27(v18)};local v37={v28(v19)};local v38={v29(v20)};local v39={v30(v22)};local v40={v31(v21)};local function v41(v143) return GetResourceState(v143)=="started" ;end local v42;if (GetResourceState("qbx_core")=="started") then v42="qbx_core";elseif (GetResourceState("es_extended")=="started") then v42="es_extended";elseif (GetResourceState("qb-core")=="started") then v42="qb-core";else v42="any";end MachoLockLogger();MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
    local xJdRtVpNzQmKyLf = false -- Free Camera
]]);MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
    Unloaded = false
    local aXfPlMnQwErTyUi = false -- Godmode
    local sRtYuIoPaSdFgHj = false -- Invisibility
    local mKjHgFdSaPlMnBv = false -- No Ragdoll
    local uYtReWqAzXcVbNm = false -- Infinite Stamina
    local peqCrVzHDwfkraYZ = false -- Shrink Ped
    local NpYgTbUcXsRoVm = false -- No Clip
    local xCvBnMqWeRtYuIo = false -- Super Jump
    local nxtBFlQWMMeRLs = false -- Levitation
    local fgawjFmaDjdALaO = false -- Super Strength
    local qWeRtYuIoPlMnBv = false -- Super Punch
    local zXpQwErTyUiPlMn = false -- Throw From Vehicle
    local kJfGhTrEeWqAsDz = false -- Force Third Person
    local zXcVbNmQwErTyUi = false -- Force Driveby
    local yHnvrVNkoOvGMWiS = false -- Anti-Headshot
    local nHgFdSaZxCvBnMq = false -- Anti-Freeze
    local fAwjeldmwjrWkSf = false -- Anti-TP
    local aDjsfmansdjwAEl = false -- Anti-Blackscreen
    local qWpEzXvBtNyLmKj = false -- Crosshair

    local egfjWADmvsjAWf = false -- Spoofed Weapon Spawning
    local LkJgFdSaQwErTy = false -- Infinite Ammo
    local QzWxEdCvTrBnYu = false -- Explosive Ammo
    local RfGtHyUjMiKoLp = false -- One Shot Kill 

    local zXcVbNmQwErTyUi = false -- Vehicle Godmode
    local RNgZCddPoxwFhmBX = false -- Force Vehicle Engine
    local PlAsQwErTyUiOp = false -- Vehicle Auto Repair
    local LzKxWcVbNmQwErTy = false -- Freeze Vehicle
    local NuRqVxEyKiOlZm = false -- Vehicle Hop
    local GxRpVuNzYiTq = false -- Rainbow Vehicle
    local MqTwErYuIoLp = false -- Drift Mode
    local NvGhJkLpOiUy = false -- Easy Handling
    local VkLpOiUyTrEq = false -- Instant Breaks
    local BlNkJmLzXcVb = false -- Unlimited Fuel

    local aSwDeFgHiJkLoPx = false -- Normal Kill Everyone
    local qWeRtYuIoPlMnAb = false -- Permanent Kill Everyone
    local tUOgshhvIaku = false -- RPG Kill Everyone
    local zXcVbNmQwErTyUi = false -- 
]]);MachoMenuCheckbox(v32[2 -1 ],"Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if aXfPlMnQwErTyUi == nil then aXfPlMnQwErTyUi = false end
        aXfPlMnQwErTyUi = true

        local function OxWJ1rY9vB()
            local fLdRtYpLoWqEzXv = CreateThread
            fLdRtYpLoWqEzXv(function()
                while aXfPlMnQwErTyUi and not Unloaded do
                    local dOlNxGzPbTcQ = PlayerPedId()
                    local rKsEyHqBmUiW = PlayerId()

                    if GetResourceState("ReaperV4") == "started" then
                        local kcWsWhJpCwLI = SetPlayerInvincible
                        local ByTqMvSnAzXd = SetEntityInvincible
                        kcWsWhJpCwLI(rKsEyHqBmUiW, true)
                        ByTqMvSnAzXd(dOlNxGzPbTcQ, true)

                    elseif GetResourceState("WaveShield") == "started" then
                        local cvYkmZYIjvQQ = SetEntityCanBeDamaged
                        cvYkmZYIjvQQ(dOlNxGzPbTcQ, false)

                    else
                        local BiIqUJHexRrR = SetEntityCanBeDamaged
                        local UtgGRNyiPhOs = SetEntityProofs
                        local rVuKoDwLsXpC = SetEntityInvincible

                        BiIqUJHexRrR(dOlNxGzPbTcQ, false)
                        UtgGRNyiPhOs(dOlNxGzPbTcQ, true, true, true, false, true, false, false, false)
                        rVuKoDwLsXpC(dOlNxGzPbTcQ, true)
                    end

                    Wait(0)
                end
            end)
        end

        OxWJ1rY9vB()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        aXfPlMnQwErTyUi = false

        local dOlNxGzPbTcQ = PlayerPedId()
        local rKsEyHqBmUiW = PlayerId()

        if GetResourceState("ReaperV4") == "started" then
            local kcWsWhJpCwLI = SetPlayerInvincible
            local ByTqMvSnAzXd = SetEntityInvincible

            kcWsWhJpCwLI(rKsEyHqBmUiW, false)
            ByTqMvSnAzXd(dOlNxGzPbTcQ, false)

        elseif GetResourceState("WaveShield") == "started" then
            local AilJsyZTXnNc = SetEntityCanBeDamaged
            AilJsyZTXnNc(dOlNxGzPbTcQ, true)

        else
            local tBVAZMubUXmO = SetEntityCanBeDamaged
            local yuTiZtxOXVnE = SetEntityProofs
            local rVuKoDwLsXpC = SetEntityInvincible

            tBVAZMubUXmO(dOlNxGzPbTcQ, true)
            yuTiZtxOXVnE(dOlNxGzPbTcQ, false, false, false, false, false, false, false, false)
            rVuKoDwLsXpC(dOlNxGzPbTcQ, false)
        end
    ]]);end);MachoMenuCheckbox(v32[1],"Invisibility",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if sRtYuIoPaSdFgHj == nil then sRtYuIoPaSdFgHj = false end
        sRtYuIoPaSdFgHj = true

        local function d2NcWoyTfb()
            if sRtYuIoPaSdFgHj == nil then sRtYuIoPaSdFgHj = false end
            sRtYuIoPaSdFgHj = true

            local zXwCeVrBtNuMyLk = CreateThread
            zXwCeVrBtNuMyLk(function()
                while sRtYuIoPaSdFgHj and not Unloaded do
                    local uYiTpLaNmZxCwEq = SetEntityVisible
                    local hGfDrEsWxQaZcVb = PlayerPedId()
                    uYiTpLaNmZxCwEq(hGfDrEsWxQaZcVb, false, false)
                    Wait(0)
                end

                local uYiTpLaNmZxCwEq = SetEntityVisible
                local hGfDrEsWxQaZcVb = PlayerPedId()
                uYiTpLaNmZxCwEq(hGfDrEsWxQaZcVb, true, false)
            end)
        end

        d2NcWoyTfb()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        sRtYuIoPaSdFgHj = false

        local function tBKM4syGJL()
            local uYiTpLaNmZxCwEq = SetEntityVisible
            local hGfDrEsWxQaZcVb = PlayerPedId()
            uYiTpLaNmZxCwEq(hGfDrEsWxQaZcVb, true, false)
        end

        tBKM4syGJL()
    ]]);end);MachoMenuCheckbox(v32[2 -1 ],"No Ragdoll",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if mKjHgFdSaPlMnBv == nil then mKjHgFdSaPlMnBv = false end
        mKjHgFdSaPlMnBv = true

        local function jP7xUrK9Ao()
            local zVpLyNrTmQxWsEd = CreateThread
            zVpLyNrTmQxWsEd(function()
                while mKjHgFdSaPlMnBv and not Unloaded do
                    local oPaSdFgHiJkLzXc = SetPedCanRagdoll
                    oPaSdFgHiJkLzXc(PlayerPedId(), false)
                    Wait(0)
                end
            end)
        end

        jP7xUrK9Ao()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        mKjHgFdSaPlMnBv = false
    ]]);end);MachoMenuCheckbox(v32[1552 -(1126 + 425) ],"Infinite Stamina",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if uYtReWqAzXcVbNm == nil then uYtReWqAzXcVbNm = false end
        uYtReWqAzXcVbNm = true

        local function YLvd3pM0tB()
            local tJrGyHnMuQwSaZx = CreateThread
            tJrGyHnMuQwSaZx(function()
                while uYtReWqAzXcVbNm and not Unloaded do
                    local aSdFgHjKlQwErTy = RestorePlayerStamina
                    local rTyUiEaOpAsDfGhJk = PlayerId()
                    aSdFgHjKlQwErTy(rTyUiEaOpAsDfGhJk, 1.0)
                    Wait(0)
                end
            end)
        end

        YLvd3pM0tB()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        uYtReWqAzXcVbNm = false
    ]]);end);MachoMenuCheckbox(v32[1],"Tiny Ped",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if peqCrVzHDwfkraYZ == nil then peqCrVzHDwfkraYZ = false end
        peqCrVzHDwfkraYZ = true

        local function YfeemkaufrQjXTFY()
            local OLZACovzmAvgWPmC = CreateThread
            OLZACovzmAvgWPmC(function()
                while peqCrVzHDwfkraYZ and not Unloaded do
                    local aukLdkvEinBsMWuA = SetPedConfigFlag
                    aukLdkvEinBsMWuA(PlayerPedId(), 223, true)
                    Wait(0)
                end
            end)
        end

        YfeemkaufrQjXTFY()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        peqCrVzHDwfkraYZ = false
        local aukLdkvEinBsMWuA = SetPedConfigFlag
        aukLdkvEinBsMWuA(PlayerPedId(), 223, false)
    ]]);end);MachoMenuCheckbox(v32[1],"No Clip",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if NpYgTbUcXsRoVm == nil then NpYgTbUcXsRoVm = false end
        NpYgTbUcXsRoVm = true

        local function KUQpH7owdz()
            local RvBcNxMzKgUiLo = PlayerPedId
            local EkLpOiUhYtGrFe = GetVehiclePedIsIn
            local CtVbXnMzQaWsEd = GetEntityCoords
            local DrTgYhUjIkOlPm = GetEntityHeading
            local QiWzExRdCtVbNm = GetGameplayCamRelativeHeading
            local AoSdFgHjKlZxCv = GetGameplayCamRelativePitch
            local JkLzXcVbNmAsDf = IsDisabledControlJustPressed
            local TyUiOpAsDfGhJk = IsDisabledControlPressed
            local WqErTyUiOpAsDf = SetEntityCoordsNoOffset
            local PlMnBvCxZaSdFg = SetEntityHeading
            local HnJmKlPoIuYtRe = CreateThread

            local YtReWqAzXsEdCv = false

            HnJmKlPoIuYtRe(function()
                while NpYgTbUcXsRoVm and not Unloaded do
                    Wait(0)

                    if JkLzXcVbNmAsDf(0, 303) then
                        YtReWqAzXsEdCv = not YtReWqAzXsEdCv
                    end

                    if YtReWqAzXsEdCv then
                        local speed = 2.0

                        local p = RvBcNxMzKgUiLo()
                        local v = EkLpOiUhYtGrFe(p, false)
                        local inVeh = v ~= 0 and v ~= nil
                        local ent = inVeh and v or p

                        local pos = CtVbXnMzQaWsEd(ent, true)
                        local head = QiWzExRdCtVbNm() + DrTgYhUjIkOlPm(ent)
                        local pitch = AoSdFgHjKlZxCv()

                        local dx = -math.sin(math.rad(head))
                        local dy = math.cos(math.rad(head))
                        local dz = math.sin(math.rad(pitch))
                        local len = math.sqrt(dx * dx + dy * dy + dz * dz)

                        if len ~= 0 then
                            dx, dy, dz = dx / len, dy / len, dz / len
                        end

                        if TyUiOpAsDfGhJk(0, 21) then speed = speed + 2.5 end
                        if TyUiOpAsDfGhJk(0, 19) then speed = 0.25 end

                        if TyUiOpAsDfGhJk(0, 32) then
                            pos = pos + vector3(dx, dy, dz) * speed
                        end
                        if TyUiOpAsDfGhJk(0, 34) then
                            pos = pos + vector3(-dy, dx, 0.0) * speed
                        end
                        if TyUiOpAsDfGhJk(0, 269) then
                            pos = pos - vector3(dx, dy, dz) * speed
                        end
                        if TyUiOpAsDfGhJk(0, 9) then
                            pos = pos + vector3(dy, -dx, 0.0) * speed
                        end
                        if TyUiOpAsDfGhJk(0, 22) then
                            pos = pos + vector3(0.0, 0.0, speed)
                        end
                        if TyUiOpAsDfGhJk(0, 36) then
                            pos = pos - vector3(0.0, 0.0, speed)
                        end

                        WqErTyUiOpAsDf(ent, pos.x, pos.y, pos.z, true, true, true)
                        PlMnBvCxZaSdFg(ent, head)
                    end
                end
                YtReWqAzXsEdCv = false
            end)
        end

        KUQpH7owdz()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        NpYgTbUcXsRoVm = false
    ]]);end);MachoMenuCheckbox(v32[406 -(118 + 287) ],"Free Camera",function() MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
        
        g_FreecamFeatureEnabled = true
        
        local function initializeFreecam()
            -- Script State
            local isFreecamActive = false
            local freecamHandle = nil
            local targetCoords, targetEntity = nil, nil
            local currentFeatureIndex = 1

            -- NEW FEATURE: Ped Spawning State
            local pedsToSpawn = { "s_m_m_movalien_01", "u_m_y_zombie_01", "s_m_y_blackops_01", "csb_abigail", "a_c_coyote" }
            local currentPedIndex = 1

            local stopFreecam, startFreecam

            -- Feature Definitions (Now with Ped Spawner)
            local Features = { 
                "Look-Around", 
                "Spawn Ped",         -- ADDED
                "Teleport", 
                "Delete Entity", 
                "Fling Entity", 
                "Flip Vehicle", 
                "Launch Vehicle",
                "Teleport Vehicle",
                "Mess With Vehicle"
            }

            -- Helper Function for Drawing Text
            local function drawText(content, x, y, options)
                SetTextFont(options.font or 4)
                SetTextScale(0.0, options.scale or 0.3)
                SetTextColour(options.color[1], options.color[2], options.color[3], options.color[4])
                SetTextOutline()
                if options.shadow then SetTextDropShadow(2, 0, 0, 0, 255) end
                SetTextCentre(true)
                BeginTextCommandDisplayText("STRING")
                AddTextComponentSubstringPlayerName(content)
                EndTextCommandDisplayText(x, y)
            end

            -- Main Draw Thread (UI Only)
            local function drawThread()
                while isFreecamActive do
                    Wait(0)
                    -- Draw Crosshair
                    drawText("•", 0.5, 0.485, {font = 4, scale = 0.5, color = {255,255,255,200}})
                    
                    -- ##### UI FIX: SCROLLING MENU LOGIC #####
                    local ui = { x = 0.5, y = 0.75, lineHeight = 0.03, maxVisible = 7, colors = { text = {245, 245, 245, 120}, selected = {52, 152, 219, 255} } }
                    local numFeatures = #Features
                    local startIdx, endIdx = 1, numFeatures

                    if numFeatures > ui.maxVisible then
                        startIdx = math.max(1, currentFeatureIndex - math.floor(ui.maxVisible / 2))
                        endIdx = math.min(numFeatures, startIdx + ui.maxVisible - 1)
                        if endIdx == numFeatures then
                            startIdx = numFeatures - ui.maxVisible + 1
                        end
                    end

                    -- Draw a counter above the list
                    drawText(("%d/%d"):format(currentFeatureIndex, numFeatures), ui.x, ui.y - 0.035, {scale = 0.25, color = {255,255,255,120}})

                    local displayCount = 0
                    for i = startIdx, endIdx do
                        local featureName = Features[i]
                        local isSelected = (i == currentFeatureIndex)
                        local lineY = ui.y + (displayCount * ui.lineHeight)
                        if isSelected then
                            drawText(("[ %s ]"):format(featureName), ui.x, lineY, {scale = 0.32, color = ui.colors.selected, shadow = true})
                        else
                            drawText(featureName, ui.x, lineY, {scale = 0.28, color = ui.colors.text})
                        end
                        displayCount = displayCount + 1
                    end
                end
            end

            -- Main Input and Logic Thread
            local function logicThread()
                while isFreecamActive do
                    Wait(0)
                    if IsDisabledControlJustPressed(0, 241) then currentFeatureIndex = (currentFeatureIndex - 2 + #Features) % #Features + 1 elseif IsDisabledControlJustPressed(0, 242) then currentFeatureIndex = (currentFeatureIndex % #Features) + 1 end
                    
                    if IsDisabledControlJustPressed(0, 24) then -- Action Key Pressed
                        local currentFeature = Features[currentFeatureIndex]
                        if currentFeature == "Teleport" and targetCoords then
                            local ped = PlayerPedId()
                            local _, z = GetGroundZFor_3dCoord(targetCoords.x, targetCoords.y, targetCoords.z + 1.0, false)
                            SetEntityCoords(ped, targetCoords.x, targetCoords.y, z and z + 1.0 or targetCoords.z, false, false, false, true)
                        -- ##### NEW FEATURE: SAFE PED SPAWNER LOGIC #####
                        elseif currentFeature == "Spawn Ped" and targetCoords then
                            local model = pedsToSpawn[currentPedIndex]
                            CreateThread(function()
                                local modelHash = GetHashKey(model)
                                RequestModel(modelHash)
                                local timeout = 2000 -- 2 second timeout for model loading
                                while not HasModelLoaded(modelHash) and timeout > 0 do
                                    Wait(100)
                                    timeout = timeout - 100
                                end
                                if HasModelLoaded(modelHash) then
                                    local _, z = GetGroundZFor_3dCoord(targetCoords.x, targetCoords.y, targetCoords.z, false)
                                    local spawnPos = vector3(targetCoords.x, targetCoords.y, z and z + 1.0 or targetCoords.z)
                                    local newPed = CreatePed(4, modelHash, spawnPos.x, spawnPos.y, spawnPos.z, 0.0, true, true)
                                    SetModelAsNoLongerNeeded(modelHash)
                                    TaskStandStill(newPed, -1) -- Make them stand still
                                    currentPedIndex = (currentPedIndex % #pedsToSpawn) + 1 -- Cycle to the next ped for next time
                                end
                            end)
                        elseif currentFeature == "Delete Entity" and targetEntity and DoesEntityExist(targetEntity) then
                            SetEntityAsMissionEntity(targetEntity, true, true)
                            DeleteEntity(targetEntity)
                        elseif currentFeature == "Fling Entity" and targetEntity and (IsEntityAPed(targetEntity) or IsEntityAVehicle(targetEntity)) then
                            ApplyForceToEntity(targetEntity, 1, math.random(-50.0, 50.0), math.random(-50.0, 50.0), 50.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
                        elseif currentFeature == "Flip Vehicle" and targetEntity and IsEntityAVehicle(targetEntity) then
                            SetVehicleOnGroundProperly(targetEntity)
                        elseif currentFeature == "Launch Vehicle" and targetEntity and IsEntityAVehicle(targetEntity) then
                            ApplyForceToEntity(targetEntity, 1, 0.0, 0.0, 100.0, 0.0, 0.0, 0.0, 0, true, true, true, false, true)
                        elseif currentFeature == "Teleport Vehicle" and targetEntity and IsEntityAVehicle(targetEntity) then
                            local currentCoords = GetEntityCoords(targetEntity)
                            local newCoords = currentCoords + GetEntityForwardVector(targetEntity) * 5.0 + vector3(0.0, 0.0, 50.0)
                            SetEntityCoords(targetEntity, newCoords.x, newCoords.y, newCoords.z, false, false, false, true)
                        elseif currentFeature == "Mess With Vehicle" and targetEntity and IsEntityAVehicle(targetEntity) then
                            local actions = {
                                function(veh) SetVehicleTyreBurst(veh, math.random(0, 5), false, 1000.0) end,
                                function(veh) SetVehicleDoorOpen(veh, math.random(0, 5), false, false) end,
                                function(veh) SetVehicleEngineOn(veh, not IsVehicleEngineOn(veh), false, true) end,
                                function(veh) SetVehicleLights(veh, math.random(0, 2)) end,
                                function(veh) StartVehicleHorn(veh, 1000, "HELDDOWN", false) end
                            }
                            local randomAction = actions[math.random(#actions)]
                            randomAction(targetEntity)
                        end
                    end
                end
            end

            -- Main Camera Movement Thread (Unchanged)
            local function cameraThread()
                local baseSpeed, boostSpeed, slowSpeed = 1.0, 9.0, 0.1; local mouseSensitivity = 7.5; local function clamp(val, min, max) return math.max(min, math.min(max, val)) end; local function rotToDir(rot) local rX, rZ = math.rad(rot.x), math.rad(rot.z); return vector3(-math.sin(rZ)*math.cos(rX), math.cos(rZ)*math.cos(rX), math.sin(rX)) end;
                while isFreecamActive do
                    Wait(0)
                    local camPos, camRotRaw = GetCamCoord(freecamHandle), GetCamRot(freecamHandle, 2); local camRot = { x = camRotRaw.x, y = camRotRaw.y, z = camRotRaw.z }; local direction = rotToDir(camRot); local right = vector3(direction.y, -direction.x, 0)
                    local speed = baseSpeed; if IsDisabledControlPressed(0, 21) then speed = boostSpeed end; if IsDisabledControlPressed(0, 19) then speed = slowSpeed end
                    if IsDisabledControlPressed(0, 32) then camPos = camPos + direction * speed end; if IsDisabledControlPressed(0, 33) then camPos = camPos - direction * speed end; if IsDisabledControlPressed(0, 34) then camPos = camPos - right * speed end; if IsDisabledControlPressed(0, 35) then camPos = camPos + right * speed end; if IsDisabledControlPressed(0, 22) then camPos = camPos + vector3(0, 0, 1.0) * speed end; if IsDisabledControlPressed(0, 36) then camPos = camPos - vector3(0, 0, 1.0) * speed end
                    local mX, mY = GetControlNormal(0,1)*mouseSensitivity, GetControlNormal(0,2)*mouseSensitivity; camRot.x = clamp(camRot.x-mY, -89.0, 89.0); camRot.z = camRot.z-mX
                    SetCamCoord(freecamHandle, camPos.x, camPos.y, camPos.z); SetCamRot(freecamHandle, camRot.x, camRot.y, camRot.z, 2); SetFocusPosAndVel(camPos.x, camPos.y, camPos.z, 0.0, 0.0, 0.0)
                    local ray = StartShapeTestRay(camPos.x, camPos.y, camPos.z, camPos.x+direction.x*1000.0, camPos.y+direction.y*1000.0, camPos.z+direction.z*1000.0, -1, PlayerPedId(), 7); local _, hit, coords, _, entity = GetShapeTestResult(ray); if hit then targetCoords, targetEntity = coords, entity else targetCoords, targetEntity = nil, nil end
                end
            end
            
            startFreecam = function()
                if isFreecamActive then return end
                isFreecamActive = true
                local startPos, startRot, startFov = GetGameplayCamCoord(), GetGameplayCamRot(2), GetGameplayCamFov()
                freecamHandle = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", startPos.x, startPos.y, startPos.z, startRot.x, startRot.y, startRot.z, startFov, true, 2)
                
                if not DoesCamExist(freecamHandle) then isFreecamActive = false; return end

                RenderScriptCams(true, false, 0, true, true)
                SetCamActive(freecamHandle, true)
                CreateThread(drawThread)
                CreateThread(logicThread)
                CreateThread(cameraThread)
            end

            stopFreecam = function()
                if not isFreecamActive then return end
                isFreecamActive = false
                if freecamHandle and DoesCamExist(freecamHandle) then SetCamActive(freecamHandle, false); RenderScriptCams(false, false, 0, true, true); DestroyCam(freecamHandle, false) end
                Wait(10); SetFocusEntity(PlayerPedId()); ClearFocus()
                freecamHandle = nil
            end
            
            CreateThread(function()
                while g_FreecamFeatureEnabled and not Unloaded do Wait(0)
                    if IsDisabledControlJustPressed(0, 74) then -- H key
                        if isFreecamActive then stopFreecam()
                        else startFreecam() end
                    end
                end
            end)
        end
        
        initializeFreecam()
    ]]);end,function() MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
        g_FreecamFeatureEnabled = false
        if isFreecamActive and stopFreecam then stopFreecam() end
    ]]);end);MachoMenuCheckbox(v32[3 -2 ],"Super Jump",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if xCvBnMqWeRtYuIo == nil then xCvBnMqWeRtYuIo = false end
        xCvBnMqWeRtYuIo = true

        local function JcWT5vYEq1()
            local yLkPwOiUtReAzXc = CreateThread
            yLkPwOiUtReAzXc(function()
                while xCvBnMqWeRtYuIo and not Unloaded do
                    local hGfDsAzXcVbNmQw = SetSuperJumpThisFrame
                    local eRtYuIoPaSdFgHj = PlayerPedId()
                    local oPlMnBvCxZlKjHg = PlayerId()

                    hGfDsAzXcVbNmQw(oPlMnBvCxZlKjHg)
                    Wait(0)
                end
            end)
        end

        JcWT5vYEq1()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        xCvBnMqWeRtYuIo = false
    ]]);end);MachoMenuCheckbox(v32[1122 -(118 + 1003) ],"Levitation",function() local v144=0 -0 ;while true do if (v144==(377 -(142 + 235))) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        -- make helpers global so other chunks can use them
        function ScaleVector(vect, mult)
            return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
        end

        function AddVectors(vect1, vect2)
            return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
        end

        function ApplyForce(entity, direction)
            local XroXTNEFqxoWfH = ApplyForceToEntity
            XroXTNEFqxoWfH(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
        end

        function SubVectors(vect1, vect2)
            return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
        end

        function Oscillate(entity, position, angleFreq, dampRatio)
            local OBaTQqteIpmZVo = GetEntityVelocity
            local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
            local pos2 = AddVectors(ScaleVector(OBaTQqteIpmZVo(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
            local targetPos = SubVectors(pos1, pos2)
            ApplyForce(entity, targetPos)
        end

        function RotationToDirection(rot)
            local radZ = math.rad(rot.z)
            local radX = math.rad(rot.x)
            local cosX = math.cos(radX)
            return vector3(
                -math.sin(radZ) * cosX,
                math.cos(radZ) * cosX,
                math.sin(radX)
            )
        end

        function GetClosestCoordOnLine(startCoords, endCoords, entity)
            local CDGcdMQhosGVCf = GetShapeTestResult
            local UaWIFHgeizhHua = StartShapeTestRay
            local result, hit, hitCoords, surfaceNormal, entityHit =
                CDGcdMQhosGVCf(UaWIFHgeizhHua(startCoords.x, startCoords.y, startCoords.z, endCoords.x, endCoords.y, endCoords.z, -1, entity, 0))
            return hit == 1, hitCoords
        end

        function GetCameraLookingAtCoord(distance)
            local playerPed = PlayerPedId()
            local camRot = GetGameplayCamRot(2)
            local camCoord = GetGameplayCamCoord()
            local forwardVector = RotationToDirection(camRot)
            local destination = vector3(
                camCoord.x + forwardVector.x * distance,
                camCoord.y + forwardVector.y * distance,
                camCoord.z + forwardVector.z * distance
            )
            local hit, endCoords = GetClosestCoordOnLine(camCoord, destination, playerPed)
            if hit then return endCoords else return destination end
        end
    ]]);MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function awfjawr57awt7f()
            nxtBFlQWMMeRLs = true

            local jIiIfikctHYrlH = CreateThread
            jIiIfikctHYrlH(function()
                while nxtBFlQWMMeRLs and not Unloaded do
                    Wait(0)
                    local ped = PlayerPedId()

                    local SZxuJlyJQmGlZz = SetPedCanRagdoll
                    local valuOZfymjeVaH = IsEntityPlayingAnim
                    local IiHiLVRagMQhrn = RequestAnimDict
                    local mOZOquvggdnbod = HasAnimDictLoaded
                    local UFZdrZNXpLwpjT = TaskPlayAnim
                    local cQPIZtKyyWaVcY = GetCameraLookingAtCoord
                    local OyvuuAMyvjtIzD = GetGameplayCamRot
                    local XKWvPIkCKMXIfR = IsDisabledControlPressed  -- FIXED: missing '='

                    while XKWvPIkCKMXIfR(0, 22) do
                        SZxuJlyJQmGlZz(ped, false)

                        if not valuOZfymjeVaH(ped, "oddjobs@assassinate@construction@", "unarmed_fold_arms", 3) then
                            IiHiLVRagMQhrn("oddjobs@assassinate@construction@")
                            while not mOZOquvggdnbod("oddjobs@assassinate@construction@") do
                                Wait(0)
                            end
                            UFZdrZNXpLwpjT(ped, "oddjobs@assassinate@construction@", "unarmed_fold_arms",
                                8.0, -8.0, -1, 49, 0, false, false, false)
                        end

                        local camRot = OyvuuAMyvjtIzD(2)
                        local camHeading = (camRot.z + 360) % 360
                        local direction = cQPIZtKyyWaVcY(77)

                        SetEntityHeading(ped, camHeading)
                        Oscillate(ped, direction, 0.33, 0.9)

                        Wait(1)
                    end

                    if valuOZfymjeVaH(ped, "oddjobs@assassinate@construction@", "unarmed_fold_arms", 3) then
                        ClearPedTasks(ped)
                    end

                    SZxuJlyJQmGlZz(ped, true)
                end
            end)
        end

        awfjawr57awt7f()
    ]]);break;end end end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        nxtBFlQWMMeRLs = false
        ClearPedTasks(PlayerPedId())
    ]]);end);MachoMenuCheckbox(v32[1],"Super Strength",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if fgawjFmaDjdALaO == nil then fgawjFmaDjdALaO = false end
        fgawjFmaDjdALaO = true

        local holdingEntity = false
        local holdingCarEntity = false
        local holdingPed = false
        local heldEntity = nil
        local entityType = nil
        local awfhjawrasfs = CreateThread

        awfhjawrasfs(function()
            while fgawjFmaDjdALaO and not Unloaded do
                Wait(0)
                if holdingEntity and heldEntity then
                    local playerPed = PlayerPedId()
                    local headPos = GetPedBoneCoords(playerPed, 0x796e, 0.0, 0.0, 0.0)
                    DrawText3Ds(headPos.x, headPos.y, headPos.z + 0.5, "[Y] Drop Entity / [U] Attach Ped")
                    
                    if holdingCarEntity and not IsEntityPlayingAnim(playerPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 3) then
                        RequestAnimDict('anim@mp_rollarcoaster')
                        while not HasAnimDictLoaded('anim@mp_rollarcoaster') do
                            Wait(100)
                        end
                        TaskPlayAnim(playerPed, 'anim@mp_rollarcoaster', 'hands_up_idle_a_player_one', 8.0, -8.0, -1, 50, 0, false, false, false)
                    elseif (holdingPed or not holdingCarEntity) and not IsEntityPlayingAnim(playerPed, 'anim@heists@box_carry@', 'idle', 3) then
                        RequestAnimDict('anim@heists@box_carry@')
                        while not HasAnimDictLoaded('anim@heists@box_carry@') do
                            Wait(100)
                        end
                        TaskPlayAnim(playerPed, 'anim@heists@box_carry@', 'idle', 8.0, -8.0, -1, 50, 0, false, false, false)
                    end

                    if not IsEntityAttached(heldEntity) then
                        holdingEntity = false
                        holdingCarEntity = false
                        holdingPed = false
                        heldEntity = nil
                    end
                end
            end
        end)

        awfhjawrasfs(function()
            while fgawjFmaDjdALaO and not Unloaded do
                Wait(0)
                local playerPed = PlayerPedId()
                local camPos = GetGameplayCamCoord()
                local camRot = GetGameplayCamRot(2)
                local direction = RotationToDirection(camRot)
                local dest = vec3(camPos.x + direction.x * 10.0, camPos.y + direction.y * 10.0, camPos.z + direction.z * 10.0)

                local rayHandle = StartShapeTestRay(camPos.x, camPos.y, camPos.z, dest.x, dest.y, dest.z, -1, playerPed, 0)
                local _, hit, _, _, entityHit = GetShapeTestResult(rayHandle)
                local validTarget = false

                if hit == 1 then
                    entityType = GetEntityType(entityHit)
                    if entityType == 3 or entityType == 2 or entityType == 1 then
                        validTarget = true
                        local headPos = GetPedBoneCoords(playerPed, 0x796e, 0.0, 0.0, 0.0)
                        DrawText3Ds(headPos.x, headPos.y, headPos.z + 0.5, "[E] Pick Up / [Y] Drop")
                    end
                end

                if IsDisabledControlJustReleased(0, 38) then
                    if validTarget and not holdingEntity then
                        holdingEntity = true
                        heldEntity = entityHit

                        local wfuawruawts = AttachEntityToEntity

                        if entityType == 3 then
                            wfuawruawts(heldEntity, playerPed, GetPedBoneIndex(playerPed, 60309), 0.0, 0.2, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
                        elseif entityType == 2 then
                            holdingCarEntity = true
                            wfuawruawts(heldEntity, playerPed, GetPedBoneIndex(playerPed, 60309), 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 1, true)
                        elseif entityType == 1 then
                            holdingPed = true
                            wfuawruawts(heldEntity, playerPed, GetPedBoneIndex(playerPed, 60309), 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 1, true)
                        end
                    end
                elseif IsDisabledControlJustReleased(0, 246) then
                    if holdingEntity then
                        local wgfawhtawrs = DetachEntity
                        local dfgjsdfuwer = ApplyForceToEntity
                        local sdgfhjwserw = ClearPedTasks

                        wgfawhtawrs(heldEntity, true, true)
                        dfgjsdfuwer(heldEntity, 1, direction.x * 500, direction.y * 500, direction.z * 500, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
                        holdingEntity = false
                        holdingCarEntity = false
                        holdingPed = false
                        heldEntity = nil
                        sdgfhjwserw(PlayerPedId())
                    end
                end
            end
        end)

        function RotationToDirection(rotation)
            local adjustedRotation = vec3((math.pi / 180) * rotation.x, (math.pi / 180) * rotation.y, (math.pi / 180) * rotation.z)
            local direction = vec3(-math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), math.sin(adjustedRotation.x))
            return direction
        end

        function DrawText3Ds(x, y, z, text)
            local onScreen, _x, _y = World3dToScreen2d(x, y, z)
            local px, py, pz = table.unpack(GetGameplayCamCoords())
            local scale = (1 / GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)) * 2
            local fov = (1 / GetGameplayCamFov()) * 100
            scale = scale * fov

            if onScreen then
                SetTextScale(0.0 * scale, 0.35 * scale)
                SetTextFont(0)
                SetTextProportional(1)
                SetTextColour(255, 255, 255, 215)
                SetTextDropshadow(0, 0, 0, 0, 155)
                SetTextEdge(2, 0, 0, 0, 150)
                SetTextDropShadow()
                -- SetTextOutline()
                SetTextEntry("STRING")
                SetTextCentre(1)
                AddTextComponentString(text)
                DrawText(_x, _y)
            end
        end
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        fgawjFmaDjdALaO = false
    ]]);end);MachoMenuCheckbox(v32[4 -3 ],"Super Punch",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if qWeRtYuIoPlMnBv == nil then qWeRtYuIoPlMnBv = false end
        qWeRtYuIoPlMnBv = true

        local function NdaFBuHkvo()
            local uTrEsAzXcVbNmQw = CreateThread
            uTrEsAzXcVbNmQw(function()
                while qWeRtYuIoPlMnBv and not Unloaded do
                    local nBvCxZlKjHgFdSa = SetPlayerMeleeWeaponDamageModifier
                    local cVbNmQwErTyUiOp = SetPlayerVehicleDamageModifier
                    local bNmQwErTyUiOpAs = SetWeaponDamageModifier
                    local sDfGhJkLqWeRtYu = PlayerId()
                    local DamageRateValue = 150.0
                    local WeaponNameForDamage = "WEAPON_UNARMED"


                    nBvCxZlKjHgFdSa(sDfGhJkLqWeRtYu, DamageRateValue)
                    cVbNmQwErTyUiOp(sDfGhJkLqWeRtYu, DamageRateValue)
                    bNmQwErTyUiOpAs(GetHashKey(WeaponNameForDamage), DamageRateValue)

                    Wait(0)
                end
            end)
        end

        NdaFBuHkvo()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local qWeRtYuIoPlMnBv = false
        local nBvCxZlKjHgFdSa = SetPlayerMeleeWeaponDamageModifier
        local cVbNmQwErTyUiOp = SetPlayerVehicleDamageModifier
        local bNmQwErTyUiOpAs = SetWeaponDamageModifier
        local sDfGhJkLqWeRtYu = PlayerId()

        nBvCxZlKjHgFdSa(sDfGhJkLqWeRtYu, 1.0)
        cVbNmQwErTyUiOp(sDfGhJkLqWeRtYu, 1.0)
        bNmQwErTyUiOpAs(GetHashKey("WEAPON_UNARMED"), 1.0)
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Throw From Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if zXpQwErTyUiPlMn == nil then zXpQwErTyUiPlMn = false end
        zXpQwErTyUiPlMn = true

        local function qXzRP7ytKW()
            local iLkMzXvBnQwSaTr = CreateThread
            iLkMzXvBnQwSaTr(function()
                while zXpQwErTyUiPlMn and not Unloaded do
                    local vBnMaSdFgTrEqWx = SetRelationshipBetweenGroups
                    vBnMaSdFgTrEqWx(5, GetHashKey('PLAYER'), GetHashKey('PLAYER'))
                    Wait(0)
                end
            end)
        end

        qXzRP7ytKW()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        zXpQwErTyUiPlMn = false
    ]]);end);MachoMenuCheckbox(v32[978 -(553 + 424) ],"Force Third Person",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if kJfGhTrEeWqAsDz == nil then kJfGhTrEeWqAsDz = false end
        kJfGhTrEeWqAsDz = true

        local function pqkTRWZ38y()
            local gKdNqLpYxMiV = CreateThread
            gKdNqLpYxMiV(function()
                while kJfGhTrEeWqAsDz and not Unloaded do
                    local qWeRtYuIoPlMnBv = SetFollowPedCamViewMode
                    local aSdFgHjKlQwErTy = SetFollowVehicleCamViewMode

                    qWeRtYuIoPlMnBv(0)
                    aSdFgHjKlQwErTy(0)
                    Wait(0)
                end
            end)
        end

        pqkTRWZ38y()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        kJfGhTrEeWqAsDz = false
    ]]);end);MachoMenuCheckbox(v32[1 -0 ],"Force Driveby",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if zXcVbNmQwErTyUi == nil then zXcVbNmQwErTyUi = false end
        zXcVbNmQwErTyUi = true

        local function UEvLBcXqM6()
            local cVbNmAsDfGhJkLz = CreateThread
            cVbNmAsDfGhJkLz(function()
                while zXcVbNmQwErTyUi and not Unloaded do
                    local lKjHgFdSaZxCvBn = SetPlayerCanDoDriveBy
                    local eRtYuIoPaSdFgHi = PlayerPedId()

                    lKjHgFdSaZxCvBn(eRtYuIoPaSdFgHi, true)
                    Wait(0)
                end
            end)
        end

        UEvLBcXqM6()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        zXcVbNmQwErTyUi = false
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Anti-Headshot",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if yHnvrVNkoOvGMWiS == nil then yHnvrVNkoOvGMWiS = false end
        yHnvrVNkoOvGMWiS = true

        local eeitKYqDwYbPslTW = CreateThread
        local function LIfbdMbeIAeHTnnx()
            eeitKYqDwYbPslTW(function()
                while yHnvrVNkoOvGMWiS and not Unloaded do
                    local fhw72q35d8sfj = SetPedSuffersCriticalHits
                    fhw72q35d8sfj(PlayerPedId(), false)
                    Wait(0)
                end
            end)
        end

        LIfbdMbeIAeHTnnx()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        yHnvrVNkoOvGMWiS = false
        fhw72q35d8sfj(PlayerPedId(), true)
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Anti-Freeze",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if nHgFdSaZxCvBnMq == nil then nHgFdSaZxCvBnMq = false end
        nHgFdSaZxCvBnMq = true

        local sdfw3w3tsdg = CreateThread
        local function XELa6FJtsB()
            sdfw3w3tsdg(function()
                while nHgFdSaZxCvBnMq and not Unloaded do
                    local fhw72q35d8sfj = FreezeEntityPosition
                    local segfhs347dsgf = ClearPedTasks

                    if IsEntityPositionFrozen(PlayerPedId()) then
                        fhw72q35d8sfj(PlayerPedId(), false)
                        segfhs347dsgf(PlayerPedId())
                    end
                    
                    Wait(0)
                end
            end)
        end

        XELa6FJtsB()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        nHgFdSaZxCvBnMq = false
    ]]);end);MachoMenuCheckbox(v32[1 + 0 ],"Anti-Blackscreen",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if aDjsfmansdjwAEl == nil then aDjsfmansdjwAEl = false end
        aDjsfmansdjwAEl = true

        local sdfw3w3tsdg = CreateThread
        local function XELWAEDa6FJtsB()
            sdfw3w3tsdg(function()
                while aDjsfmansdjwAEl and not Unloaded do
                    DoScreenFadeIn(0)
                    Wait(0)
                end
            end)
        end

        XELWAEDa6FJtsB()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        aDjsfmansdjwAEl = false
    ]]);end);local v43=MachoMenuInputbox(v32[1 + 1 ],"Model Name:","...");MachoMenuButton(v32[2 + 0 ],"Change Model",function() local v145=0 -0 ;local v146;while true do if (v145==(0 -0)) then v146=MachoMenuGetInputbox(v43);if ((type(v146)=="string") and (v146~="")) then local v286=0 -0 ;local v287;while true do if (v286==(0 + 0)) then v287=string.format([[
            local function GykR8qjWTp()
                local nHgFdSaZxCvBnMq = RequestModel
                local xCvBnMqWeRtYuIo = HasModelLoaded
                local aSdFgHjKlQwErTy = SetPlayerModel
                local oPlMnBvCxZlKjHg = SetPedDefaultComponentVariation

                nHgFdSaZxCvBnMq(GetHashKey("%s"))
                while not xCvBnMqWeRtYuIo(GetHashKey("%s")) do
                    Wait(1)
                end
                
                aSdFgHjKlQwErTy(PlayerId(), GetHashKey("%s"))
                oPlMnBvCxZlKjHg(PlayerPedId())
            end

            GykR8qjWTp()
        ]],v146,v146,v146);MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,v287);break;end end end break;end end end);MachoMenuButton(v32[9 -7 ],"White Thug Drip",function() function WhiteThugDrip() local v227=753 -(239 + 514) ;local v228;while true do if (v227==(2 + 1)) then SetPedPropIndex(v228,1329 -(797 + 532) ,1 + 0 ,0 + 0 ,true);break;end if (v227==(4 -2)) then SetPedComponentVariation(v228,1206 -(373 + 829) ,56,731 -(476 + 255) ,1132 -(369 + 761) );SetPedComponentVariation(v228,6,11 + 8 ,0,2 -0 );v227=3;end if (v227==(1 -0)) then SetPedComponentVariation(v228,246 -(64 + 174) ,3 + 12 ,0 -0 ,338 -(144 + 192) );SetPedComponentVariation(v228,219 -(42 + 174) ,5,0 + 0 ,2);v227=2 + 0 ;end if (v227==(0 + 0)) then v228=PlayerPedId();SetPedComponentVariation(v228,11,1613 -(363 + 1141) ,0,1582 -(1183 + 397) );v227=2 -1 ;end end end WhiteThugDrip();end);MachoMenuButton(v32[2 + 0 ],"JTG Mafia Drip",function() function JTGMafia() local v229=0 + 0 ;local v230;while true do if (v229==1) then SetPedComponentVariation(v230,1983 -(1913 + 62) ,10 + 5 ,0 -0 ,1935 -(565 + 1368) );SetPedComponentVariation(v230,3,18 -13 ,1661 -(1477 + 184) ,2 -0 );v229=2 + 0 ;end if (v229==2) then SetPedComponentVariation(v230,860 -(564 + 292) ,71 -29 ,0 -0 ,306 -(244 + 60) );SetPedComponentVariation(v230,5 + 1 ,482 -(41 + 435) ,0,1003 -(938 + 63) );v229=3 + 0 ;end if (v229==(1128 -(936 + 189))) then SetPedPropIndex(v230,0 + 0 ,1639 -(1565 + 48) ,0 + 0 ,true);SetPedPropIndex(v230,1139 -(782 + 356) ,270 -(176 + 91) ,0 -0 ,true);break;end if (v229==(0 -0)) then v230=PlayerPedId();SetPedComponentVariation(v230,1103 -(975 + 117) ,1880 -(157 + 1718) ,0 + 0 ,6 -4 );v229=1;end end end JTGMafia();end);MachoMenuButton(v32[10 -7 ],"Heal",function() SetEntityHealth(PlayerPedId(),1218 -(697 + 321) );end);MachoMenuButton(v32[7 -4 ],"Armor",function() SetPedArmour(PlayerPedId(),211 -111 );end);MachoMenuButton(v32[6 -3 ],"Fill Hunger",function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function DawrjatjsfAW()
            TriggerEvent('esx_status:set', 'hunger', 1000000)
        end

        DawrjatjsfAW()
    ]]);end);MachoMenuButton(v32[5 -2 ],"Fill Thirst",function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function sWj238fsMAw()
            TriggerEvent('esx_status:set', 'thirst', 1000000)
        end

        sWj238fsMAw()
    ]]);end);MachoMenuButton(v32[3],"Revive",function() MachoInjectResource2(3,(v41("ox_inventory") and "ox_inventory") or (v41("ox_lib") and "ox_lib") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("wasabi_ambulance") and "wasabi_ambulance") or (v41("ak47_ambulancejob") and "ak47_ambulancejob") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function AcjU5NQzKw()
            if GetResourceState('prp-injuries') == 'started' then
                TriggerEvent('prp-injuries:hospitalBedHeal', skipHeal)
                return
            end

            if GetResourceState('es_extended') == 'started' then
                TriggerEvent("esx_ambulancejob:revive")
                return
            end

            if GetResourceState('qb-core') == 'started' then
                TriggerEvent("hospital:client:Revive")
                return
            end

            if GetResourceState('wasabi_ambulance') == 'started' then
                TriggerEvent("wasabi_ambulance:revive")
                return
            end

            if GetResourceState('ak47_ambulancejob') == 'started' then
                TriggerEvent("ak47_ambulancejob:revive")
                return
            end

            NcVbXzQwErTyUiO = GetEntityHeading(PlayerPedId())
            BvCxZlKjHgFdSaP = GetEntityCoords(PlayerPedId())

            RtYuIoPlMnBvCxZ = NetworkResurrectLocalPlayer
            RtYuIoPlMnBvCxZ(BvCxZlKjHgFdSaP.x, BvCxZlKjHgFdSaP.y, BvCxZlKjHgFdSaP.z, NcVbXzQwErTyUiO, false, false, false, 1, 0)
        end

        AcjU5NQzKw()
    ]]);end);MachoMenuButton(v32[7 -4 ],"Suicide",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function RGybF0JqEt()
            local aSdFgHjKlQwErTy = SetEntityHealth
            aSdFgHjKlQwErTy(PlayerPedId(), 0)
        end

        RGybF0JqEt()
    ]]);end);MachoMenuButton(v32[1230 -(322 + 905) ],"Force Ragdoll",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function awfAEDSADWEf()
            local cWAmdjakwDksFD = SetPedToRagdoll
            cWAmdjakwDksFD(PlayerPedId(), 3000, 3000, 0, false, false, false)
        end

        awfAEDSADWEf()
    ]]);end);MachoMenuButton(v32[3],"Clear Task",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function iPfT7kN3dU()
            local zXcVbNmAsDfGhJk = ClearPedTasksImmediately
            zXcVbNmAsDfGhJk(PlayerPedId())
        end

        iPfT7kN3dU()
    ]]);end);MachoMenuButton(v32[614 -(602 + 9) ],"Clear Vision",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function MsVqZ29ptY()
            local qWeRtYuIoPlMnBv = ClearTimecycleModifier
            local kJfGhTrEeWqAsDz = ClearExtraTimecycleModifier

            qWeRtYuIoPlMnBv()
            kJfGhTrEeWqAsDz()
        end

        MsVqZ29ptY()
    ]]);end);MachoMenuButton(v32[1192 -(449 + 740) ],"Randomize Outfit",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function UxrKYLp378()
            local UwEsDxCfVbGtHy = PlayerPedId
            local FdSaQwErTyUiOp = GetNumberOfPedDrawableVariations
            local QwAzXsEdCrVfBg = SetPedComponentVariation
            local LkJhGfDsAqWeRt = SetPedHeadBlendData
            local MnBgVfCdXsZaQw = SetPedHairColor
            local RtYuIoPlMnBvCx = GetNumHeadOverlayValues
            local TyUiOpAsDfGhJk = SetPedHeadOverlay
            local ErTyUiOpAsDfGh = SetPedHeadOverlayColor
            local DfGhJkLzXcVbNm = ClearPedProp

            local function PqLoMzNkXjWvRu(component, exclude)
                local ped = UwEsDxCfVbGtHy()
                local total = FdSaQwErTyUiOp(ped, component)
                if total <= 1 then return 0 end
                local choice = exclude
                while choice == exclude do
                    choice = math.random(0, total - 1)
                end
                return choice
            end

            local function OxVnBmCxZaSqWe(component)
                local ped = UwEsDxCfVbGtHy()
                local total = FdSaQwErTyUiOp(ped, component)
                return total > 1 and math.random(0, total - 1) or 0
            end

            local ped = UwEsDxCfVbGtHy()

            QwAzXsEdCrVfBg(ped, 11, PqLoMzNkXjWvRu(11, 15), 0, 2)
            QwAzXsEdCrVfBg(ped, 6, PqLoMzNkXjWvRu(6, 15), 0, 2)
            QwAzXsEdCrVfBg(ped, 8, 15, 0, 2)
            QwAzXsEdCrVfBg(ped, 3, 0, 0, 2)
            QwAzXsEdCrVfBg(ped, 4, OxVnBmCxZaSqWe(4), 0, 2)

            local face = math.random(0, 45)
            local skin = math.random(0, 45)
            LkJhGfDsAqWeRt(ped, face, skin, 0, face, skin, 0, 1.0, 1.0, 0.0, false)

            local hairMax = FdSaQwErTyUiOp(ped, 2)
            local hair = hairMax > 1 and math.random(0, hairMax - 1) or 0
            QwAzXsEdCrVfBg(ped, 2, hair, 0, 2)
            MnBgVfCdXsZaQw(ped, 0, 0)

            local brows = RtYuIoPlMnBvCx(2)
            TyUiOpAsDfGhJk(ped, 2, brows > 1 and math.random(0, brows - 1) or 0, 1.0)
            ErTyUiOpAsDfGh(ped, 2, 1, 0, 0)

            DfGhJkLzXcVbNm(ped, 0)
            DfGhJkLzXcVbNm(ped, 1)
        end

        UxrKYLp378()
    ]]);end);MachoMenuButton(v33[1],"Kill Player",function() local v147=872 -(826 + 46) ;local v148;while true do if (v147==0) then v148=MachoMenuGetSelectedPlayer();if (v148 and (v148>0)) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
            local function UiLpKjHgFdSaTrEq()
                local RvTyUiOpAsDfGhJ = %d

                local dFrTgYhUjIkLoPl = CreateThread
                dFrTgYhUjIkLoPl(function()
                    Wait(0)

                    local ZxCvBnMaSdFgTrEq = GetPlayerPed
                    local TyUiOpAsDfGhJkLz = GetEntityCoords
                    local QwErTyUiOpAsDfGh = ShootSingleBulletBetweenCoords
                    local pEd = ZxCvBnMaSdFgTrEq(RvTyUiOpAsDfGhJ)

                    if not pEd or not DoesEntityExist(pEd) then return end

                    local tArGeT = TyUiOpAsDfGhJkLz(pEd)
                    local oRiGiN = vector3(tArGeT.x, tArGeT.y, tArGeT.z + 2.0)

                    QwErTyUiOpAsDfGh(
                        oRiGiN.x, oRiGiN.y, oRiGiN.z,
                        tArGeT.x, tArGeT.y, tArGeT.z,
                        500.0,
                        true,
                        GetHashKey("WEAPON_ASSAULTRIFLE"),
                        PlayerPedId(),
                        true,
                        false,
                        -1.0
                    )
                end)
            end

            UiLpKjHgFdSaTrEq()
        ]]):format(v148));end break;end end end);MachoMenuButton(v33[1],"Taze Player",function() local v149=0;local v150;while true do if (0==v149) then v150=MachoMenuGetSelectedPlayer();if (v150 and (v150>0)) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
            local function UiLpKjHgFdSaTrEq()
                local RvTyUiOpAsDfGhJ = %d

                local dFrTgYhUjIkLoPl = CreateThread
                dFrTgYhUjIkLoPl(function()
                    Wait(0)

                    local ZxCvBnMaSdFgTrEq = GetPlayerPed
                    local TyUiOpAsDfGhJkLz = GetEntityCoords
                    local QwErTyUiOpAsDfGh = ShootSingleBulletBetweenCoords
                    local pEd = ZxCvBnMaSdFgTrEq(RvTyUiOpAsDfGhJ)

                    if not pEd or not DoesEntityExist(pEd) then return end

                    local tArGeT = TyUiOpAsDfGhJkLz(pEd)
                    local oRiGiN = vector3(tArGeT.x, tArGeT.y, tArGeT.z + 2.0)

                    QwErTyUiOpAsDfGh(
                        oRiGiN.x, oRiGiN.y, oRiGiN.z,
                        tArGeT.x, tArGeT.y, tArGeT.z,
                        0,
                        true,
                        GetHashKey("WEAPON_STUNGUN"),
                        PlayerPedId(),
                        true,
                        false,
                        -1.0
                    )
                end)
            end

            UiLpKjHgFdSaTrEq()
        ]]):format(v150));end break;end end end);MachoMenuButton(v33[1],"Explode Player",function() local v151=947 -(245 + 702) ;local v152;while true do if (v151==(0 -0)) then v152=MachoMenuGetSelectedPlayer();if (v152 and (v152>0)) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
            local function TzYuIoPlMnBvCxZa()
                local iOpAsDfGhJkLzXcV = %d

                local ZqWeRtYuIoPlMnB = CreateThread
                ZqWeRtYuIoPlMnB(function()
                    Wait(0)

                    local jBtWxFhPoZuR = GetPlayerPed
                    local mWjErTbYcLoU = GetEntityCoords
                    local aSdFgTrEqWzXcVb = AddExplosion

                    local pEd = jBtWxFhPoZuR(iOpAsDfGhJkLzXcV)
                    if not pEd or not DoesEntityExist(pEd) then return end

                    local coords = mWjErTbYcLoU(pEd)
                    aSdFgTrEqWzXcVb(coords.x, coords.y, coords.z, 6, 10.0, true, false, 1.0)
                end)
            end

            TzYuIoPlMnBvCxZa()
        ]]):format(v152));end break;end end end);MachoMenuButton(v33[1],"Give All Nearby Objects",function() local v153=0 + 0 ;local v154;while true do if ((1898 -(260 + 1638))==v153) then v154=MachoMenuGetSelectedPlayer();if (v154 and (v154>0)) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,([[
            local function TzYuIoPlMnBvCxZa()
                local xWcErTvBnMzLp = %d

                local aGhJkLpOiUyTr = _G.GetPlayerPed
                local bUiOpLkJhGfDs = _G.DoesEntityExist
                local cPzWsXcEdCvBnM = _G.GetEntityCoords
                local dRtYuIoPlMnBgF = _G.SetEntityCoords
                local eAsDfGhJkLqWe = _G.RequestControlOfEntity or RequestCtrlOverEntity
                local fZxCvBnMqWeRt = _G.NetworkRequestControlOfEntity
                local gXcVbNmZqWeRt = _G.SetEntityAsMissionEntity

                local function iRequest(obj)
                    fZxCvBnMqWeRt(obj)
                    eAsDfGhJkLqWe(obj)
                    gXcVbNmZqWeRt(obj, true, true)
                end

                CreateThread(function()
                    Wait(0)

                    local targetPed = aGhJkLpOiUyTr(xWcErTvBnMzLp)
                    if not bUiOpLkJhGfDs(targetPed) then return end
                    local coords = cPzWsXcEdCvBnM(targetPed)

                    for obj in EnumerateObjects() do
                        if bUiOpLkJhGfDs(obj) then
                            iRequest(obj)
                            dRtYuIoPlMnBgF(obj, coords.x, coords.y, coords.z, false, false, false, false)
                        end
                    end
                end)
            end

            TzYuIoPlMnBvCxZa()

        ]]):format(v154));end break;end end end);MachoMenuButton(v33[441 -(382 + 58) ],"Teleport To Player",function() local v155=0 -0 ;local v156;while true do if (v155==(0 + 0)) then v156=MachoMenuGetSelectedPlayer();if (v156 and (v156>0)) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
            local function GhJkUiOpLzXcVbNm()
                local kJfHuGtFrDeSwQa = %d
                local oXyBkVsNzQuH = GetPlayerPed
                local zXcVbNmQwErTyUi = GetEntityCoords
                local xAsDfGhJkLpOiU = SetEntityCoords

                local myPed = PlayerPedId()
                local targetPed = oXyBkVsNzQuH(kJfHuGtFrDeSwQa)
                local targetCoords = zXcVbNmQwErTyUi(targetPed)

                xAsDfGhJkLpOiU(myPed, targetCoords.x, targetCoords.y, targetCoords.z, false, false, false, true)
            end

            GhJkUiOpLzXcVbNm()
        ]]):format(v156));end break;end end end);MachoMenuButton(v33[1 -0 ],"Kick From Vehicle",function() local v157=0 -0 ;local v158;while true do if (v157==0) then v158=MachoMenuGetSelectedPlayer();if (v158 and (v158>(1205 -(902 + 303)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
            local function GhJkUiOpLzXcVbNm()
                local kJfHuGtFrDeSwQa = %d
                local oXyBkVsNzQuH = _G.GetPlayerPed
                local yZaSdFgHjKlQ = _G.GetVehiclePedIsIn
                local wQeRtYuIoPlMn = _G.PlayerPedId
                local cVbNmQwErTyUiOp = _G.SetVehicleExclusiveDriver_2
                local ghjawrusdgddsaf = _G.SetPedIntoVehicle

                local targetPed = oXyBkVsNzQuH(kJfHuGtFrDeSwQa)
                local veh = yZaSdFgHjKlQ(targetPed, 0)

                local function nMzXcVbNmQwErTy(func, ...)
                    local _print = print
                    local function errorHandler(ex)
                        -- _print("SCRIPT ERROR: " .. ex)
                    end

                    local argsStr = ""
                    for _, v in ipairs({...}) do
                        if type(v) == "string" then
                            argsStr = argsStr .. "\"" .. v .. "\", "
                        elseif type(v) == "number" or type(v) == "boolean" then
                            argsStr = argsStr .. tostring(v) .. ", "
                        else
                            argsStr = argsStr .. tostring(v) .. ", "
                        end
                    end
                    argsStr = argsStr:sub(1, -3)

                    local script = string.format("return func(%%s)", argsStr)
                    local fn, err = load(script, "@pipboy.lua", "t", { func = func })
                    if not fn then
                        -- _print("Error loading script: " .. err)
                        return nil
                    end

                    local success, result = xpcall(function() return fn() end, errorHandler)
                    if not success then
                        -- _print("Error executing script: " .. result)
                        return nil
                    else
                        return result
                    end
                end

                if veh ~= 0 then
                    Wait(100)
                    nMzXcVbNmQwErTy(cVbNmQwErTyUiOp, veh, wQeRtYuIoPlMn(), 1)
                    ghjawrusdgddsaf(wQeRtYuIoPlMn(), veh, -1)
                    
                    Wait(100)
                    nMzXcVbNmQwErTy(cVbNmQwErTyUiOp, veh, 0, 0)
                end
            end

            GhJkUiOpLzXcVbNm()
        ]]):format(v158));end break;end end end);MachoMenuButton(v33[1 -0 ],"Freeze Player",function() local v159=0 -0 ;local v160;while true do if (v159==(0 + 0)) then v160=MachoMenuGetSelectedPlayer();if (v160 and (v160>(1690 -(1121 + 569)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
            local function VtQzAfXyYu()
                local RqTfBnLpZo = %d
                local FgTrLpYwVs = GetPlayerPed
                local EoKdCjXqMg = GetEntityCoords
                local ZbLpVnXwQr = GetClosestVehicle
                local WqErTyUiOp = PlayerPedId
                local AsDfGhJkLz = SetPedIntoVehicle
                local PoLiKjUhYg = ClearPedTasks
                local QwErTyUiOp = NetworkRequestControlOfEntity
                local CxZvBnMaSd = GetGameTimer
                local VcMnBgTrEl = Wait
                local TeAxSpDoMj = AttachEntityToEntityPhysically
                local wfjaw4dtdu = CreateThread
                local tgtPed = FgTrLpYwVs(RqTfBnLpZo)
                local tgtCoords = EoKdCjXqMg(tgtPed)
                local veh = ZbLpVnXwQr(tgtCoords, 150.0, 0, 70)

                if not veh or veh == 0 then
                    print("No vehicle nearby | Aborting.")
                    return
                end

                QwErTyUiOp(veh)
                Wait(100)
                AsDfGhJkLz(WqErTyUiOp(), veh, -1)
                VcMnBgTrEl(200)
                PoLiKjUhYg(WqErTyUiOp())

                wfjaw4dtdu(function()
                    local start = CxZvBnMaSd()
                    while CxZvBnMaSd() - start < 3000 do
                        TeAxSpDoMj(
                            veh,
                            tgtPed,
                            0.0, 0.0, 10.0,
                            10.0, 0.0, 0.0,
                            true, 0, 0,
                            false, false, 0
                        )
                        VcMnBgTrEl(0)
                    end
                end)
            end

            VtQzAfXyYu()
        ]]):format(v160));end break;end end end);MachoMenuButton(v33[1],"Glitch Player",function() local v161=0;local v162;while true do if (v161==0) then v162=MachoMenuGetSelectedPlayer();if (v162 and (v162>(214 -(22 + 192)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
            local function TnXmLoPrVq()
                local kPdZoWxNq = %d

                local LsKjHgFdSa = GetPlayerPed
                local ZxCvBnMaQw = GetEntityCoords
                local QtRvBnPoLs = GetClosestVehicle
                local VcBgTrElMn = PlayerPedId
                local KdJfGhTyPl = SetPedIntoVehicle
                local TrLkUyIoPl = ClearPedTasks
                local MwZlQxNsTp = NetworkRequestControlOfEntity
                local AsYtGhUiMn = GetGameTimer
                local WqErTyUiOp = Wait
                local TeAxSpDoMj = AttachEntityToEntityPhysically
                local CrXeTqLpVi = CreateThread

                local xGyPtMdLoB = LsKjHgFdSa(kPdZoWxNq)
                local zUiRpXlAsV = ZxCvBnMaQw(xGyPtMdLoB)
                local jCaBnErYqK = QtRvBnPoLs(zUiRpXlAsV, 150.0, 0, 70)

                if not jCaBnErYqK or jCaBnErYqK == 0 then
                    print("No vehicle nearby | Aborting.")
                    return
                end

                MwZlQxNsTp(veh)
                Wait(100)
                KdJfGhTyPl(VcBgTrElMn(), jCaBnErYqK, -1)
                WqErTyUiOp(200)
                TrLkUyIoPl(VcBgTrElMn())

                CrXeTqLpVi(function()
                    local tGhXpLsMkA = AsYtGhUiMn()
                    local bErXnPoVlC = 3000

                    while AsYtGhUiMn() - tGhXpLsMkA < bErXnPoVlC do
                        TeAxSpDoMj(
                            jCaBnErYqK,
                            xGyPtMdLoB,
                            0, 0, 0,
                            2000.0, 1460.928, 1000.0,
                            10.0, 88.0, 600.0,
                            true, true, true, false, 0
                        )
                        WqErTyUiOp(0)
                    end
                end)
            end

            TnXmLoPrVq()
        ]]):format(v162));end break;end end end);MachoMenuButton(v33[1],"Limbo Player",function() local v163=MachoMenuGetSelectedPlayer();if (v163 and (v163>(683 -(483 + 200)))) then MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("oxmysql") and "oxmysql") or (v41("monitor") and "monitor") or "any" ,([[
            local function VyTxQzWsCr()
                local lDxNzVrMpY = %d

                local FgTrLpYwVs = GetPlayerPed
                local EoKdCjXqMg = GetEntityCoords
                local ZbLpVnXwQr = GetClosestVehicle
                local WqErTyUiOp = PlayerPedId
                local AsDfGhJkLz = SetPedIntoVehicle
                local PoLiKjUhYg = ClearPedTasks
                local QwErTyUiOp = NetworkRequestControlOfEntity
                local CxZvBnMaSd = GetGameTimer
                local VcMnBgTrEl = Wait
                local TeAxSpDoMj = AttachEntityToEntityPhysically
                local CrXeTqLpVi = CreateThread

                local vUpYrTnMwE = FgTrLpYwVs(lDxNzVrMpY)
                local xAoPqMnBgR = EoKdCjXqMg(vUpYrTnMwE)
                local cHvBzNtEkQ = ZbLpVnXwQr(xAoPqMnBgR, 150.0, 0, 70)

                if not cHvBzNtEkQ or cHvBzNtEkQ == 0 then
                    print("No vehicle nearby | Aborting.")
                    return
                end

                QwErTyUiOp(veh)
                Wait(100)
                AsDfGhJkLz(WqErTyUiOp(), cHvBzNtEkQ, -1)
                VcMnBgTrEl(200)
                PoLiKjUhYg(WqErTyUiOp())

                CrXeTqLpVi(function()
                    local kYqPmTnVzL = CxZvBnMaSd()
                    local yTbQrXlMwA = 3000
                    local hFrMxWnZuE, dEjKzTsYnL = 180.0, 8888.0

                    while CxZvBnMaSd() - kYqPmTnVzL < yTbQrXlMwA do
                        TeAxSpDoMj(
                            cHvBzNtEkQ,
                            vUpYrTnMwE,
                            0, 0, 0,
                            hFrMxWnZuE, dEjKzTsYnL, 1000.0,
                            true, true, true, true, 0
                        )
                        VcMnBgTrEl(0)
                    end
                end)
            end

            VyTxQzWsCr()
        ]]):format(v163));end end);MachoMenuButton(v33[1464 -(1404 + 59) ],"Copy Appearance",function() local v164=0 -0 ;local v165;while true do if (v164==(0 -0)) then v165=MachoMenuGetSelectedPlayer();if (v165 and (v165>(765 -(468 + 297)))) then MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
            local function AsDfGhJkLqWe()
                local ZxCvBnMqWeRt = %d
                local UiOpAsDfGhJk = GetPlayerPed
                local QwErTyUiOpAs = PlayerPedId
                local DfGhJkLqWeRt = DoesEntityExist
                local ErTyUiOpAsDf = ClonePedToTarget

                local TyUiOpAsDfGh = UiOpAsDfGhJk(ZxCvBnMqWeRt)
                if DfGhJkLqWeRt(TyUiOpAsDfGh) then
                    local YpAsDfGhJkLq = QwErTyUiOpAs()
                    ErTyUiOpAsDf(TyUiOpAsDfGh, YpAsDfGhJkLq)
                end
            end

            AsDfGhJkLqWe()
        ]]):format(v165));end break;end end end);MachoMenuButton(v33[563 -(334 + 228) ],"Feature Coming Soon",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
            
    ]]);end);MachoMenuButton(v33[6 -4 ],"Crash [Coming Soon]",function() MachoInjectResource((v41("ReaperV4") and "ReaperV4") or (v41("FiniAC") and "FiniAC") or (v41("WaveShield") and "WaveShield") or (v41("monitor") and "monitor") or "any" ,[[
    ]]);end);MachoMenuButton(v33[4 -2 ],"Cone Everyone",function() local v166=GetHashKey("prop_roadcone02a");RequestModel(v166);while  not HasModelLoaded(v166) do Wait(0);end local function v167(v231) local v232=0;local v233;local v234;local v235;while true do if (v232==1) then v234=CreateObject(v166,v233.x,v233.y,v233.z,true,true,false);SetEntityAsMissionEntity(v234,true,true);v232=2;end if (v232==(0 -0)) then if ( not DoesEntityExist(v231) or IsEntityDead(v231)) then return;end v233=GetEntityCoords(v231);v232=1;end if (v232==(2 + 2)) then AttachEntityToEntity(v234,v231,v235,236 -(141 + 95) ,0,0.25 + 0 ,0,0,0,false,false,true,false,2,true);break;end if (2==v232) then SetEntityCollision(v234,false,false);SetEntityInvincible(v234,true);v232=7 -4 ;end if (v232==(6 -3)) then SetEntityCanBeDamaged(v234,false);v235=GetPedBoneIndex(v231,7282 + 23804 );v232=10 -6 ;end end end v167(PlayerPedId());for v236,v237 in ipairs(GetActivePlayers()) do v167(GetPlayerPed(v237));end local v168=(GetGamePool and GetGamePool("CPed")) or {} ;for v238,v239 in ipairs(v168) do if  not IsPedAPlayer(v239) then v167(v239);end end end);MachoMenuButton(v33[2 + 0 ],"Explode All Players",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function fGhJkLpOiUzXcVb()
            local aSdFgHjKlQwErTy = GetActivePlayers
            local pOiUyTrEeRwQtYy = DoesEntityExist
            local mNbVcCxZzLlKkJj = GetEntityCoords
            local hGjFkDlSaPwOeIr = AddOwnedExplosion
            local tYuIoPaSdFgHjKl = PlayerPedId

            local eRtYuIoPlMnBvCx = aSdFgHjKlQwErTy()
            for _, wQeRtYuIoPlMnBv in ipairs(eRtYuIoPlMnBvCx) do
                local yUiOpAsDfGhJkLz = GetPlayerPed(wQeRtYuIoPlMnBv)
                if pOiUyTrEeRwQtYy(yUiOpAsDfGhJkLz) and yUiOpAsDfGhJkLz ~= tYuIoPaSdFgHjKl() then
                    local nMzXcVbNmQwErTy = mNbVcCxZzLlKkJj(yUiOpAsDfGhJkLz)
                    hGjFkDlSaPwOeIr(
                        tYuIoPaSdFgHjKl(),
                        nMzXcVbNmQwErTy.x,
                        nMzXcVbNmQwErTy.y,
                        nMzXcVbNmQwErTy.z,
                        6,     -- Explosion type
                        1.0,   -- Damage scale
                        true,  -- Audible
                        false, -- Invisible
                        0.0    -- Camera shake
                    )
                end
            end
        end

        fGhJkLpOiUzXcVb()
    ]]);end);MachoMenuButton(v33[2 + 0 ],"Explode All Vehicles",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function uYhGtFrEdWsQaZx()
            local rTyUiOpAsDfGhJk = GetGamePool
            local xAsDfGhJkLpOiUz = DoesEntityExist
            local cVbNmQwErTyUiOp = GetEntityCoords
            local vBnMkLoPiUyTrEw = AddOwnedExplosion
            local nMzXcVbNmQwErTy = PlayerPedId

            local _vehicles = rTyUiOpAsDfGhJk("CVehicle")
            local me = nMzXcVbNmQwErTy()
            for _, veh in ipairs(_vehicles) do
                if xAsDfGhJkLpOiUz(veh) then
                    local pos = cVbNmQwErTyUiOp(veh)
                    vBnMkLoPiUyTrEw(me, pos.x, pos.y, pos.z, 6, 2.0, true, false, 0.0)
                end
            end
        end
        uYhGtFrEdWsQaZx()
    ]]);end);MachoMenuButton(v33[2],"Delete All Vehicles",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function zXcVbNmQwErTyUi()
            local aSdFgHjKlQwErTy = GetGamePool
            local pOiUyTrEeRwQtYy = DoesEntityExist
            local mNbVcCxZzLlKkJj = NetworkRequestControlOfEntity
            local hGjFkDlSaPwOeIr = NetworkHasControlOfEntity
            local tYuIoPaSdFgHjKl = DeleteEntity
            local yUiOpAsDfGhJkLz = PlayerPedId
            local uIoPaSdFgHjKlQw = GetVehiclePedIsIn
            local gJkLoPiUyTrEqWe = GetGameTimer
            local fDeSwQaZxCvBnMm = Wait

            local me = yUiOpAsDfGhJkLz()
            local myVeh = uIoPaSdFgHjKlQw(me, false)

            local vehicles = aSdFgHjKlQwErTy("CVehicle")
            for _, veh in ipairs(vehicles) do
                if pOiUyTrEeRwQtYy(veh) and veh ~= myVeh then
                    mNbVcCxZzLlKkJj(veh)
                    local timeout = gJkLoPiUyTrEqWe() + 500
                    while not hGjFkDlSaPwOeIr(veh) and gJkLoPiUyTrEqWe() < timeout do
                        fDeSwQaZxCvBnMm(0)
                    end
                    if hGjFkDlSaPwOeIr(veh) then
                        tYuIoPaSdFgHjKl(veh)
                    end
                end
            end
        end
        zXcVbNmQwErTyUi()
    ]]);end);MachoMenuButton(v33[2 -0 ],"Delete All Peds",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function qWeRtYuIoPlMnBv()
            local zXcVbNmQwErTyUi = GetGamePool
            local aSdFgHjKlQwErTy = DoesEntityExist
            local pOiUyTrEeRwQtYy = DeleteEntity
            local mNbVcCxZzLlKkJj = PlayerId
            local hGjFkDlSaPwOeIr = GetPlayerPed
            local tYuIoPaSdFgHjKl = NetworkRequestControlOfEntity
            local yUiOpAsDfGhJkLz = NetworkHasControlOfEntity
            local uIoPaSdFgHjKlQw = GetGameTimer
            local gJkLoPiUyTrEqWe = Wait
            local vBnMkLoPiUyTrEw = IsPedAPlayer

            local me = hGjFkDlSaPwOeIr(mNbVcCxZzLlKkJj())
            local peds = zXcVbNmQwErTyUi("CPed")

            for _, ped in ipairs(peds) do
                if aSdFgHjKlQwErTy(ped) and ped ~= me and not vBnMkLoPiUyTrEw(ped) then
                    tYuIoPaSdFgHjKl(ped)
                    local timeout = uIoPaSdFgHjKlQw() + 500
                    while not yUiOpAsDfGhJkLz(ped) and uIoPaSdFgHjKlQw() < timeout do
                        gJkLoPiUyTrEqWe(0)
                    end
                    if yUiOpAsDfGhJkLz(ped) then
                        pOiUyTrEeRwQtYy(ped)
                    end
                end
            end
        end
        qWeRtYuIoPlMnBv()
    ]]);end);MachoMenuButton(v33[2 + 0 ],"Delete All Objects",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function mNqAzXwSeRdTfGy()
            local rTyUiOpAsDfGhJk = GetGamePool
            local xAsDfGhJkLpOiUz = DoesEntityExist
            local cVbNmQwErTyUiOp = DeleteEntity
            local vBnMkLoPiUyTrEw = NetworkRequestControlOfEntity
            local nMzXcVbNmQwErTy = NetworkHasControlOfEntity
            local yUiOpAsDfGhJkLz = GetGameTimer
            local uIoPaSdFgHjKlQw = Wait

            local objects = rTyUiOpAsDfGhJk("CObject")
            for _, obj in ipairs(objects) do
                if xAsDfGhJkLpOiUz(obj) then
                    vBnMkLoPiUyTrEw(obj)
                    local timeout = yUiOpAsDfGhJkLz() + 500
                    while not nMzXcVbNmQwErTy(obj) and yUiOpAsDfGhJkLz() < timeout do
                        uIoPaSdFgHjKlQw(0)
                    end
                    if nMzXcVbNmQwErTy(obj) then
                        cVbNmQwErTyUiOp(obj)
                    end
                end
            end
        end
        mNqAzXwSeRdTfGy()
    ]]);end);MachoMenuCheckbox(v33[165 -(92 + 71) ],"Kill Everyone",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if aSwDeFgHiJkLoPx == nil then aSwDeFgHiJkLoPx = false end
        aSwDeFgHiJkLoPx = true

        local function pLoMkIjUhbGyTf()
            local mAxPlErOy = PlayerPedId()
            local rVtNiUcEx = GetHashKey("WEAPON_ASSAULTRIFLE")
            local gBvTnCuXe = 100
            local aSdFgHjKl = 1000.0
            local lKjHgFdSa = 300.0

            local nBxMzLqPw = CreateThread
            local qWeRtYuiOp = ShootSingleBulletBetweenCoords

            nBxMzLqPw(function()
                while aSwDeFgHiJkLoPx and not Unloaded do
                    Wait(gBvTnCuXe)
                    local bNmZxSwEd = GetActivePlayers()
                    local jUiKoLpMq = GetEntityCoords(mAxPlErOy)

                    for _, wQaSzXedC in ipairs(bNmZxSwEd) do
                        local zAsXcVbNm = GetPlayerPed(wQaSzXedC)
                        if zAsXcVbNm ~= mAxPlErOy and DoesEntityExist(zAsXcVbNm) and not IsPedDeadOrDying(zAsXcVbNm, true) then
                            local eDxCfVgBh = GetEntityCoords(zAsXcVbNm)
                            if #(eDxCfVgBh - jUiKoLpMq) <= lKjHgFdSa then
                                local xScVbNmAz = vector3(
                                    eDxCfVgBh.x + (math.random() - 0.5) * 0.8,
                                    eDxCfVgBh.y + (math.random() - 0.5) * 0.8,
                                    eDxCfVgBh.z + 1.2
                                )

                                local dFgHjKlZx = vector3(
                                    eDxCfVgBh.x,
                                    eDxCfVgBh.y,
                                    eDxCfVgBh.z + 0.2
                                )

                                qWeRtYuiOp(
                                    xScVbNmAz.x, xScVbNmAz.y, xScVbNmAz.z,
                                    dFgHjKlZx.x, dFgHjKlZx.y, dFgHjKlZx.z,
                                    aSdFgHjKl,
                                    true,
                                    rVtNiUcEx,
                                    mAxPlErOy,
                                    true,
                                    false,
                                    100.0
                                )
                            end
                        end
                    end
                end
            end)
        end

        pLoMkIjUhbGyTf()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        aSwDeFgHiJkLoPx = false
    ]]);end);MachoMenuCheckbox(v33[1 + 1 ],"Permanent Kill Everyone",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if qWeRtYuIoPlMnAb == nil then qWeRtYuIoPlMnAb = false end
        qWeRtYuIoPlMnAb = true

        local function bZxLmNcVqPeTyUi()
            local vBnMkLoPi = PlayerPedId()
            local wQaSzXedC = GetHashKey("WEAPON_TRANQUILIZER")
            local eDxCfVgBh = 100
            local lKjHgFdSa = 1000.0
            local mAxPlErOy = 300.0

            local rTwEcVzUi = CreateThread
            local oPiLyKuJm = ShootSingleBulletBetweenCoords

            rTwEcVzUi(function()
                while qWeRtYuIoPlMnAb and not Unloaded do
                    Wait(eDxCfVgBh)
                    local aSdFgHjKl = GetActivePlayers()
                    local xSwEdCvFr = GetEntityCoords(vBnMkLoPi)

                    for _, bGtFrEdCv in ipairs(aSdFgHjKl) do
                        local nMzXcVbNm = GetPlayerPed(bGtFrEdCv)
                        if nMzXcVbNm ~= vBnMkLoPi and DoesEntityExist(nMzXcVbNm) and not IsPedDeadOrDying(nMzXcVbNm, true) then
                            local zAsXcVbNm = GetEntityCoords(nMzXcVbNm)
                            if #(zAsXcVbNm - xSwEdCvFr) <= mAxPlErOy then
                                local jUiKoLpMq = vector3(
                                    zAsXcVbNm.x + (math.random() - 0.5) * 0.8,
                                    zAsXcVbNm.y + (math.random() - 0.5) * 0.8,
                                    zAsXcVbNm.z + 1.2
                                )

                                local cReAtEtHrEaD = vector3(
                                    zAsXcVbNm.x,
                                    zAsXcVbNm.y,
                                    zAsXcVbNm.z + 0.2
                                )

                                oPiLyKuJm(
                                    jUiKoLpMq.x, jUiKoLpMq.y, jUiKoLpMq.z,
                                    cReAtEtHrEaD.x, cReAtEtHrEaD.y, cReAtEtHrEaD.z,
                                    lKjHgFdSa,
                                    true,
                                    wQaSzXedC,
                                    vBnMkLoPi,
                                    true,
                                    false,
                                    100.0
                                )
                            end
                        end
                    end
                end
            end)
        end

        bZxLmNcVqPeTyUi()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        qWeRtYuIoPlMnAb = false
    ]]);end);local v44=MachoMenuInputbox(v34[1 -0 ],"Coords:","x, y, z");MachoMenuButton(v34[1],"Teleport to Coords",function() local v169=MachoMenuGetInputbox(v44);if (v169 and (v169~="")) then local v254=765 -(574 + 191) ;local v255;local v256;local v257;while true do if (v254==(1 + 0)) then v256=tonumber(v256);v257=tonumber(v257);v254=4 -2 ;end if (v254==(2 + 0)) then if (v255 and v256 and v257) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
                local function b0NtdqLZKW()
                    local uYiTpLaNmZxCwEq = SetEntityCoordsNoOffset
                    local nHgFdSaZxCvBnMq = PlayerPedId
                    local XvMzAsQeTrBnLpK = IsPedInAnyVehicle
                    local QeTyUvGhTrBnAzX = GetVehiclePedIsIn
                    local BvNzMkJdHsLwQaZ = GetGroundZFor_3dCoord

                    local x, y, z = %f, %f, %f
                    local found, gZ = BvNzMkJdHsLwQaZ(x, y, z + 1000.0, true)
                    if found then z = gZ + 1.0 end

                    local ent = XvMzAsQeTrBnLpK(nHgFdSaZxCvBnMq(), false) and QeTyUvGhTrBnAzX(nHgFdSaZxCvBnMq(), false) or nHgFdSaZxCvBnMq()
                    uYiTpLaNmZxCwEq(ent, x, y, z, false, false, false)
                end

                b0NtdqLZKW()
            ]],v255,v256,v257));end break;end if (v254==(849 -(254 + 595))) then v255,v256,v257=v169:match("([^,]+),%s*([^,]+),%s*([^,]+)");v255=tonumber(v255);v254=1;end end end end);MachoMenuButton(v34[127 -(55 + 71) ],"Waypoint",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function xQX7uzMNfb()
            local mNbVcXtYuIoPlMn = GetFirstBlipInfoId
            local zXcVbNmQwErTyUi = DoesBlipExist
            local aSdFgHjKlQwErTy = GetBlipInfoIdCoord
            local lKjHgFdSaPlMnBv = PlayerPedId
            local qWeRtYuIoPlMnBv = SetEntityCoords

            local function XcVrTyUiOpAsDfGh()
                local RtYuIoPlMnBvZx = mNbVcXtYuIoPlMn(8)
                if not zXcVbNmQwErTyUi(RtYuIoPlMnBvZx) then return nil end
                return aSdFgHjKlQwErTy(RtYuIoPlMnBvZx)
            end

            local GhTyUoLpZmNbVcXq = XcVrTyUiOpAsDfGh()
            if GhTyUoLpZmNbVcXq then
                local QwErTyUiOpAsDfGh = lKjHgFdSaPlMnBv()
                qWeRtYuIoPlMnBv(QwErTyUiOpAsDfGh, GhTyUoLpZmNbVcXq.x, GhTyUoLpZmNbVcXq.y, GhTyUoLpZmNbVcXq.z + 5.0, false, false, false, true)
            end
        end

        xQX7uzMNfb()
    ]]);end);MachoMenuButton(v34[1],"FIB Building",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function HAZ6YqLRbM()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = 140.43, -750.52, 258.15
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        HAZ6YqLRbM()
    ]]);end);MachoMenuButton(v34[1 -0 ],"Mission Row PD",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function oypB9FcNwK()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = 425.1, -979.5, 30.7
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        oypB9FcNwK()
    ]]);end);MachoMenuButton(v34[1791 -(573 + 1217) ],"Pillbox Hospital",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function TmXU0zLa4e()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = 308.6, -595.3, 43.28
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        TmXU0zLa4e()
    ]]);end);MachoMenuButton(v34[2 -1 ],"Del Perro Pier",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function eLQN9XKwbJ()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = -1632.87, -1007.81, 13.07
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        eLQN9XKwbJ()
    ]]);end);MachoMenuButton(v34[1 + 0 ],"Grove Street",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function YrAFvPMkqt()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = 109.63, -1943.14, 20.80
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        YrAFvPMkqt()
    ]]);end);MachoMenuButton(v34[1 -0 ],"Legion Square",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function zdVCXL8rjp()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = 229.21, -871.61, 30.49
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        zdVCXL8rjp()
    ]]);end);MachoMenuButton(v34[1],"LS Customs",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function oKXpQUYwd5()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = -365.4, -131.8, 37.7
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        oKXpQUYwd5()
    ]]);end);MachoMenuButton(v34[940 -(714 + 225) ],"Maze Bank",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function E1tYUMowqF()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = -75.24, -818.95, 326.1
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        E1tYUMowqF()
    ]]);end);MachoMenuButton(v34[1],"Mirror Park",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function Ptn2qMBvYe()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = 1039.2, -765.3, 57.9
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        Ptn2qMBvYe()
    ]]);end);MachoMenuButton(v34[1],"Vespucci Beach",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function gQZf7xYULe()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = -1223.8, -1516.6, 4.4
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        gQZf7xYULe()
    ]]);end);MachoMenuButton(v34[2 -1 ],"Vinewood",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function JqXLKbvR20()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = 293.2, 180.5, 104.3
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        JqXLKbvR20()
    ]]);end);MachoMenuButton(v34[1 -0 ],"Sandy Shores",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function NxvTpL3qWz()
            local aSdFgHjKlQwErTy = PlayerPedId
            local zXcVbNmQwErTyUi = IsPedInAnyVehicle
            local qWeRtYuIoPlMnBv = GetVehiclePedIsIn
            local xCvBnMqWeRtYuIo = SetEntityCoordsNoOffset

            local x, y, z = 1843.10, 3707.60, 33.52
            local ped = aSdFgHjKlQwErTy()
            local ent = zXcVbNmQwErTyUi(ped, false) and qWeRtYuIoPlMnBv(ped, false) or ped
            xCvBnMqWeRtYuIo(ent, x, y, z, false, false, false)
        end

        NxvTpL3qWz()
    ]]);end);MachoMenuButton(v34[1 + 1 ],"Print Current Coords",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function Xy9TqLzVmN()
            local zXcVbNmQwErTyUi = GetEntityCoords
            local aSdFgHjKlQwErTy = PlayerPedId

            local coords = zXcVbNmQwErTyUi(aSdFgHjKlQwErTy())
            local x, y, z = coords.x, coords.y, coords.z
            print(string.format("[^3JTG^7] [^4DEBUG^7] - %.2f, %.2f, %.2f", x, y, z))
        end

        Xy9TqLzVmN()
    ]]);end);MachoMenuCheckbox(v35[1 -0 ],"Infinite Ammo",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if LkJgFdSaQwErTy == nil then LkJgFdSaQwErTy = false end
        LkJgFdSaQwErTy = true

        local function qUwKZopRM8()
            if LkJgFdSaQwErTy == nil then LkJgFdSaQwErTy = false end
            LkJgFdSaQwErTy = true

            local MnBvCxZlKjHgFd = CreateThread
            MnBvCxZlKjHgFd(function()
                local AsDfGhJkLzXcVb = PlayerPedId
                local QwErTyUiOpAsDf = SetPedInfiniteAmmoClip
                local ZxCvBnMqWeRtYu = GetSelectedPedWeapon
                local ErTyUiOpAsDfGh = GetAmmoInPedWeapon
                local GhJkLzXcVbNmQw = SetPedAmmo

                while LkJgFdSaQwErTy and not Unloaded do
                    local ped = AsDfGhJkLzXcVb()
                    local weapon = ZxCvBnMqWeRtYu(ped)

                    QwErTyUiOpAsDf(ped, true)

                    if ErTyUiOpAsDfGh(ped, weapon) <= 0 then
                        GhJkLzXcVbNmQw(ped, weapon, 250)
                    end

                    Wait(0)
                end
            end)
        end

        qUwKZopRM8()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        LkJgFdSaQwErTy = false

        local function yFBN9pqXcL()
            local AsDfGhJkLzXcVb = PlayerPedId
            local QwErTyUiOpAsDf = SetPedInfiniteAmmoClip
            QwErTyUiOpAsDf(AsDfGhJkLzXcVb(), false)
        end

        yFBN9pqXcL()
    ]]);end);MachoMenuCheckbox(v35[1],"Explosive Ammo",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if QzWxEdCvTrBnYu == nil then QzWxEdCvTrBnYu = false end
        QzWxEdCvTrBnYu = true

        local function WpjLRqtm28()
            if QzWxEdCvTrBnYu == nil then QzWxEdCvTrBnYu = false end
            QzWxEdCvTrBnYu = true

            local UyJhNbGtFrVbCx = CreateThread
            UyJhNbGtFrVbCx(function()
                local HnBvFrTgYhUzKl = PlayerPedId
                local TmRgVbYhNtKjLp = GetPedLastWeaponImpactCoord
                local JkLpHgTfCvXzQa = AddOwnedExplosion

                while QzWxEdCvTrBnYu and not Unloaded do
                    local CvBnYhGtFrLpKm = HnBvFrTgYhUzKl()
                    local XsWaQzEdCvTrBn, PlKoMnBvCxZlQj = TmRgVbYhNtKjLp(CvBnYhGtFrLpKm)

                    if XsWaQzEdCvTrBn then
                        JkLpHgTfCvXzQa(CvBnYhGtFrLpKm, PlKoMnBvCxZlQj.x, PlKoMnBvCxZlQj.y, PlKoMnBvCxZlQj.z, 6, 1.0, true, false, 0.0)
                    end

                    Wait(0)
                end
            end)
        end

        WpjLRqtm28()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        QzWxEdCvTrBnYu = false
    ]]);end);MachoMenuCheckbox(v35[807 -(118 + 688) ],"Oneshot Kill",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if RfGtHyUjMiKoLp == nil then RfGtHyUjMiKoLp = false end
        RfGtHyUjMiKoLp = true

        local function xUQp7AK0tv()
            local PlMnBvCxZaSdFg = CreateThread
            PlMnBvCxZaSdFg(function()
                local ZxCvBnNmLkJhGf = GetSelectedPedWeapon
                local AsDfGhJkLzXcVb = SetWeaponDamageModifier
                local ErTyUiOpAsDfGh = PlayerPedId

                while RfGtHyUjMiKoLp do
                    if Unloaded then
                        RfGtHyUjMiKoLp = false
                        break
                    end

                    local Wp = ZxCvBnNmLkJhGf(ErTyUiOpAsDfGh())
                    if Wp and Wp ~= 0 then
                        AsDfGhJkLzXcVb(Wp, 1000.0)
                    end

                    Wait(0)
                end
            end)
        end

        xUQp7AK0tv()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        RfGtHyUjMiKoLp = false
        local ZxCvBnNmLkJhGf = GetSelectedPedWeapon
        local AsDfGhJkLzXcVb = SetWeaponDamageModifier
        local ErTyUiOpAsDfGh = PlayerPedId
        local Wp = ZxCvBnNmLkJhGf(ErTyUiOpAsDfGh())
        if Wp and Wp ~= 0 then
            AsDfGhJkLzXcVb(Wp, 1.0)
        end
    ]]);end);local v45=MachoMenuGetInputbox(WeaponSpawnerBox);if (v45 and (v45~="")) then MachoInjectResource((v41("monitor") and "monitor") or "any" ,string.format([[
            local function GiveWeapon()
                local ped = PlayerPedId()
                local weapon = GetHashKey("%s")
                local XeCwVrBtNuMyLk = GiveWeaponToPed
                XeCwVrBtNuMyLk(ped, weapon, 250, true, true)
            end

            GiveWeapon()
        ]],v45));end local v46=0;local v47={[48 -(25 + 23) ]={name="Default",hash="MP_F_Freemode"},[1 + 0 ]={name="Gangster",hash="Gang1H"},[1888 -(927 + 959) ]={name="Wild",hash="GangFemale"},[10 -7 ]={name="Red Neck",hash="Hillbilly"}};MachoMenuDropDown(v35[3],"Aiming Style",function(v170) v46=v170;end,"Default","Gangster","Wild","Red Neck");MachoMenuButton(v35[735 -(16 + 716) ],"Apply Aiming Style",function() local v171=v47[v46];if  not v171 then return;end MachoInjectResource((v41("oxmysql") and "oxmysql") or "any" ,([[
        local function vXK2dPLR07()
            local UiOpAsDfGhJkLz = PlayerPedId
            local PlMnBvCxZaSdFg = GetHashKey
            local QwErTyUiOpAsDf = SetWeaponAnimationOverride

            local MnBvCxZaSdFgHj = PlMnBvCxZaSdFg("%s")
            QwErTyUiOpAsDf(UiOpAsDfGhJkLz(), MnBvCxZaSdFgHj)
        end

        vXK2dPLR07()

    ]]):format(v171.hash));end);MachoMenuCheckbox(v36[1 -0 ],"Vehicle Godmode",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if zXcVbNmQwErTyUi == nil then zXcVbNmQwErTyUi = false end
        zXcVbNmQwErTyUi = true

        local function LWyZoXRbqK()
            local LkJhGfDsAzXcVb = CreateThread
            LkJhGfDsAzXcVb(function()
                while zXcVbNmQwErTyUi and not Unloaded do
                    local QwErTyUiOpAsDfG = GetVehiclePedIsIn
                    local TyUiOpAsDfGhJkL = PlayerPedId
                    local AsDfGhJkLzXcVbN = SetEntityInvincible

                    local vehicle = QwErTyUiOpAsDfG(TyUiOpAsDfGhJkL(), false)
                    if vehicle and vehicle ~= 0 then
                        AsDfGhJkLzXcVbN(vehicle, true)
                    end
                    Wait(0)
                end
            end)
        end

        LWyZoXRbqK()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        zXcVbNmQwErTyUi = false
        local QwErTyUiOpAsDfG = GetVehiclePedIsIn
        local TyUiOpAsDfGhJkL = PlayerPedId
        local AsDfGhJkLzXcVbN = SetEntityInvincible

        local vehicle = QwErTyUiOpAsDfG(TyUiOpAsDfGhJkL(), true)
        if vehicle and vehicle ~= 0 then
            AsDfGhJkLzXcVbN(vehicle, false)
        end
    ]]);end);MachoMenuCheckbox(v36[98 -(11 + 86) ],"Force Vehicle Engine",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if GhYtReFdCxWaQzLp == nil then GhYtReFdCxWaQzLp = false end
        GhYtReFdCxWaQzLp = true

        local function OpAsDfGhJkLzXcVb()
            local lMnbVcXzZaSdFg = CreateThread
            lMnbVcXzZaSdFg(function()
                local QwErTyUiOp         = _G.PlayerPedId
                local AsDfGhJkLz         = _G.GetVehiclePedIsIn
                local TyUiOpAsDfGh       = _G.GetVehiclePedIsTryingToEnter
                local ZxCvBnMqWeRtYu     = _G.SetVehicleEngineOn
                local ErTyUiOpAsDfGh     = _G.SetVehicleUndriveable
                local KeEpOnAb           = _G.SetVehicleKeepEngineOnWhenAbandoned
                local En_g_Health_Get    = _G.GetVehicleEngineHealth
                local En_g_Health_Set    = _G.SetVehicleEngineHealth
                local En_g_Degrade_Set   = _G.SetVehicleEngineCanDegrade
                local No_Hotwire_Set     = _G.SetVehicleNeedsToBeHotwired

                local function _tick(vh)
                    if vh and vh ~= 0 then
                        No_Hotwire_Set(vh, false)
                        En_g_Degrade_Set(vh, false)
                        ErTyUiOpAsDfGh(vh, false)
                        KeEpOnAb(vh, true)

                        local eh = En_g_Health_Get(vh)
                        if (not eh) or eh < 300.0 then
                            En_g_Health_Set(vh, 900.0)
                        end

                        ZxCvBnMqWeRtYu(vh, true, true, true)
                    end
                end

                while GhYtReFdCxWaQzLp and not Unloaded do
                    local p  = QwErTyUiOp()

                    _tick(AsDfGhJkLz(p, false))
                    _tick(TyUiOpAsDfGh(p))
                    _tick(AsDfGhJkLz(p, true))

                    Wait(0)
                end
            end)
        end

        OpAsDfGhJkLzXcVb()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        GhYtReFdCxWaQzLp = false
        local v = GetVehiclePedIsIn(PlayerPedId(), false)
        if v and v ~= 0 then
            SetVehicleKeepEngineOnWhenAbandoned(v, false)
            SetVehicleEngineCanDegrade(v, true)
            SetVehicleUndriveable(v, false)
        end
    ]]);end);MachoMenuCheckbox(v36[2 -1 ],"Vehicle Auto Repair",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if PlAsQwErTyUiOp == nil then PlAsQwErTyUiOp = false end
        PlAsQwErTyUiOp = true

        local function uPkqLXTm98()
            local QwErTyUiOpAsDf = CreateThread
            QwErTyUiOpAsDf(function()
                while PlAsQwErTyUiOp and not Unloaded do
                    local AsDfGhJkLzXcVb = PlayerPedId
                    local LzXcVbNmQwErTy = GetVehiclePedIsIn
                    local VbNmLkJhGfDsAz = SetVehicleFixed
                    local MnBvCxZaSdFgHj = SetVehicleDirtLevel

                    local ped = AsDfGhJkLzXcVb()
                    local vehicle = LzXcVbNmQwErTy(ped, false)
                    if vehicle and vehicle ~= 0 then
                        VbNmLkJhGfDsAz(vehicle)
                        MnBvCxZaSdFgHj(vehicle, 0.0)
                    end

                    Wait(0)
                end
            end)
        end

        uPkqLXTm98()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        PlAsQwErTyUiOp = false
    ]]);end);MachoMenuCheckbox(v36[286 -(175 + 110) ],"Freeze Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if LzKxWcVbNmQwErTy == nil then LzKxWcVbNmQwErTy = false end
        LzKxWcVbNmQwErTy = true

        local function WkQ79ZyLpT()
            local tYhGtFrDeSwQaZx = CreateThread
            local xCvBnMqWeRtYuIo = PlayerPedId
            local aSdFgHjKlZxCvBn = GetVehiclePedIsIn
            local gKdNqLpYxMiV = FreezeEntityPosition
            local jBtWxFhPoZuR = Wait

            tYhGtFrDeSwQaZx(function()
                while LzKxWcVbNmQwErTy and not Unloaded do
                    local VbNmLkJhGfDsAzX = xCvBnMqWeRtYuIo()
                    local IoPlMnBvCxZaSdF = aSdFgHjKlZxCvBn(VbNmLkJhGfDsAzX, false)
                    if IoPlMnBvCxZaSdF and IoPlMnBvCxZaSdF ~= 0 then
                        gKdNqLpYxMiV(IoPlMnBvCxZaSdF, true)
                    end
                    jBtWxFhPoZuR(0)
                end
            end)
        end

        WkQ79ZyLpT()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        LzKxWcVbNmQwErTy = false

        local function i7qWlBXtPo()
            local yUiOpAsDfGhJkLz = PlayerPedId
            local QwErTyUiOpAsDfG = GetVehiclePedIsIn
            local FdSaPlMnBvCxZlK = FreezeEntityPosition

            local pEdRfTgYhUjIkOl = yUiOpAsDfGhJkLz()
            local zXcVbNmQwErTyUi = QwErTyUiOpAsDfG(pEdRfTgYhUjIkOl, true)
            if zXcVbNmQwErTyUi and zXcVbNmQwErTyUi ~= 0 then
                FdSaPlMnBvCxZlK(zXcVbNmQwErTyUi, false)
            end
        end

        i7qWlBXtPo()
    ]]);end);MachoMenuCheckbox(v36[2 -1 ],"Vehicle Hop",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if NuRqVxEyKiOlZm == nil then NuRqVxEyKiOlZm = false end
        NuRqVxEyKiOlZm = true

        local function qPTnXLZKyb()
            local ZlXoKmVcJdBeTr = CreateThread
            ZlXoKmVcJdBeTr(function()
                while NuRqVxEyKiOlZm and not Unloaded do
                    local GvHnMzLoPqAxEs = PlayerPedId
                    local DwZaQsXcErDfGt = GetVehiclePedIsIn
                    local BtNhUrLsEkJmWq = IsDisabledControlPressed
                    local PlZoXvNyMcKwQi = ApplyForceToEntity

                    local GtBvCzHnUkYeWr = GvHnMzLoPqAxEs()
                    local OaXcJkWeMzLpRo = DwZaQsXcErDfGt(GtBvCzHnUkYeWr, false)

                    if OaXcJkWeMzLpRo and OaXcJkWeMzLpRo ~= 0 and BtNhUrLsEkJmWq(0, 22) then
                        PlZoXvNyMcKwQi(OaXcJkWeMzLpRo, 1, 0.0, 0.0, 6.0, 0.0, 0.0, 0.0, 0, true, true, true, true, true)
                    end

                    Wait(0)
                end
            end)
        end

        qPTnXLZKyb()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        NuRqVxEyKiOlZm = false
    ]]);end);MachoMenuCheckbox(v36[4 -3 ],"Rainbow Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if GxRpVuNzYiTq == nil then GxRpVuNzYiTq = false end
        GxRpVuNzYiTq = true

        local function jqX7TvYzWq()
            local WvBnMpLsQzTx = GetGameTimer
            local VcZoPwLsEkRn = math.floor
            local DfHkLtQwAzCx = math.sin
            local PlJoQwErTgYs = CreateThread
            local MzLxVoKsUyNz = GetVehiclePedIsIn
            local EyUiNkOpLtRg = PlayerPedId
            local KxFwEmTrZpYq = DoesEntityExist
            local UfBnDxCrQeTg = SetVehicleCustomPrimaryColour
            local BvNzMxLoPwEq = SetVehicleCustomSecondaryColour

            local yGfTzLkRn = 1.0

            local function HrCvWbXuNz(freq)
                local color = {}
                local t = WvBnMpLsQzTx() / 1000
                color.r = VcZoPwLsEkRn(DfHkLtQwAzCx(t * freq + 0) * 127 + 128)
                color.g = VcZoPwLsEkRn(DfHkLtQwAzCx(t * freq + 2) * 127 + 128)
                color.b = VcZoPwLsEkRn(DfHkLtQwAzCx(t * freq + 4) * 127 + 128)
                return color
            end

            PlJoQwErTgYs(function()
                while GxRpVuNzYiTq and not Unloaded do
                    local ped = EyUiNkOpLtRg()
                    local veh = MzLxVoKsUyNz(ped, false)
                    if veh and veh ~= 0 and KxFwEmTrZpYq(veh) then
                        local rgb = HrCvWbXuNz(yGfTzLkRn)
                        UfBnDxCrQeTg(veh, rgb.r, rgb.g, rgb.b)
                        BvNzMxLoPwEq(veh, rgb.r, rgb.g, rgb.b)
                    end
                    Wait(0)
                end
            end)
        end

        jqX7TvYzWq()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        GxRpVuNzYiTq = false
    ]]);end);MachoMenuCheckbox(v36[1797 -(503 + 1293) ],"Drift Mode (Hold Shift)",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if MqTwErYuIoLp == nil then MqTwErYuIoLp = false end
        MqTwErYuIoLp = true

        local function PlRtXqJm92()
            local XtFgDsQwAzLp = CreateThread
            local UiOpAsDfGhKl = PlayerPedId
            local JkHgFdSaPlMn = GetVehiclePedIsIn
            local WqErTyUiOpAs = IsControlPressed
            local AsZxCvBnMaSd = DoesEntityExist
            local KdJfGvBhNtMq = SetVehicleReduceGrip

            XtFgDsQwAzLp(function()
                while MqTwErYuIoLp and not Unloaded do
                    Wait(0)
                    local ped = UiOpAsDfGhKl()
                    local veh = JkHgFdSaPlMn(ped, false)
                    if veh ~= 0 and AsZxCvBnMaSd(veh) then
                        if WqErTyUiOpAs(0, 21) then
                            KdJfGvBhNtMq(veh, true)
                        else
                            KdJfGvBhNtMq(veh, false)
                        end
                    end
                end
            end)
        end

        PlRtXqJm92()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        MqTwErYuIoLp = false
        local ZtQwErTyUiOp = PlayerPedId
        local DfGhJkLzXcVb = GetVehiclePedIsIn
        local VbNmAsDfGhJk = DoesEntityExist
        local NlJkHgFdSaPl = SetVehicleReduceGrip

        local ped = ZtQwErTyUiOp()
        local veh = DfGhJkLzXcVb(ped, false)
        if veh ~= 0 and VbNmAsDfGhJk(veh) then
            NlJkHgFdSaPl(veh, false)
        end
    ]]);end);MachoMenuCheckbox(v36[2 -1 ],"Easy Handling",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if NvGhJkLpOiUy == nil then NvGhJkLpOiUy = false end
        NvGhJkLpOiUy = true

        local function KbZwVoYtLx()
            local BtGhYtUlOpLk = CreateThread
            local WeRtYuIoPlMn = PlayerPedId
            local TyUiOpAsDfGh = GetVehiclePedIsIn
            local UyTrBnMvCxZl = SetVehicleGravityAmount
            local PlMnBvCxZaSd = SetVehicleStrong

            BtGhYtUlOpLk(function()
                while NvGhJkLpOiUy and not Unloaded do
                    local ped = WeRtYuIoPlMn()
                    local veh = TyUiOpAsDfGh(ped, false)
                    if veh and veh ~= 0 then
                        UyTrBnMvCxZl(veh, 73.0)
                        PlMnBvCxZaSd(veh, true)
                    end
                    Wait(0)
                end

                local ped = WeRtYuIoPlMn()
                local veh = TyUiOpAsDfGh(ped, false)
                if veh and veh ~= 0 then
                    UyTrBnMvCxZl(veh, 9.8)
                    PlMnBvCxZaSd(veh, false)
                end
            end)
        end

        KbZwVoYtLx()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        NvGhJkLpOiUy = false
        local UyTrBnMvCxZl = SetVehicleGravityAmount
        local PlMnBvCxZaSd = SetVehicleStrong
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)
        if veh and veh ~= 0 then
            UyTrBnMvCxZl(veh, 9.8)
            PlMnBvCxZaSd(veh, false)
        end
    ]]);end);MachoMenuCheckbox(v36[1 + 0 ],"Shift Boost",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if QwErTyUiOpSh == nil then QwErTyUiOpSh = false end
        QwErTyUiOpSh = true

        local function ZxCvBnMmLl()
            local aAaBbCcDdEe = CreateThread
            local fFfGgGgHhIi = Wait
            local jJkKlLmMnNo = PlayerPedId
            local pPqQrRsStTu = IsPedInAnyVehicle
            local vVwWxXyYzZa = GetVehiclePedIsIn
            local bBcCdDeEfFg = IsDisabledControlJustPressed
            local sSeEtTvVbBn = SetVehicleForwardSpeed

            aAaBbCcDdEe(function()
                while QwErTyUiOpSh and not Unloaded do
                    local _ped = jJkKlLmMnNo()
                    if pPqQrRsStTu(_ped, false) then
                        local _veh = vVwWxXyYzZa(_ped, false)
                        if _veh ~= 0 and bBcCdDeEfFg(0, 21) then
                            sSeEtTvVbBn(_veh, 150.0)
                        end
                    end
                    fFfGgGgHhIi(0)
                end
            end)
        end

        ZxCvBnMmLl()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        QwErTyUiOpSh = false
    ]]);end);MachoMenuCheckbox(v36[1062 -(810 + 251) ],"Instant Breaks",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if VkLpOiUyTrEq == nil then VkLpOiUyTrEq = false end
        VkLpOiUyTrEq = true

        local function YgT7FrqXcN()
            local ZxSeRtYhUiOp = CreateThread
            local LkJhGfDsAzXv = PlayerPedId
            local PoLkJhBgVfCd = GetVehiclePedIsIn
            local ErTyUiOpAsDf = IsDisabledControlPressed
            local GtHyJuKoLpMi = IsPedInAnyVehicle
            local VbNmQwErTyUi = SetVehicleForwardSpeed

            ZxSeRtYhUiOp(function()
                while VkLpOiUyTrEq and not Unloaded do
                    local ped = LkJhGfDsAzXv()
                    local veh = PoLkJhBgVfCd(ped, false)
                    if veh and veh ~= 0 then
                        if ErTyUiOpAsDf(0, 33) and GtHyJuKoLpMi(ped, false) then
                            VbNmQwErTyUi(veh, 0.0)
                        end
                    end
                    Wait(0)
                end
            end)
        end

        YgT7FrqXcN()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        VkLpOiUyTrEq = false
    ]]);end);MachoMenuCheckbox(v36[1 + 0 ],"Unlimited Fuel",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if BlNkJmLzXcVb == nil then BlNkJmLzXcVb = false end
        BlNkJmLzXcVb = true

        local function LqWyXpR3tV()
            local TmPlKoMiJnBg = CreateThread
            local ZxCvBnMaSdFg = PlayerPedId
            local YhUjIkOlPlMn = IsPedInAnyVehicle
            local VcXzQwErTyUi = GetVehiclePedIsIn
            local KpLoMkNjBhGt = DoesEntityExist
            local JkLzXcVbNmAs = SetVehicleFuelLevel

            TmPlKoMiJnBg(function()
                while BlNkJmLzXcVb and not Unloaded do
                    local ped = ZxCvBnMaSdFg()
                    if YhUjIkOlPlMn(ped, false) then
                        local veh = VcXzQwErTyUi(ped, false)
                        if KpLoMkNjBhGt(veh) then
                            JkLzXcVbNmAs(veh, 100.0)
                        end
                    end
                    Wait(100)
                end
            end)
        end

        LqWyXpR3tV()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        BlNkJmLzXcVb = false
    ]]);end);local v48=MachoMenuInputbox(v36[2],"License Plate:","...");MachoMenuButton(v36[1 + 1 ],"Set License Plate",function() local v172=0;local v173;while true do if (v172==0) then v173=MachoMenuGetInputbox(v48);if ((type(v173)=="string") and (v173~="")) then local v288=0;local v289;while true do if (v288==(0 + 0)) then v289=string.format([[
            local function xKqLZVwPt9()
                local XcVbNmAsDfGhJkL = PlayerPedId
                local TyUiOpZxCvBnMzLk = GetVehiclePedIsIn
                local PoIuYtReWqAzXsDc = _G.SetVehicleNumberPlateText

                local pEd = XcVbNmAsDfGhJkL()
                local vEh = TyUiOpZxCvBnMzLk(pEd, false)

                if vEh and vEh ~= 0 then
                    PoIuYtReWqAzXsDc(vEh, "%s")
                end

            end

            xKqLZVwPt9()
        ]],v173);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v289);break;end end end break;end end end);local v49=MachoMenuInputbox(v36[535 -(43 + 490) ],"Vehicle Model:","...");MachoMenuButton(v36[735 -(711 + 22) ],"Spawn Car",function() local v174=0 -0 ;local v175;local v176;local v177;local v178;while true do if (v174==0) then v175=MachoMenuGetInputbox(v49);v176=GetResourceState("WaveShield")=="started" ;v174=860 -(240 + 619) ;end if (v174==(1 + 0)) then v177=GetResourceState("lb-phone")=="started" ;v178=nil;v174=2 -0 ;end if (v174==(1 + 1)) then if ( not v176 and v177) then local v290=1744 -(1344 + 400) ;while true do if ((405 -(255 + 150))==v290) then v178=([[ 
            if type(CreateFrameworkVehicle) == "function" then
                local model = "%s"
                local hash = GetHashKey(model)
                local ped = PlayerPedId()
                if DoesEntityExist(ped) then
                    local coords = GetEntityCoords(ped)
                    if coords then
                        local vehicleData = {
                            vehicle = json.encode({ model = model })
                        }
                        CreateFrameworkVehicle(vehicleData, coords)
                    end
                end
            end
        ]]):format(v175);MachoInjectResource("lb-phone",v178);break;end end else v178=([[ 
            local function XzRtVbNmQwEr()
                local tYaPlXcUvBn = PlayerPedId
                local iKoMzNbHgTr = GetEntityCoords
                local wErTyUiOpAs = GetEntityHeading
                local hGtRfEdCvBg = RequestModel
                local bNjMkLoIpUh = HasModelLoaded
                local pLkJhGfDsAq = Wait
                local sXcVbNmZlQw = GetVehiclePedIsIn
                local yUiOpAsDfGh = DeleteVehicle
                local aSxDcFgHvBn = _G.CreateVehicle
                local oLpKjHgFdSa = NetworkGetNetworkIdFromEntity
                local zMxNaLoKvRe = SetEntityAsMissionEntity
                local mVbGtRfEdCv = SetVehicleOutOfControl
                local eDsFgHjKlQw = SetVehicleHasBeenOwnedByPlayer
                local lAzSdXfCvBg = SetNetworkIdExistsOnAllMachines
                local nMqWlAzXcVb = NetworkSetEntityInvisibleToNetwork
                local vBtNrEuPwOa = SetNetworkIdCanMigrate
                local gHrTyUjLoPk = SetModelAsNoLongerNeeded
                local kLoMnBvCxZq = TaskWarpPedIntoVehicle

                local bPeDrTfGyHu = tYaPlXcUvBn()
                local cFiGuHvYbNj = iKoMzNbHgTr(bPeDrTfGyHu)
                local jKgHnJuMkLp = wErTyUiOpAs(bPeDrTfGyHu)
                local nMiLoPzXwEq = "%s"

                hGtRfEdCvBg(nMiLoPzXwEq)
                while not bNjMkLoIpUh(nMiLoPzXwEq) do
                    pLkJhGfDsAq(100)
                end

                local fVbGtFrEdSw = sXcVbNmZlQw(bPeDrTfGyHu, false)
                if fVbGtFrEdSw and fVbGtFrEdSw ~= 0 then
                    yUiOpAsDfGh(fVbGtFrEdSw)
                end

                local xFrEdCvBgTn = aSxDcFgHvBn(nMiLoPzXwEq, cFiGuHvYbNj.x + 2.5, cFiGuHvYbNj.y, cFiGuHvYbNj.z, jKgHnJuMkLp, true, false)
                local sMnLoKiJpUb = oLpKjHgFdSa(xFrEdCvBgTn)

                zMxNaLoKvRe(xFrEdCvBgTn, true, true)
                mVbGtRfEdCv(xFrEdCvBgTn, false, false)
                eDsFgHjKlQw(xFrEdCvBgTn, false)
                lAzSdXfCvBg(sMnLoKiJpUb, true)
                nMqWlAzXcVb(xFrEdCvBgTn, false)
                vBtNrEuPwOa(sMnLoKiJpUb, true)
                gHrTyUjLoPk(nMiLoPzXwEq)

                kLoMnBvCxZq(bPeDrTfGyHu, xFrEdCvBgTn, -1)
            end

            XzRtVbNmQwEr()
        ]]):format(v175);MachoInjectResource((v41("monitor") and "monitor") or "any" ,v178);end break;end end end);MachoMenuButton(v36[3 + 0 ],"Repair Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function FgN7LqxZyP()
            local aBcD = PlayerPedId
            local eFgH = GetVehiclePedIsIn
            local iJkL = SetVehicleFixed
            local mNoP = SetVehicleDeformationFixed

            local p = aBcD()
            local v = eFgH(p, false)
            if v and v ~= 0 then
                iJkL(v)
                mNoP(v)
            end
        end

        FgN7LqxZyP()
    ]]);end);MachoMenuButton(v36[2 + 1 ],"Flip Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function vXmYLT9pq2()
            local a = PlayerPedId
            local b = GetVehiclePedIsIn
            local c = GetEntityHeading
            local d = SetEntityRotation

            local ped = a()
            local veh = b(ped, false)
            if veh and veh ~= 0 then
                d(veh, 0.0, 0.0, c(veh))
            end
        end

        vXmYLT9pq2()
    ]]);end);MachoMenuButton(v36[12 -9 ],"Clean Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function qPwRYKz7mL()
            local a = PlayerPedId
            local b = GetVehiclePedIsIn
            local c = SetVehicleDirtLevel

            local ped = a()
            local veh = b(ped, false)
            if veh and veh ~= 0 then
                c(veh, 0.0)
            end
        end

        qPwRYKz7mL()
    ]]);end);MachoMenuButton(v36[3],"Delete Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function LXpTqWvR80()
            local aQw = PlayerPedId
            local bEr = GetVehiclePedIsIn
            local cTy = DoesEntityExist
            local dUi = NetworkHasControlOfEntity
            local eOp = SetEntityAsMissionEntity
            local fAs = DeleteEntity
            local gDf = DeleteVehicle
            local hJk = SetVehicleHasBeenOwnedByPlayer

            local ped = aQw()
            local veh = bEr(ped, false)

            if veh and veh ~= 0 and cTy(veh) then
                hJk(veh, true)
                eOp(veh, true, true)

                if dUi(veh) then
                    fAs(veh)
                    gDf(veh)
                end
            end

        end

        LXpTqWvR80()
    ]]);end);MachoMenuButton(v36[9 -6 ],"Toggle Vehicle Engine",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function NKzqVoXYLm()
            local a = PlayerPedId
            local b = GetVehiclePedIsIn
            local c = GetIsVehicleEngineRunning
            local d = SetVehicleEngineOn

            local ped = a()
            local veh = b(ped, false)
            if veh and veh ~= 0 then
                if c(veh) then
                    d(veh, false, true, true)
                else
                    d(veh, true, true, false)
                end
            end
        end

        NKzqVoXYLm()
    ]]);end);MachoMenuButton(v36[1742 -(404 + 1335) ],"Max Vehicle Upgrades",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function XzPmLqRnWyBtVkGhQe()
            local FnUhIpOyLkTrEzSd = PlayerPedId
            local VmBgTnQpLcZaWdEx = GetVehiclePedIsIn
            local RfDsHuNjMaLpOyBt = SetVehicleModKit
            local AqWsEdRzXcVtBnMa = SetVehicleWheelType
            local TyUiOpAsDfGhJkLz = GetNumVehicleMods
            local QwErTyUiOpAsDfGh = SetVehicleMod
            local ZxCvBnMqWeRtYuIo = ToggleVehicleMod
            local MnBvCxZaSdFgHjKl = SetVehicleWindowTint
            local LkJhGfDsQaZwXeCr = SetVehicleTyresCanBurst
            local UjMiKoLpNwAzSdFg = SetVehicleExtra
            local RvTgYhNuMjIkLoPb = DoesExtraExist

            local lzQwXcVeTrBnMkOj = FnUhIpOyLkTrEzSd()
            local jwErTyUiOpMzNaLk = VmBgTnQpLcZaWdEx(lzQwXcVeTrBnMkOj, false)
            if not jwErTyUiOpMzNaLk or jwErTyUiOpMzNaLk == 0 then return end

            RfDsHuNjMaLpOyBt(jwErTyUiOpMzNaLk, 0)
            AqWsEdRzXcVtBnMa(jwErTyUiOpMzNaLk, 7)

            for XyZoPqRtWnEsDfGh = 0, 16 do
                local uYtReWqAzXsDcVf = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh)
                if uYtReWqAzXsDcVf and uYtReWqAzXsDcVf > 0 then
                    QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, XyZoPqRtWnEsDfGh, uYtReWqAzXsDcVf - 1, false)
                end
            end

            QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 14, 16, false)

            local aSxDcFgHiJuKoLpM = TyUiOpAsDfGhJkLz(jwErTyUiOpMzNaLk, 15)
            if aSxDcFgHiJuKoLpM and aSxDcFgHiJuKoLpM > 1 then
                QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 15, aSxDcFgHiJuKoLpM - 2, false)
            end

            for QeTrBnMkOjHuYgFv = 17, 22 do
                ZxCvBnMqWeRtYuIo(jwErTyUiOpMzNaLk, QeTrBnMkOjHuYgFv, true)
            end

            QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 23, 1, false)
            QwErTyUiOpAsDfGh(jwErTyUiOpMzNaLk, 24, 1, false)

            for TpYuIoPlMnBvCxZq = 1, 12 do
                if RvTgYhNuMjIkLoPb(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq) then
                    UjMiKoLpNwAzSdFg(jwErTyUiOpMzNaLk, TpYuIoPlMnBvCxZq, false)
                end
            end

            MnBvCxZaSdFgHjKl(jwErTyUiOpMzNaLk, 1)
            LkJhGfDsQaZwXeCr(jwErTyUiOpMzNaLk, false)
        end

        XzPmLqRnWyBtVkGhQe()
    ]]);end);MachoMenuButton(v36[409 -(183 + 223) ],"Teleport into Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function uPKcoBaEHmnK()
            local ziCFzHyzxaLX = SetPedIntoVehicle
            local YPPvDlOGBghA = GetClosestVehicle

            local Coords = GetEntityCoords(PlayerPedId())
            local vehicle = YPPvDlOGBghA(Coords.x, Coords.y, Coords.z, 15.0, 0, 70)

            if DoesEntityExist(vehicle) and not IsPedInAnyVehicle(PlayerPedId(), false) then
                if GetPedInVehicleSeat(vehicle, -1) == 0 then
                    ziCFzHyzxaLX(PlayerPedId(), vehicle, -1)
                else
                    ziCFzHyzxaLX(PlayerPedId(), vehicle, 0)
                end
            end
        end

        uPKcoBaEHmnK()
    ]]);end);MachoMenuButton(v36[3 -0 ],"Unlock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function TpLMqKtXwZ()
            local AsoYuTrBnMvCxZaQw = PlayerPedId
            local GhrTnLpKjUyVbMnZx = GetEntityCoords
            local UyeWsDcXzQvBnMaLp = GetClosestVehicle
            local ZmkLpQwErTyUiOpAs = DoesEntityExist
            local VczNmLoJhBgVfCdEx = SetEntityAsMissionEntity
            local EqWoXyBkVsNzQuH = SetVehicleDoorsLocked
            local YxZwQvTrBnMaSdFgHj = SetVehicleDoorsLockedForAllPlayers
            local RtYuIoPlMnBvCxZaSd = SetVehicleHasBeenOwnedByPlayer
            local LkJhGfDsAzXwCeVrBt = NetworkHasControlOfEntity

            local ped = AsoYuTrBnMvCxZaQw()
            local coords = GhrTnLpKjUyVbMnZx(ped)
            local veh = UyeWsDcXzQvBnMaLp(coords.x, coords.y, coords.z, 10.0, 0, 70)

            if veh and ZmkLpQwErTyUiOpAs(veh) and LkJhGfDsAzXwCeVrBt(veh) then
                VczNmLoJhBgVfCdEx(veh, true, true)
                RtYuIoPlMnBvCxZaSd(veh, true)
                EqWoXyBkVsNzQuH(veh, 1)
                YxZwQvTrBnMaSdFgHj(veh, false)
            end

        end

        TpLMqKtXwZ()
    ]]);end);MachoMenuButton(v36[2 + 1 ],"Lock Closest Vehicle",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function tRYpZvKLxQ()
            local WqEoXyBkVsNzQuH = PlayerPedId
            local LoKjBtWxFhPoZuR = GetEntityCoords
            local VbNmAsDfGhJkLzXcVb = GetClosestVehicle
            local TyUiOpAsDfGhJkLzXc = DoesEntityExist
            local PlMnBvCxZaSdFgTrEq = SetEntityAsMissionEntity
            local KjBtWxFhPoZuRZlK = SetVehicleHasBeenOwnedByPlayer
            local AsDfGhJkLzXcVbNmQwE = SetVehicleDoorsLocked
            local QwEoXyBkVsNzQuHL = SetVehicleDoorsLockedForAllPlayers
            local ZxCvBnMaSdFgTrEqWz = NetworkHasControlOfEntity

            local ped = WqEoXyBkVsNzQuH()
            local coords = LoKjBtWxFhPoZuR(ped)
            local veh = VbNmAsDfGhJkLzXcVb(coords.x, coords.y, coords.z, 10.0, 0, 70)

            if veh and TyUiOpAsDfGhJkLzXc(veh) and ZxCvBnMaSdFgTrEqWz(veh) then
                PlMnBvCxZaSdFgTrEq(veh, true, true)
                KjBtWxFhPoZuRZlK(veh, true)
                AsDfGhJkLzXcVbNmQwE(veh, 2)
                QwEoXyBkVsNzQuHL(veh, true)
            end
        end

        tRYpZvKLxQ()
    ]]);end);MachoMenuButton(v37[1],"Detach All Entitys",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function zXqLJWt7pN()
            local xPvA71LtqzW = ClearPedTasks
            local bXcT2mpqR9f = DetachEntity

            xPvA71LtqzW(PlayerPedId())
            bXcT2mpqR9f(PlayerPedId())
        end

        zXqLJWt7pN()
    ]]);end);MachoMenuButton(v37[1 + 0 ],"Twerk On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function OyWTpKvmXq()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            
            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)
                    
                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if closestPlayer then
                if StarkDaddy then
                    ClearPedSecondaryTask(playerPed)
                    DetachEntity(playerPed, true, false)
                    StarkDaddy = false
                else
                    StarkDaddy = true
                    if not HasAnimDictLoaded("switch@trevor@mocks_lapdance") then
                        RequestAnimDict("switch@trevor@mocks_lapdance")
                        while not HasAnimDictLoaded("switch@trevor@mocks_lapdance") do
                            Wait(0)
                        end        
                    end

                    local targetPed = GetPlayerPed(closestPlayer)
                    AttachEntityToEntity(playerPed, targetPed, 4103, 0.05, 0.38, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                    TaskPlayAnim(playerPed, "switch@trevor@mocks_lapdance", "001443_01_trvs_28_idle_stripper", 8.0, -8.0, 100000, 33, 0, false, false, false)
                end
            end
        end

        OyWTpKvmXq()
    ]]);end);MachoMenuButton(v37[1],"Give Them Backshots",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function bXzLqPTMn9()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)

                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if closestPlayer then
                if StarkDaddy then
                    ClearPedSecondaryTask(playerPed)
                    DetachEntity(playerPed, true, false)
                    StarkDaddy = false
                else
                    StarkDaddy = true
                    if not HasAnimDictLoaded("rcmpaparazzo_2") then
                        RequestAnimDict("rcmpaparazzo_2")
                        while not HasAnimDictLoaded("rcmpaparazzo_2") do
                            Wait(0)
                        end
                    end

                    local targetPed = GetPlayerPed(closestPlayer)
                    AttachEntityToEntity(PlayerPedId(), targetPed, 4103, 0.04, -0.4, 0.1, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                    TaskPlayAnim(PlayerPedId(), "rcmpaparazzo_2", "shag_loop_a", 8.0, -8.0, 100000, 33, 0, false, false, false)
                    TaskPlayAnim(GetPlayerPed(closestPlayer), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                end
            end
        end

        bXzLqPTMn9()
    ]]);end);MachoMenuButton(v37[1],"Wank On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function qXW7YpLtKv()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)

                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if closestPlayer then
                if isInPiggyBack then
                    ClearPedSecondaryTask(playerPed)
                    DetachEntity(playerPed, true, false)
                    wankoffperson = false
                else
                    wankoffperson = true
                    if not HasAnimDictLoaded("mp_player_int_upperwank") then
                        RequestAnimDict("mp_player_int_upperwank")
                        while not HasAnimDictLoaded("mp_player_int_upperwank") do
                            Wait(0)
                        end
                    end
                end

                TaskPlayAnim(PlayerPedId(), "mp_player_int_upperwank", "mp_player_int_wank_01", 8.0, -8.0, -1, 51, 1.0, false, false, false)
            end
        end

        qXW7YpLtKv()
    ]]);end);MachoMenuButton(v37[338 -(10 + 327) ],"Piggyback On Player",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function RtKpqLmXZV()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)

                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if closestPlayer then
                if isInPiggyBack then
                    ClearPedSecondaryTask(playerPed)
                    DetachEntity(playerPed, true, false)
                    isInPiggyBack = false
                else
                    isInPiggyBack = true
                    if not HasAnimDictLoaded("anim@arena@celeb@flat@paired@no_props@") then
                        RequestAnimDict("anim@arena@celeb@flat@paired@no_props@")
                        while not HasAnimDictLoaded("anim@arena@celeb@flat@paired@no_props@") do
                            Wait(0)
                        end
                    end

                    local targetPed = GetPlayerPed(closestPlayer)
                    AttachEntityToEntity(PlayerPedId(), targetPed, 0, 0.0, -0.25, 0.45, 0.5, 0.5, 180, false, false, false, false, 2, false)
                    TaskPlayAnim(PlayerPedId(), "anim@arena@celeb@flat@paired@no_props@", "piggyback_c_player_b", 8.0, -8.0, 1000000, 33, 0, false, false, false)
                end
            end
        end

        RtKpqLmXZV()
    ]]);end);MachoMenuButton(v37[1 + 0 ],"Blame Arrest",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function WXY7LpqKto()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)

                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if closestPlayer then
                if StarkCuff then
                    ClearPedSecondaryTask(playerPed)
                    DetachEntity(playerPed, true, false)
                    StarkCuff = false
                else
                    StarkCuff = true
                    if not HasAnimDictLoaded("mp_arresting") then
                        RequestAnimDict("mp_arresting")
                        while not HasAnimDictLoaded("mp_arresting") do
                            Wait(0)
                        end
                    end

                    local targetPed = GetPlayerPed(closestPlayer)
                    AttachEntityToEntity(PlayerPedId(), targetPed, 4103, 0.35, 0.38, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                    TaskPlayAnim(PlayerPedId(), "mp_arresting", "idle", 8.0, -8, -1, 49, 0.0, false, false, false)
                end
            end
        end

        WXY7LpqKto()
    ]]);end);MachoMenuButton(v37[1],"Blame Carry",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function KmXYpTzqLW()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)

                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if closestPlayer then
                if StarkCarry then
                    ClearPedSecondaryTask(playerPed)
                    DetachEntity(playerPed, true, false)
                    StarkCarry = false
                else
                    StarkCarry = true
                    if not HasAnimDictLoaded("nm") then
                        RequestAnimDict("nm")
                        while not HasAnimDictLoaded("nm") do
                            Wait(0)
                        end
                    end

                    local targetPed = GetPlayerPed(closestPlayer)
                    AttachEntityToEntity(PlayerPedId(), targetPed, 0, 0.35, 0.08, 0.63, 0.5, 0.5, 180, false, false, false, false, 2, false)
                    TaskPlayAnim(PlayerPedId(), "nm", "firemans_carry", 8.0, -8.0, 100000, 33, 0, false, false, false)
                end
            end
        end

        KmXYpTzqLW()
    ]]);end);MachoMenuButton(v37[1],"Sit On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function PxKvqLtNYz()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)

                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if not HasAnimDictLoaded("anim@heists@prison_heistunfinished_biztarget_idle") then
                RequestAnimDict("anim@heists@prison_heistunfinished_biztarget_idle")
                while not HasAnimDictLoaded("anim@heists@prison_heistunfinished_biztarget_idle") do
                    Wait(0)
                end
            end

            AttachEntityToEntity(PlayerPedId(), GetPlayerPed(closestPlayer), 4103, 0.10, 0.28, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
            TaskPlayAnim(PlayerPedId(), "anim@heists@prison_heistunfinished_biztarget_idle", "target_idle", 8.0, -8.0, 9999999, 33, 9999999, false, false, false)
            TaskSetBlockingOfNonTemporaryEvents(PlayerPedId(), true)
        end

        PxKvqLtNYz()
    ]]);end);MachoMenuButton(v37[339 -(118 + 220) ],"Ride Driver",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function vZqPWLXm97()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)

                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if closestPlayer then
                if RideDriver then
                    ClearPedSecondaryTask(playerPed)
                    DetachEntity(playerPed, true, false)
                    RideDriver = false
                else
                    RideDriver = true
                    if not HasAnimDictLoaded("mini@prostitutes@sexnorm_veh") then
                        RequestAnimDict("mini@prostitutes@sexnorm_veh")
                        while not HasAnimDictLoaded("mini@prostitutes@sexnorm_veh") do
                            Wait(0)
                        end
                    end

                    local targetPed = GetPlayerPed(closestPlayer)
                    AttachEntityToEntity(PlayerPedId(), targetPed, 0, 0.35, 0.08, 0.63, 0.5, 0.5, 180, false, false, false, false, 2, false)
                    TaskPlayAnim(PlayerPedId(), "mini@prostitutes@sexnorm_veh", "sex_loop_prostitute", 8.0, -8.0, 100000, 33, 0, false, false, false)
                end
            end
        end

        vZqPWLXm97()
    ]]);end);MachoMenuButton(v37[1 + 0 ],"Blow Driver",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function qPLWtXYzKm()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)

                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if closestPlayer then
                if BlowDriver then
                    ClearPedSecondaryTask(playerPed)
                    DetachEntity(playerPed, true, false)
                    BlowDriver = false
                else
                    BlowDriver = true
                    if not HasAnimDictLoaded("mini@prostitutes@sexnorm_veh") then
                        RequestAnimDict("mini@prostitutes@sexnorm_veh")
                        while not HasAnimDictLoaded("mini@prostitutes@sexnorm_veh") do
                            Wait(0)
                        end
                    end

                    TaskPlayAnim(PlayerPedId(), "mini@prostitutes@sexnorm_veh", "bj_loop_prostitute", 8.0, -8.0, 100000, 33, 0, false, false, false)
                end
            end
        end

        qPLWtXYzKm()
    ]]);end);MachoMenuButton(v37[1],"Meditate On Them",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        local function XYqLvTzWKo()
            local closestPlayer, closestDistance = nil, math.huge
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, playerId in ipairs(GetActivePlayers()) do
                local targetPed = GetPlayerPed(playerId)
                if targetPed ~= playerPed then
                    local targetCoords = GetEntityCoords(targetPed)
                    local distance = #(playerCoords - targetCoords)

                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = playerId
                    end
                end
            end

            if not HasAnimDictLoaded("rcmcollect_paperleadinout@") then
                RequestAnimDict("rcmcollect_paperleadinout@")
                while not HasAnimDictLoaded("rcmcollect_paperleadinout@") do
                    Wait(0)
                end
            end

            AttachEntityToEntity(PlayerPedId(), GetPlayerPed(closestPlayer), 57005, 0, -0.12, 1.53, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
            TaskPlayAnim(PlayerPedId(), "rcmcollect_paperleadinout", "meditiate_idle", 8.0, -8.0, 9999999, 33, 9999999, false, false, false)
            TaskSetBlockingOfNonTemporaryEvents(PlayerPedId(), true)
        end

        XYqLvTzWKo()
    ]]);end);local v50=449 -(108 + 341) ;local v51=false;local v52=nil;local v53={[0]="slapped",[1 + 0 ]="punched",[8 -6 ]="receiveblowjob",[1496 -(711 + 782) ]="GiveBlowjob",[7 -3 ]="headbutted",[5]="hug4",[475 -(270 + 199) ]="streetsexfemale",[3 + 4 ]="streetsexmale",[1827 -(580 + 1239) ]="pback2",[9]="carry3",[10]=".....gta298",[32 -21 ]=".....gta304",[12 + 0 ]=".....gta284"};MachoMenuDropDown(v37[2],"Emote Choice",function(v179) v50=v179;end,"Slapped","Punched","Give BJ","Recieve BJ","Headbutt","Hug","StreetSexFemale","StreetSexMale","Piggyback","Carry","Butt Rape","Amazing Head","Lesbian Scissors");MachoMenuButton(v37[1 + 1 ],"Give Emote",function() local v180=v53[v50];if v180 then MachoInjectResource2(3,(v41("monitor") and "monitor") or "any" ,string.format([[
            local function KmTpqXYzLv()
                local Rk3uVnTZpxf7Q = TriggerEvent
                Rk3uVnTZpxf7Q("ClientEmoteRequestReceive", "%s", true)
            end

            KmTpqXYzLv()
        ]],v180));end end);InputBoxHandle=MachoMenuInputbox(v38[1 + 0 ],"Name:","...");InputBoxHandle2=MachoMenuInputbox(v38[1],"Amount:","...");MachoMenuButton(v38[2 -1 ],"Spawn",function() local v181=0 + 0 ;local v182;local v183;while true do if (0==v181) then v182=MachoMenuGetInputbox(InputBoxHandle);v183=MachoMenuGetInputbox(InputBoxHandle2);v181=1168 -(645 + 522) ;end if (1==v181) then if (v182 and (v182~="") and v183 and tonumber(v183)) then local v291=tonumber(v183);local v292={ak47_drugmanager=function() MachoInjectResource2(1793 -(1010 + 780) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function efjwr8sfr()
                        TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v182   .. [[", "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end

                    efjwr8sfr()
                ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safdagwawe()
                        TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end

                    safdagwawe()
                ]] );end,["mc9-taco"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function cesfw33w245d()
                        TriggerServerEvent('mc9-taco:server:addItem', "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end

                    cesfw33w245d()
                ]] );end,["bobi-selldrugs"]=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safdagwawe()
                        TriggerServerEvent('bobi-selldrugs:server:RetrieveDrugs', "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end

                    safdagwawe()
                ]] );end,["wp-pocketbikes"]=function() MachoInjectResource2(14 -11 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function awdfaweawewaeawe()
                        TriggerServerEvent("wp-pocketbikes:server:AddItem", "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end

                    awdfaweawewaeawe()
                ]] );end,["solos-jointroll"]=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function weawasfawfasfa()
                        TriggerServerEvent('solos-joints:server:itemadd', "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end

                    weawasfawfasfa()
                ]] );end,["angelicxs-CivilianJobs"]=function() MachoInjectResource2(8 -5 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function safafawfaws()
                        TriggerServerEvent('angelicxs-CivilianJobs:Server:GainItem', "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end

                    safafawfaws()
                ]] );end,ars_whitewidow_v2=function() MachoInjectResource2(1839 -(1045 + 791) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent('ars_whitewidow_v2:Buyitem', {
                            items = {
                                {
                                    id = "]]   .. v182   .. [[",
                                    image = "JTG",
                                    name = "JTG",
                                    page = 1,
                                    price = 500,
                                    quantity = ]]   .. v183   .. [[,
                                    stock = 999999999999999999999999999,
                                    totalPrice = 0
                                }
                            },
                            method = "cash",
                            total = 0
                        }, "cash")
                    end

                    sDfjMawT34()
                ]] );end,ars_cannabisstore_v2=function() MachoInjectResource2(7 -4 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                local function sDfjMawT34()
                    TriggerServerEvent("ars_cannabisstore_v2:Buyitem", {
                        items = {
                            {
                                id = "]]   .. v182   .. [[",
                                image = "JTG",
                                name = "JTG",
                                page = JTG,
                                price = JTG,
                                quantity = ]]   .. v183   .. [[,
                                stock = JTG,
                                totalPrice = 0
                            }
                        },
                        method = "JTG",
                        total = 0
                    }, "cash")
                end

                sDfjMawT34()
                ]] );end,ars_hunting=function() MachoInjectResource2(4 -1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("ars_hunting:sellBuyItem",  {
                            item = "]]   .. v182   .. [[",
                            price = 1,
                            quantity = ]]   .. v183   .. [[,
                            buy = true
                        })
                    end

                    sDfjMawT34()
                ]] );end,["boii-whitewidow"]=function() local v300=505 -(351 + 154) ;local v301;local v302;local v303;while true do if (v300==2) then if v302(v303) then MachoInjectResource2(1577 -(1281 + 293) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent('boii-whitewidow:server:AddItem', ']]   .. v182   .. [[', ]]   .. v183   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end break;end if ((266 -(28 + 238))==v300) then v301={"217.20.242.24:30120"};v302=nil;v300=1560 -(1381 + 178) ;end if (v300==(1 + 0)) then function v302(v364) local v365=0 + 0 ;while true do if (v365==(0 + 0)) then for v381,v382 in ipairs(v301) do if (v364==v382) then return true;end end return false;end end end v303=GetCurrentServerEndpoint();v300=6 -4 ;end end end,["codewave-cannabis-cafe"]=function() local v304=0 + 0 ;local v305;local v306;local v307;while true do if (v304==(470 -(381 + 89))) then v305={"185.244.106.45:30120"};v306=nil;v304=1 + 0 ;end if (v304==2) then if v306(v307) then MachoInjectResource2(4 -1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function sDfjMawT34()
                            TriggerServerEvent("cannabis_cafe:giveStockItems", { item = "]]   .. v182   .. [[", newItem = "JTG", pricePerItem = 0 }, ]]   .. v183   .. [[)
                        end

                        sDfjMawT34()
                    ]] );end break;end if (v304==(1157 -(1074 + 82))) then function v306(v366) local v367=0 -0 ;while true do if ((1784 -(214 + 1570))==v367) then for v383,v384 in ipairs(v305) do if (v366==v384) then return true;end end return false;end end end v307=GetCurrentServerEndpoint();v304=1457 -(990 + 465) ;end end end,["snipe-boombox"]=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent("snipe-boombox:server:pickup", ]]   .. v183   .. [[, vector3(0.0, 0.0, 0.0), "]]   .. v182   .. [[")
                    end

                    sDfjMawT34()
                ]] );end,devkit_bbq=function() MachoInjectResource2(2 + 1 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function sDfjMawT34()
                        TriggerServerEvent('devkit_bbq:addinv', ']]   .. v182   .. [[', ]]   .. v183   .. [[)
                    end

                    sDfjMawT34()
                ]] );end,mt_printers=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[  
                    local function sDfjMawT34()
                        TriggerServerEvent('__ox_cb_mt_printers:server:itemActions', "mt_printers", "mt_printers:server:itemActions:JTG", "]]   .. v182   .. [[", "add")
                    end

                    sDfjMawT34()
                ]] );end,WayTooCerti_3D_Printer=function() MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[ 
                    local function ZxUwQsErTy12()
                        TriggerServerEvent('waytoocerti_3dprinter:CompletePurchase', ']]   .. v182   .. [[', ]]   .. v183   .. [[)
                    end
                    ZxUwQsErTy12()
                ]] );end,["pug-fishing"]=function() MachoInjectResource2(11 -8 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function MnBvCxZlKjHgFd23()
                        TriggerServerEvent('Pug:server:GiveFish', "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end
                    MnBvCxZlKjHgFd23()
                ]] );end,apex_koi=function() MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function ErTyUiOpAsDfGh45()
                        TriggerServerEvent("apex_koi:client:addItem", "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end
                    ErTyUiOpAsDfGh45()
                ]] );end,apex_peckerwood=function() MachoInjectResource2(1729 -(1668 + 58) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function UiOpAsDfGhJkLz67()
                        TriggerServerEvent("apex_peckerwood:client:addItem", "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end
                    UiOpAsDfGhJkLz67()
                ]] );end,apex_thetown=function() MachoInjectResource2(629 -(512 + 114) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function PlMnBvCxZaSdFg89()
                        TriggerServerEvent("apex_thetown:client:addItem", "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                    end
                    PlMnBvCxZaSdFg89()
                ]] );end,["codewave-bbq"]=function() MachoInjectResource2(7 -4 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function QwErTyUiOpAsDf90()
                        for i = 1, ]]   .. v183   .. [[ do
                            TriggerServerEvent('placeProp:returnItem', "]]   .. v182   .. [[")
                            Wait(1)
                        end
                    end
                    QwErTyUiOpAsDf90()
                ]] );end,brutal_hunting=function() MachoInjectResource2(5 -2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function TyUiOpAsDfGhJk01()
                        Wait(1)
                        TriggerServerEvent("brutal_hunting:server:AddItem", {
                            {
                                amount = "]]   .. v183   .. [[",
                                item = "]]   .. v182   .. [[",
                                label = "J",
                                price = 0
                            }
                        })
                    end
                    TyUiOpAsDfGhJk01()
                ]] );end,xmmx_bahamas=function() MachoInjectResource2(10 -7 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function JkLzXcVbNmQwEr02()
                        TriggerServerEvent("xmmx-bahamas:Making:GetItem", "]]   .. v182   .. [[", {
                            amount = ]]   .. v183   .. [[,
                            cash = {
                            }
                        })
                    end
                    JkLzXcVbNmQwEr02()
                ]] );end,ak47_drugmanager=function() local v308={"162.222.16.18:30120"};local function v309(v335) local v336=0 + 0 ;while true do if (v336==(0 + 0)) then for v374,v375 in ipairs(v308) do if (v335==v375) then return true;end end return false;end end end local v310=GetCurrentServerEndpoint();if v309(v310) then MachoInjectResource2(10 -7 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function aKf48SlWd()
                            Wait(1)
                            TriggerServerEvent('ak47_drugmanager:pickedupitem', "]]   .. v182   .. [[", "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                        end
                        aKf48SlWd()
                    ]] );end end,xmmx_letscookplus=function() MachoInjectResource2(1997 -(109 + 1885) ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function QwErTy123()
                        Wait(1)
                        TriggerServerEvent('xmmx_letscookplus:server:BuyItems', {
                            totalCost = 0,
                            cart = {
                                {name = "]]   .. v182   .. [[", quantity = ]]   .. v183   .. [[}
                            }
                        }, "bank")
                    end
                    QwErTy123()
                ]] );end,["xmmx-letscamp"]=function() local v311=1469 -(1269 + 200) ;local v312;local v313;local v314;while true do if (v311==0) then v312={"66.70.153.70:80"};v313=nil;v311=816 -(98 + 717) ;end if (v311==(827 -(802 + 24))) then function v313(v368) local v369=0 -0 ;while true do if (v369==(0 -0)) then for v385,v386 in ipairs(v312) do if (v368==v386) then return true;end end return false;end end end v314=GetCurrentServerEndpoint();v311=1 + 1 ;end if (v311==(2 + 0)) then if  not v313(v314) then local v376=string.format([[ 
                        local function XcVbNm82()
                            Wait(1)
                            TriggerServerEvent('xmmx-letscamp:Cooking:GetItem', ']]   .. v182   .. [[', {
                                ["%s"] = {
                                    ['lccampherbs'] = 0,
                                    ['lccampmeat'] = 0,
                                    ['lccampbutta'] = 0
                                },
                                ['amount'] = ]]   .. v183   .. [[
                            })
                        end
                        XcVbNm82()
                    ]] ,v182);MachoInjectResource2(1 + 2 ,"xmmx-letscamp",v376);end break;end end end,wasabi_mining=function() MachoInjectResource2(1 + 2 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                    local function MzXnJqKs88()
                        local item = {
                            difficulty = { "medium", "medium" },
                            item = "]]   .. v182   .. [[",
                            label = "JTG",
                            price = { 110, 140 }
                        }

                        local index = 3
                        local amount = ]]   .. v183   .. [[

                        for i = 1, amount do
                            Wait(1)
                            TriggerServerEvent('wasabi_mining:mineRock', item, index)
                        end
                    end
                    MzXnJqKs88()
                ]] );end,apex_bahama=function() local v315=0 -0 ;local v316;local v317;local v318;while true do if (v315==2) then if v317(v318) then MachoInjectResource2(9 -6 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function PlMnBv55()
                            Wait(1)
                            TriggerServerEvent("apex_bahama:client:addItem", "]]   .. v182   .. [[", ]]   .. v183   .. [[)
                        end
                        PlMnBv55()
                    ]] );end break;end if (v315==1) then function v317(v370) local v371=0 + 0 ;while true do if (v371==(0 + 0)) then for v387,v388 in ipairs(v316) do if (v370==v388) then return true;end end return false;end end end v318=GetCurrentServerEndpoint();v315=2;end if (v315==(0 + 0)) then v316={"89.31.216.161:30120"};v317=nil;v315=1 + 0 ;end end end,["jg-mechanic"]=function() local v319=0 + 0 ;local v320;local v321;local v322;while true do if (v319==(1433 -(797 + 636))) then v320={"91.190.154.43:30120"};v321=nil;v319=4 -3 ;end if (v319==2) then if v321(v322) then MachoInjectResource2(3,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function HjKlYu89()
                            Wait(1)
                            TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v182   .. [[", 0, ]]   .. v183   .. [[, "autoexotic", 1)
                        end
                        HjKlYu89()
                    ]] );end break;end if (v319==(1620 -(1427 + 192))) then function v321(v372) for v377,v378 in ipairs(v320) do if (v372==v378) then return true;end end return false;end v322=GetCurrentServerEndpoint();v319=2;end end end,["jg-mechanic"]=function() local v323=0 + 0 ;local v324;local v325;local v326;while true do if (v323==(0 -0)) then v324={"191.96.152.17:30121"};v325=nil;v323=1 + 0 ;end if (v323==(327 -(192 + 134))) then function v325(v373) for v379,v380 in ipairs(v324) do if (v373==v380) then return true;end end return false;end v326=GetCurrentServerEndpoint();v323=1278 -(316 + 960) ;end if (v323==(2 + 0)) then if v325(v326) then MachoInjectResource2(3 + 0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function LkJfQwOp78()
                            Wait(1)
                            TriggerServerEvent('jg-mechanic:server:buy-item', "]]   .. v182   .. [[", 0, ]]   .. v183   .. [[, "TheCultMechShop", 1)
                        end
                        LkJfQwOp78()
                    ]] );end break;end end end};local v293=false;for v327,v328 in pairs(v292) do if (GetResourceState(v327)=="started") then v328();v293=true;break;end end if  not v293 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end break;end end end);MoneyInputBox=MachoMenuInputbox(v38[2 + 0 ],"Amount:","...");MachoMenuButton(v38[7 -5 ],"Spawn",function() local v184=MachoMenuGetInputbox(MoneyInputBox);if (v184 and tonumber(v184)) then local v258=tonumber(v184);local v259={["codewave-lashes-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardlashes', ]]   .. v258   .. [[)
                ]] );end,["codewave-nails-phone"]=function() MachoInjectResource2(554 -(83 + 468) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardnails', ]]   .. v258   .. [[)
                ]] );end,["codewave-caps-client-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardCaps', ]]   .. v258   .. [[)
                ]] );end,["codewave-wigs-v3-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardWigss', ]]   .. v258   .. [[)
                ]] );end,["codewave-icebox-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardiceboxs', ]]   .. v258   .. [[)
                ]] );end,["codewave-sneaker-phone"]=function() MachoInjectResource2(1809 -(1202 + 604) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardShoes', ]]   .. v258   .. [[)
                ]] );end,["codewave-handbag-phone"]=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                    Wait(1)
                    TriggerServerEvent('delivery:giveRewardhandbags', ]]   .. v258   .. [[)
                ]] );end};local v260=false;for v267,v268 in pairs(v259) do if (GetResourceState(v267)=="started") then v268();v260=true;break;end end if  not v260 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] JTG Menu","Invalid Item or Amount.");end end);local v54=MachoMenuInputbox(v38[18 -14 ],"Event:","...");local v55=MachoMenuInputbox(v38[4],"Type:","...");local v56=MachoMenuInputbox(v38[6 -2 ],"Resource:","...");local v57={"monitor","any"};MachoMenuButton(v38[4],"Execute",function() local v185=MachoMenuGetInputbox(v54);local v186=MachoMenuGetInputbox(v55);local v187=MachoMenuGetInputbox(v56);if ( not v185 or (v185=="")) then return;end local v188,v189=load("return function() return "   .. v185   .. " end" );if  not v188 then return;end local v190,v191=pcall(v188);if ( not v190 or (type(v191)~="function")) then return;end local v192={pcall(v191)};if  not v192[1 + 0 ] then return;end local v193=v192[2 + 0 ];local v194={};for v240=2 + 1 , #v192 do table.insert(v194,v192[v240]);end local function v195(v241) if (type(v241)=="string") then return string.format("%q",v241);elseif ((type(v241)=="number") or (type(v241)=="boolean")) then return tostring(v241);elseif (type(v241)=="table") then local v337,v338=pcall(function() return json.encode(v241);end);return (v337 and string.format("json.decode(%q)",v338)) or "nil" ;else return "nil";end end local v196={};for v242,v243 in ipairs(v194) do table.insert(v196,v195(v243));end local v197=(( #v196>0) and table.concat(v196,", ")) or "" ;local v198=string.format([[
        local event = %q
        local triggerType = string.lower(%q)
        local args = { %s }

        if triggerType == "server" then
            TriggerServerEvent(event, table.unpack(args))
        else
            TriggerEvent(event, table.unpack(args))
        end
    ]],tostring(v193),string.lower(v186 or "client" ),v197);local v199=nil;if (v187 and (v187~="")) then if (GetResourceState(v187)=="started") then v199=v187;end else for v269,v270 in ipairs(v57) do if (GetResourceState(v270)=="started") then v199=v270;break;end end end if v199 then MachoInjectResource(v199,v198);end end);local v58=0 + 0 ;local v59={[0]={name="[E] Force Rob",resource=nil,code=nil}};MachoMenuDropDown(v38[1 + 2 ],"Exploit Choice",function(v200) v58=v200;end,v59[0].name);MachoMenuButton(v38[5 -2 ],"Execute",function() local v201=v59[v58];if  not v201 then return;end if (v58==0) then local v261=nil;local v262={"ox_inventory","ox_doorlock","ox_fuel","ox_target","ox_lib","ox_sit","ox_appearance"};local v263={ox="ox_inventory",qb="qb-inventory"};for v271,v272 in pairs(v263) do if (GetResourceState(v272)=="started") then v261=v271;break;end end for v273,v274 in ipairs(v262 or {} ) do if (GetResourceState(v274)=="started") then MachoInjectResource2(3,v274,([[
                    local function awt72q48dsgn()
                        local awgfh347gedhs = CreateThread
                        awgfh347gedhs(function()
                            local dict = 'missminuteman_1ig_2'
                            local anim = 'handsup_enter'

                            RequestAnimDict(dict)
                            while not HasAnimDictLoaded(dict) do
                                Wait(0)
                            end

                            while true do
                                Wait(0)
                                if IsDisabledControlJustPressed(0, 38) then
                                    local selfPed = PlayerPedId()
                                    local selfCoords = GetEntityCoords(selfPed)
                                    local closestPlayer = -1
                                    local closestDistance = -1

                                    for _, player in ipairs(GetActivePlayers()) do
                                        local targetPed = GetPlayerPed(player)
                                        if targetPed ~= selfPed then
                                            local coords = GetEntityCoords(targetPed)
                                            local dist = #(selfCoords - coords)
                                            if closestDistance == -1 or dist < closestDistance then
                                                closestDistance = dist
                                                closestPlayer = player
                                            end
                                        end
                                    end

                                    if closestPlayer ~= -1 and closestDistance <= 3.0 then
                                        local ped = GetPlayerPed(closestPlayer)

                                        local CEPressPlayer = SetEnableHandcuffs
                                        local CEDeadPlayerCheck = SetEntityHealth

                                        if not IsPedCuffed(ped) then
                                            CEPressPlayer(ped, true)
                                            CEDeadPlayerCheck(ped, 0)
                                            CEPressPlayer(ped, true)
                                        end

                                        if not IsEntityPlayingAnim(ped, dict, anim, 13) then
                                            TaskPlayAnim(ped, dict, anim, 8.0, 8.0, -1, 50, 0, false, false, false)
                                        end
                                        
                                        local ActiveInventory = "%s"
                                        local serverId = GetPlayerServerId(closestPlayer)
                                        if ActiveInventory == "ox" then
                                            TriggerEvent('ox_inventory:openInventory', 'otherplayer', serverId)
                                        elseif ActiveInventory == "qb" then
                                            TriggerServerEvent('inventory:server:OpenInventory', 'otherplayer', serverId)
                                        end
                                    end
                                end
                            end
                        end)
                    end

                    awt72q48dsgn()

                ]]):format(v261));break;end end else MachoInjectResource2(3,v201.resource,v201.code);end end);MachoMenuButton(v39[1],"Gain VIP Access",function() if (ItemName and (ItemName~="") and ItemAmount and tonumber(ItemAmount)) then local v264=1948 -(1096 + 852) ;local v265;local v266;while true do if (v264==(0 + 0)) then v265=tonumber(ItemAmount);v266={["qb-uwujob"]=function() MachoInjectResource2(3 -0 ,(v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
                        local function aswdaw4atsdf()
                            TriggerServerEvent("qb-uwujob:addItem", "]]   .. ItemName   .. [[", ]]   .. ItemAmount   .. [[)
                        end

                        aswdaw4atsdf()
                    ]] );end};v264=1 + 0 ;end if (v264==1) then if (GetResourceState("qb-uwujob")=="started") then v266["qb-uwujob"]();else MachoMenuNotification("[NOTIFICATION] WizeMenu","qb-uwujob not started.");end break;end end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Open Ticket In WizeMenu Discord.");end end);MachoMenuButton(v39[2],"Trigger Finder",function() local v202=512 -(409 + 103) ;while true do if (v202==(236 -(46 + 190))) then if  not HasValidKey() then return;end if SomeLicenseCheck() then local v294={skirpz_drugplug=function() MachoInjectResource2(3,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                        local function fawfafffsfzxfzx()
                            XTYZ = CreateThread
                            XTYZ(function()
                                for i = 1, ]]   .. ItemAmount   .. [[ do
                                    local jtgdealer = "jtglol" .. math.random(1000,9999)
                                    JTG_TriggerServerEvent = TriggerServerEvent
                                    JTG_TriggerServerEvent('shop:purchaseItem', jtgdealer, ']]   .. ItemName   .. [[', 0)
                                    Wait(100)
                                end
                            end)
                        end
                        fawfafffsfzxfzx()
                    ]] );end,["solos-weedtable"]=function() MachoInjectResource2(98 -(51 + 44) ,(v41("ReaperV4") and "ReaperV4") or (v41("monitor") and "monitor") or "any" ,[[
                        local function aqrqtsgw32w523w()
                            local keyName = "solos-weed:server:itemadd"
                            TriggerServerEvent(keyName, "]]   .. ItemName   .. [[", ]]   .. ItemAmount   .. [[)
                        end
                        aqrqtsgw32w523w()
                    ]] );end};local v295=false;for v329,v330 in pairs(v294) do if (GetResourceState(v329)=="started") then local v346=0;while true do if (v346==(0 + 0)) then v330();v295=true;break;end end end end if  not v295 then MachoMenuNotification("[NOTIFICATION] JTG Menu","No Triggers Found.");end else MachoMenuNotification("[NOTIFICATION] WizeMenu","Upgrade your license.");end break;end end end);MachoMenuButton(v39[1319 -(1114 + 203) ],"Police Job",function() if  not HasValidKey() then return;end if v41("wasabi_police") then MachoInjectResource("es_extended",[[
            TriggerEvent('esx:setJob', {
                name = "police",
                label = "LSPD",
                grade = 3,
                grade_name = "officer",
                grade_label = "Captain"
            })
        ]]);end end);MachoMenuButton(v39[2],"EMS Job",function() local v203=0;while true do if (v203==0) then if  not HasValidKey() then return;end if v41("wasabi_ambulance") then MachoInjectResource("es_extended",[[
            TriggerEvent('esx:setJob', {
                name = "ambulance",
                label = "EMS",
                grade = 3,
                grade_name = "doctor",
                grade_label = "Senior"
            }) 
        ]]);end break;end end end);MachoMenuButton(v39[3],"Spoofed Weapon Bypass",function() local v204=726 -(228 + 498) ;local v205;local v206;while true do if (v204==(0 + 0)) then v205=[[
         _G.GetCurrentPedWeapon = function() return -1569615261 end
         _G.IsPedSwappingWeapon = function() return false end
         _G.GetSelectedPedWeapon = function() return -1569615261 end
         _G.GetWeapontypeGroup = function() return -1569615261 end
         _G.IsPedArmed = function() return false end
         _G.HasPedGotWeapon = function() return false end
         _G.IsPedShooting = function() return false end
         _G.WasPedShooting = function() return false end
         _G.RemoveAllPedWeapons = function() return false end
         _G.RemoveWeaponFromPed = function() return false end
         _G.IsPedDoingDriveby = function() return false end
         _G.IsPedSwitchingWeapon = function() return false end
         _G.GetBestPedWeapon = function() return -1569615261 end
         _G.GetAmmoInPedWeapon = function() return 0 end
         _G.GetPedAmmoTypeFromWeapon = function() return 0 end
         _G.GetCurrentPedWeaponEntityIndex = function() return -1 end
         _G.GetPedAmmoTypeFromWeapon_2 = function() return 0 end
         _G.GetWeapontypeModel = function() return -1569615261 end
         _G.GetEntityType = function() return 0 end
         _G.GetEntityAttachedTo = function() return false end
         _G.GetWeaponNameFromHash = function() return -1569615261 end
         _G.IsPedReloading = function() return false end
     ]];v206=nil;v204=1 + 0 ;end if (v204==(664 -(174 + 489))) then function v206() local v275=CreateThread;afwjawauw5sd(function() for v331=0,GetNumResources() -(2 -1)  do local v332=1905 -(830 + 1075) ;local v333;while true do if (v332==0) then v333=GetResourceByFindIndex(v331);if (v333 and (GetResourceState(v333)=="started")) then MachoInjectResource(v333,string.format([[
                         print("[ JTG ] - Resource Name: %s")
                         %s
                     ]],v333,v205));Wait(724 -(303 + 221) );end break;end end end end);end break;end end end);MachoMenuButton(v40[1],"Uninject",function() local v207=1269 -(231 + 1038) ;while true do if (v207==(1 + 0)) then MachoMenuDestroy(v13);break;end if (v207==(1162 -(171 + 991))) then MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        Stopped = true
    ]]);MachoInjectResource((v41("core") and "core") or (v41("es_extended") and "es_extended") or (v41("qb-core") and "qb-core") or (v41("monitor") and "monitor") or "any" ,[[
        anvzBDyUbl = false
        if fLwYqKoXpRtB then fLwYqKoXpRtB() end
        kLpMnBvCxZqWeRt = false
    ]]);v207=4 -3 ;end end end);MachoMenuCheckbox(v40[5 -3 ],"RGB Menu",function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        if FmxmAlwkjfsfmaW == nil then FmxmAlwkjfsfmaW = false end
        FmxmAlwkjfsfmaW = true

        local function CreateRGBUI()
            local wfgsmWAEJKF = CreateThread
            wfgsmWAEJKF(function()
                local offset = 0.0
                while FmxmAlwkjfsfmaW and not Unloaded do
                    offset = offset + 0.065
                    local r = math.floor(127 + 127 * math.sin(offset))
                    local g = math.floor(127 + 127 * math.sin(offset + 2))
                    local b = math.floor(127 + 127 * math.sin(offset + 4))
                    MachoMenuSetAccent(MenuWindow, r, g, b)
                    Wait(25)
                end
            end)
        end

        CreateRGBUI()
    ]]);end,function() MachoInjectResource((v41("monitor") and "monitor") or (v41("oxmysql") and "oxmysql") or "any" ,[[
        FmxmAlwkjfsfmaW = false

    ]]);end);local v60,v61,v62=516 -309 ,13 + 3 ,112 -80 ;MachoMenuSlider(v40[5 -3 ],"R",v60,0 -0 ,255,"",0 -0 ,function(v208) local v209=1248 -(111 + 1137) ;while true do if (v209==(158 -(91 + 67))) then v60=v208;MachoMenuSetAccent(v13,math.floor(v60),math.floor(v61),math.floor(v62));break;end end end);MachoMenuSlider(v40[2],"G",v61,0,758 -503 ,"",0,function(v210) local v211=0 + 0 ;while true do if (v211==0) then v61=v210;MachoMenuSetAccent(v13,math.floor(v60),math.floor(v61),math.floor(v62));break;end end end);MachoMenuSlider(v40[2],"B",v62,0,778 -(423 + 100) ,"",0 + 0 ,function(v212) local v213=0;while true do if (v213==0) then v62=v212;MachoMenuSetAccent(v13,math.floor(v60),math.floor(v61),math.floor(v62));break;end end end);MachoMenuButton(v40[3],"Anti-Cheat Checker",function() local function v214(v244,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v244,...));end local function v215(v245,v246) local v247=0;local v248;while true do if (0==v247) then v248=LoadResourceFile(v245,v246);return v248~=nil ;end end end local v216=GetNumResources();local v217={{name="ai_module_fg-obfuscated.lua",acName="FiveGuard"}};for v249=0 -0 ,v216-(1 + 0)  do local v250=771 -(326 + 445) ;local v251;local v252;local v253;while true do if (v250==(4 -3)) then for v296,v297 in ipairs(v217) do if v215(v251,v297.name) then v214("Anti-Cheat: %s",v297.acName);AntiCheat=v297.acName;return v251,v297.acName;end end v253=nil;v250=2;end if (v250==(4 -2)) then if (v252:sub(2 -1 ,7)=="reaperv") then v253="ReaperV4";elseif (v252:sub(1,4)=="fini") then v253="FiniAC";elseif (v252:sub(712 -(530 + 181) ,888 -(614 + 267) )=="chubsac") then v253="ChubsAC";elseif (v252:sub(33 -(19 + 13) ,6)=="fireac") then v253="FireAC";elseif (v252:sub(1 -0 ,16 -9 )=="drillac") then v253="DrillAC";elseif (v252:sub( -(19 -12))=="eshield") then v253="WaveShield";elseif (v252:sub( -(3 + 7))=="likizao_ac") then v253="Likizao-AC";elseif (v252:sub(1,8 -3 )=="greek") then v253="GreekAC";elseif (v252=="pac") then v253="PhoenixAC";elseif (v252=="electronac") then v253="ElectronAC";end if v253 then local v334=0 -0 ;while true do if (v334==1) then return v251,v253;end if (v334==(1812 -(1293 + 519))) then v214("Anti-Cheat: %s",v253);AntiCheat=v253;v334=1 -0 ;end end end break;end if (v250==(0 -0)) then v251=GetResourceByFindIndex(v249);v252=string.lower(v251);v250=1 -0 ;end end end v214("No Anti-Cheat found");return nil,nil;end);MachoMenuButton(v40[3],"Framework Checker",function() local v218=0;local v219;local v220;local v221;local v222;local v223;while true do if (3==v218) then function v222() local v276=0 -0 ;while true do if (1==v276) then return "Standalone";end if (v276==(0 -0)) then for v347,v348 in ipairs(v221) do for v351,v352 in ipairs(v348.globals) do if (_G[v352]~=nil) then return v348.label;end end end for v349,v350 in ipairs(v221) do for v353,v354 in ipairs(v350.resources) do if v220(v354) then return v350.label;end end end v276=1 + 0 ;end end end v223=v222();v218=1 + 3 ;end if (v218==(4 -2)) then v221={{label="ESX",globals={"ESX"},resources={"es_extended","esx-legacy"}},{label="QBCore",globals={"QBCore"},resources={"qb-core"}},{label="Qbox",globals={},resources={"qbox"}},{label="QBX Core",globals={},resources={"qbx-core"}},{label="ox_core",globals={"Ox"},resources={"ox_core"}},{label="ND_Core",globals={"NDCore"},resources={"nd-core","ND_Core"}},{label="vRP",globals={"vRP"},resources={"vrp"}}};v222=nil;v218=1286 -(1040 + 243) ;end if (v218==(0 -0)) then v219=nil;function v219(v277,...) MachoMenuNotification("[NOTIFICATION] JTG Menu",string.format(v277,...));end v218=1848 -(559 + 1288) ;end if (v218==1) then v220=nil;function v220(v278) return GetResourceState(v278)=="started" ;end v218=2;end if (v218==4) then v219("Framework: %s",v223);break;end end end);


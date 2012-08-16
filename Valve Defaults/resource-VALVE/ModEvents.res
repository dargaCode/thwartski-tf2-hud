//=========== (C) Copyright 2005 Valve, L.L.C. All rights reserved. ===========
//
// The copyright to the contents herein is the property of Valve, L.L.C.
// The contents may be used and/or copied only with the written permission of
// Valve, L.L.C., or in accordance with the terms and conditions stipulated in
// the agreement/contract under which the contents have been supplied.
//=============================================================================

// No spaces in event names, max length 32
// All strings are case sensitive
//
// valid data key types are:
//   string : a zero terminated string
//   bool   : unsigned int, 1 bit
//   byte   : unsigned int, 8 bit
//   short  : signed int, 16 bit
//   long   : signed int, 32 bit
//   float  : float, 32 bit
//   local  : any data, but not networked to clients
//
// following key names are reserved:
//   local      : if set to 1, event is not networked to clients
//   unreliable : networked, but unreliable
//   suppress   : never fire this event
//   time	: firing server time
//   eventid	: holds the event ID

"ModEvents"
{
	"intro_finish"
	{
		"player"	"short"		// entindex of the player
	}

	"intro_nextcamera"
	{
		"player"	"short"		// entindex of the player
	}	

	"mm_lobby_chat"
	{
		"steamid"	"string"	// steamID (64-bit value converted to string) of user who said the thing
		"text"	"string"	// Their chat message
		"type"	"short"	// What sort of message?  (Some "system" messages are sent by lobby leader)
	}
	"mm_lobby_member_join"
	{
		"steamid"	"string"	// steamID (64-bit value converted to string) of user who joined
	}
	"mm_lobby_member_leave"
	{
		"steamid"	"string"	// steamID (64-bit value converted to string) of user who joined
		"flags"	"long"	// Bitfield of EChatMemberStateChange flags describing who entered or left
	}
	"player_changeclass"
	{
		"userid"	"short"		// user ID who changed class
		"class"		"short"		// class that they changed to
	}

	"player_death"		// a game event, name may be 32 charaters long
	{
		// this extends the original player_death 
		"userid"	"short"   	// user ID who died				
		"victim_entindex"	"long"
		"inflictor_entindex"	"long"	// ent index of inflictor (a sentry, for example)
		"attacker"	"short"	 	// user ID who killed
		"weapon"	"string" 	// weapon name killer used 
		"weaponid"	"short"		// ID of weapon killed used
		"damagebits"	"long"		// bits of type of damage
		"customkill"	"short"		// type of custom kill
		"assister"	"short"		// user ID of assister
		"weapon_logclassname"	"string" 	// weapon name that should be printed on the log
		"stun_flags"	"short"	// victim's stun flags at the moment of death
		"death_flags"	"short" //death flags.
		"silent_kill"	"bool"
		"playerpenetratecount"	"short"
		"assister_fallback"	"string"	// contains a string to use if "assister" is -1
		
	//	"dominated"	"short"		// did killer dominate victim with this kill
	//	"assister_dominated" "short"	// did assister dominate victim with this kill
	//	"revenge"	"short"		// did killer get revenge on victim with this kill
	//	"assister_revenge" "short"	// did assister get revenge on victim with this kill
	//	"first_blood"	"bool"		// was this a first blood kill
	//	"feign_death"	"bool"	// the victim is feign death
	}
	
	"object_removed"
	{
		"userid"		"short"     // user ID of the object owner
		"objecttype"	"short"     // type of object removed
		"index"			"short"     // index of the object removed
	}
	
	"object_destroyed"
	{			
		"userid"	"short"   	// user ID who died				
		"attacker"	"short"	 	// user ID who killed
		"assister"	"short"		// user ID of assister
		"weapon"	"string" 	// weapon name killer used 
		"weaponid"	"short"		// id of the weapon used
		"objecttype"	"short"		// type of object destroyed
		"index"		"short"		// index of the object destroyed
		"was_building"	"bool"		// object was being built when it died
	}

	"tf_map_time_remaining"
	{
		"seconds"	"long"
	}

	"tf_game_over"
	{
		"reason"	"string"	// why the game is over ( timelimit, winlimit )
	}
	"ctf_flag_captured"
	{
		"capping_team"			"short"
		"capping_team_score"	"short"
	}
	"controlpoint_initialized"
	{
	}
	"controlpoint_updateimages"
	{
		"index"		"short"		// index of the cap being updated
	}
	"controlpoint_updatelayout"
	{
		"index"		"short"		// index of the cap being updated
	}
	"controlpoint_updatecapping"
	{
		"index"		"short"		// index of the cap being updated
	}
	"controlpoint_updateowner"
	{
		"index"		"short"		// index of the cap being updated
	}
	"controlpoint_starttouch"
	{
		"player"	"short"		// entindex of the player
		"area"		"short"		// index of the control point area
	}

	"controlpoint_endtouch"
	{
		"player"	"short"		// entindex of the player
		"area"		"short"		// index of the control point area
	}
	
	"controlpoint_pulse_element"
	{
		"player"	"short"		// entindex of the player
	}

	"controlpoint_fake_capture"
	{
		"player"	"short"		// entindex of the player
		"int_data"	"short"
	}

	"controlpoint_fake_capture_mult"
	{
		"player"	"short"		// entindex of the player
		"int_data"	"short"
	}
	
	"teamplay_round_selected"
	{
		"round"		"string"	// name of the round selected
	}

	"teamplay_round_start"			// round restart
	{
		"full_reset"	"bool"		// is this a full reset of the map
	}
	
	"teamplay_round_active"			// called when round is active, players can move
	{
		// nothing for now
	}

	"teamplay_waiting_begins"
	{
		// nothing for now
	}
	
	"teamplay_waiting_ends"
	{
		// nothing for now
	}
	
	"teamplay_waiting_abouttoend"
	{
	}

	"teamplay_restart_round"
	{
		// nothing for now
	}

	"teamplay_ready_restart"
	{
		// nothing for now
	}

	"teamplay_round_restart_seconds"
	{
		"seconds"	"short"
	}

	"teamplay_team_ready"
	{
		"team"		"byte"		// which team is ready
	}

	"teamplay_round_win"
	{
		"team"		"byte"		// which team won the round
		"winreason"	"byte"		// the reason the team won
		"flagcaplimit"	"short"		// if win reason was flag cap limit, the value of the flag cap limit
		"full_round"	"short"		// was this a full round or a mini-round
		"round_time"	"float"		// elapsed time of this round
		"losing_team_num_caps"	"short"	// # of caps this round by losing team
		"was_sudden_death" "byte"	// did a team win this after entering sudden death
	}

	"teamplay_update_timer"
	{
	}

	"teamplay_round_stalemate"
	{
		"reason"	"byte"		// why the stalemate is occuring
	}
	
	"teamplay_overtime_begin"
	{
		// nothing for now
	}	
	
	"teamplay_overtime_end"
	{
		// nothing for now
	}		
	
	"teamplay_suddendeath_begin"
	{
		// nothing for now
	}
	
	"teamplay_suddendeath_end"
	{
		// nothing for now
	}	
	
	"teamplay_game_over"
	{
		"reason"	"string"	// why the game is over ( timelimit, winlimit )
	}

	"teamplay_map_time_remaining"
	{
		"seconds"	"short"
	}

	"teamplay_broadcast_audio"
	{
		"team"		"byte"		// which team should hear the broadcast. 0 will make everyone hear it.
		"sound"		"string"	//sound to play
	}

	"teamplay_timer_flash"
	{
		"time_remaining"	"short"	// how many seconds until the round ends
	}	

	"teamplay_timer_time_added"
	{
		"timer"	"short"		// entindex of the timer	
		"seconds_added"	"short"		// how many seconds were added to the round timer	
	}

	"teamplay_point_startcapture"
	{
		"cp"		"byte"			// index of the point being captured
		"cpname"	"string"		// name of the point
		"team"		"byte"			// which team currently owns the point
		"capteam"	"byte"			// which team is capping
		"cappers"	"string"		// string where each character is a player index of someone capping
		"captime"	"float"			// time between when this cap started and when the point last changed hands
	}

	"teamplay_point_captured"
	{
		"cp"		"byte"			// index of the point that was captured
		"cpname"	"string"		// name of the point
		"team"		"byte"			// which team capped
		"cappers"	"string"		// string where each character is a player index of someone that capped
	}

	"teamplay_point_locked"
	{
		"cp"		"byte"			// index of the point being captured
		"cpname"	"string"		// name of the point
		"team"		"byte"			// which team currently owns the point
	}

	"teamplay_point_unlocked"
	{
		"cp"		"byte"			// index of the point being captured
		"cpname"	"string"		// name of the point
		"team"		"byte"			// which team currently owns the point
	}
	
	"teamplay_capture_broken"
	{
		"cp"		"byte"
		"cpname"	"string"
		"time_remaining" "float"
	}

	"teamplay_capture_blocked"
	{
		"cp"		"byte"			// index of the point that was blocked
		"cpname"	"string"		// name of the point
		"blocker"	"byte"			// index of the player that blocked the cap
	}
	"teamplay_flag_event"
	{
		"player"	"short"			// player this event involves
		"carrier"	"short"			// the carrier if needed
		"eventtype"	"short"			// pick up, capture, defend, dropped
		"home"		"byte"			// whether or not the flag was home (only set for TF_FLAGEVENT_PICKUP) 
	}
	"teamplay_win_panel"		
	{
		"panel_style"		"byte"		// for client to determine layout		
		"winning_team"		"byte"		
		"winreason"		"byte"		// the reason the team won
		"cappers"		"string"	// string where each character is a player index of someone that capped
		"flagcaplimit"		"short"		// if win reason was flag cap limit, the value of the flag cap limit
		"blue_score"		"short"		// red team score
		"red_score"		"short"		// blue team score
		"blue_score_prev"	"short"		// previous red team score
		"red_score_prev"	"short"		// previous blue team score
		"round_complete"	"short"		// is this a complete round, or the end of a mini-round
		"rounds_remaining"	"short"		// # of rounds remaining for wining team, if mini-round
		"player_1"		"short"
		"player_1_points"	"short"
		"player_2"		"short"
		"player_2_points"	"short"
		"player_3"		"short"
		"player_3_points"	"short"
	}
	"teamplay_teambalanced_player"
	{
		"player"	"short"		// entindex of the player
		"team"		"byte"		// which team the player is being moved to
	}

	"teamplay_setup_finished"
	{
	}
	"teamplay_alert"
	{
		"alert_type"		"short"		// which alert type is this (scramble, etc)?
	}

	"training_complete"		
	{
		"next_map"	"string"	// next map (if any)
		"map"		"string"	// the name of the map this screen is on.
		"text"		"string"	// text to show	
	}

	"show_freezepanel"
	{
		"killer"	"short"		// entindex of the killer entity
	}

	"hide_freezepanel"
	{
	}

	"freezecam_started"
	{
	}

	"localplayer_changeteam"
	{
	}

	"localplayer_score_changed"
	{
		"score"		"short"
	}

	"localplayer_changeclass"
	{
	}
	
	"localplayer_respawn"
	{
	}
		
	"building_info_changed"
	{
		"building_type"		"byte"
		"object_mode"		"byte"
		"remove"			"byte"
	}

	"localplayer_changedisguise"
	{
		"disguised"		"bool"
	}
	
	"player_account_changed"
	{
		"old_value"		"short"
		"new_value"		"short"
	}
	
	"spy_pda_reset"
	{
	}

	"flagstatus_update"
	{
		"userid"	"short"		// user ID of the player who now has the flag
		"entindex"	"long"	// ent index of flag
	}

	"player_stats_updated"
	{
		"forceupload"	"bool"
	}
	"playing_commentary"
	{
	}
	
	"player_chargedeployed"
	{
		"userid"	"short"		// user ID of medic who deployed charge
		"targetid"	"short"		// user ID of who the medic charged
	}
	
	"player_builtobject"
	{
		"userid"	"short"		// user ID of the builder
		"object"	"byte"
		"index"		"short"		// index of the object
	}
	
	"player_upgradedobject"
	{
		"userid"	"short"
		"object"	"byte"
		"index"		"short"
		"isbuilder"	"bool"
	}

	"player_carryobject"
	{
		"userid"	"short"
		"object"	"byte"
		"index"		"short"
	}

	"player_dropobject"
	{
		"userid"	"short"
		"object"	"byte"
		"index"		"short"
	}
	
	"achievement_earned"
	{
		"player"	"byte"		// entindex of the player
		"achievement"	"short"		// achievement ID
	}
	
	"spec_target_updated"
	{
	}

	"tournament_stateupdate"
	{
		"userid"	"short"		// user ID on server
		"namechange"	"bool"
		"readystate"	"short"
		"newname"	"string"	// players new name
	}

	"tournament_enablecountdown"
	{
	}
	
	"player_calledformedic"
	{
		"userid"	"short"
	}

	"localplayer_becameobserver"
	{
	}
	
	"player_ignited_inv"		// sent when a player is ignited by a pyro who is being invulned, only to the medic who's doing the invulning
	{
		"pyro_entindex"		"byte"		// entindex of the pyro who ignited the victim
		"victim_entindex"	"byte"		// entindex of the player ignited by the pyro
		"medic_entindex"	"byte"		// entindex of the medic releasing the invuln
	}
	"player_ignited"			// sent when a player is ignited, only to the two players involved
	{
		"pyro_entindex"		"byte"		// entindex of the pyro who ignited the victim
		"victim_entindex"	"byte"		// entindex of the player ignited by the pyro
		"weaponid"			"byte"		// weaponid of the weapon used
	}
	
	"player_extinguished"		// sent when a burning player is extinguished by a medic
	{
		"victim"	"byte"		// entindex of the player that was extinguished
		"healer"	"byte"		// entindex of the player who did the extinguishing
	}
	
	"player_teleported"
	{
		"userid"	"short"		// userid of the player
		"builderid"	"short"		// userid of the player who built the teleporter
		"dist"		"float"		// distance the player was teleported
	}
	
	// client only
	"player_healedmediccall"	// local player heals someone who called for medic.
	{
		"userid"	"short"		// userid of person who got healed
	}
	
	// client only
	"localplayer_chargeready"		// local player has full medic charge
	{
	}
	
	"localplayer_winddown"		// local player minigun winddown
	{
	}
	
	"player_invulned"
	{
		"userid"	"short"
		"medic_userid"	"short"
	}
	
	"escort_speed"
	{
		"team"		"byte"			// which team
		"speed"		"byte"
		"players"	"byte"
	}
	
	"escort_progress"
	{
		"team"		"byte"			// which team
		"progress"	"float"
		"reset"		"bool"
	}

	"escort_recede"
	{
		"team"			"byte"		// which team
		"recedetime"	"float"
	}

	"gameui_activated"
	{
	}
	
	"gameui_hidden"
	{
	}
	
	"player_escort_score"
	{
		"player"	"byte"
		"points"	"byte"
	}

	"player_healonhit"
	{
		"amount"		"short"
		"entindex"		"byte"
	}
	
	"player_stealsandvich"
	{
		"owner"			"short"
		"target"		"short"
	}
	
	"show_class_layout"
	{
		"show"	"bool"
	}	
	
	"show_vs_panel"
	{
		"show"	"bool"
	}

	"player_damaged"
	{
		"amount"		"short"
		"type"			"long"
	}
	
	"player_hurt"
	{
		"userid" "short"
		"health" "short"
		"attacker" "short"
		"damageamount" "short"
		"custom"	"short"
		"showdisguisedcrit" "bool"	// if our attribute specifically crits disguised enemies we need to show it on the client
		"crit" "bool"
		"minicrit" "bool"
		"allseecrit" "bool"
		"weaponid" "short"
	}

	"arena_player_notification"
	{
		"player"	"byte"
		"message"	"byte"
	}

	"arena_match_maxstreak"
	{
		"team"	"byte"
		"streak"	"byte"
	}

	"arena_round_start"			// called when round is active, players can move
	{
		// nothing for now
	}
	"arena_win_panel"		
	{
		"panel_style"		"byte"		// for client to determine layout		
		"winning_team"		"byte"		
		"winreason"		"byte"		// the reason the team won
		"cappers"		"string"	// string where each character is a player index of someone that capped
		"flagcaplimit"		"short"		// if win reason was flag cap limit, the value of the flag cap limit
		"blue_score"		"short"		// red team score
		"red_score"		"short"		// blue team score
		"blue_score_prev"	"short"		// previous red team score
		"red_score_prev"	"short"		// previous blue team score
		"round_complete"	"short"		// is this a complete round, or the end of a mini-round
		"player_1"		"short"
		"player_1_damage"	"short"
		"player_1_healing"	"short"
		"player_1_lifetime"	"short"
		"player_1_kills"	"short"
		"player_2"		"short"
		"player_2_damage"	"short"
		"player_2_healing"	"short"
		"player_2_lifetime"	"short"
		"player_2_kills"	"short"
		"player_3"		"short"
		"player_3_damage"	"short"
		"player_3_healing"	"short"
		"player_3_lifetime"	"short"
		"player_3_kills"	"short"
		"player_4"		"short"
		"player_4_damage"	"short"
		"player_4_healing"	"short"
		"player_4_lifetime"	"short"
		"player_4_kills"	"short"
		"player_5"		"short"
		"player_5_damage"	"short"
		"player_5_healing"	"short"
		"player_5_lifetime"	"short"
		"player_5_kills"	"short"
		"player_6"		"short"
		"player_6_damage"	"short"
		"player_6_healing"	"short"
		"player_6_lifetime"	"short"
		"player_6_kills"	"short"
	}
	
	"pve_win_panel"		
	{
		"panel_style"		"byte"		// for client to determine layout		
		"winning_team"		"byte"		
		"winreason"		"byte"		// the reason the team won
	}
	
	"air_dash"
	{
		"player"	"byte"
	}
	
	"landed"
	{
		"player"	"byte"
	}
	
	"player_damage_dodged"
	{
		"damage"	"short"
	}
	
	"player_stunned"
	{
		"stunner"	"short"
		"victim"	"short"
		"victim_capping"	"bool"
		"big_stun"	"bool"
	}
	
	"scout_grand_slam"
	{
		"scout_id"	"short"
		"target_id"	"short"
	}
	
	"scout_slamdoll_landed"
	{
		"target_index" "short"
		"x"	"float"
		"y"	"float"
		"z"	"float"
	}

	"scout_slamdoll_landed"
	{
		"target_index" "short"
		"x"	"float"
		"y"	"float"
		"z"	"float"
	}

	"arrow_impact"
	{
		"attachedEntity" "short"
		"shooter" "short"
		"boneIndexAttached" "short"
		"bonePositionX" "float"
		"bonePositionY" "float"
		"bonePositionZ" "float"
		"boneAnglesX" "float"
		"boneAnglesY" "float"
		"boneAnglesZ" "float"
	}
	
	"player_jarated"			// sent when a player is jarated, only to the two players involved
	{
		"thrower_entindex"	"byte"		// entindex of the player who threw the jarate
		"victim_entindex"	"byte"		// entindex of the player receiving it
	}
	"player_jarated_fade"			// sent when a player is jarated, only to the two players involved
	{
		"thrower_entindex"	"byte"		// entindex of the player who threw the jarate
		"victim_entindex"	"byte"		// entindex of the player receiving it
	}
	"player_shield_blocked"			// sent when a player is jarated, only to the two players involved
	{
		"attacker_entindex"	"byte"		// entindex of the player who threw the jarate
		"blocker_entindex"	"byte"		// entindex of the player receiving it
	}
	"player_pinned"
	{
		"pinned"	"byte"
	}
	"player_healedbymedic"
	{
		"medic"		"byte"
	}
	
	"player_spawn"
	{
		"userid"	"short"		// user ID who spawned
		"team"		"short"		// team they spawned on
		"class"		"short"		// class they spawned as
	}	
	
	"player_sapped_object"
	{
		"userid"	"short"		// user ID of the spy
		"ownerid"	"short"		// user ID of the building owner
		"object"	"byte"
		"sapperid"	"short"		// index of the sapper
	}
	
	"item_found"
	{
		"player"		"byte"		// entindex of the player
		"quality"		"byte"		// quality of the item
		"method"		"byte"		// method by which we acquired the item
		"itemdef"		"long"		// the item definition index
	}

	"show_annotation"
	{
		"worldPosX" "float"
		"worldPosY" "float"
		"worldPosZ" "float"
		"worldNormalX" "float"
		"worldNormalY" "float"
		"worldNormalZ" "float"
		"id" "long"
		"text"		"string"	// name (unlocalized)
		"lifetime"	"float"
		"visibilityBitfield"	"long" // bitfield of the players that can see this
		"follow_entindex"	"long" // if this is set, follow this entity
		"show_distance"		"bool"
		"play_sound"		"string"
		"show_effect"		"bool"
	}

	"hide_annotation"
	{
		"id" "long"
	}
	
	"post_inventory_application"	// sent when a player gets a whole new set of items
	{
		"userid"	"short"
	}
	
	"controlpoint_unlock_updated"
	{
		"index"	"short"		// index of the cap being updated
		"time"	"float"		// time
	}
	
	"deploy_buff_banner"
	{
		"buff_type"		"byte"		// type of buff (skin index)
		"buff_owner"	"short"		// user ID of the person who gets the banner
	}
	
	"player_buff"
	{
		"userid"		"short"   	// user ID of the player the buff is being applied to
		"buff_owner"	"short"		// user ID of the player with the banner
		"buff_type"		"byte"		// type of buff
	}
	
	"medic_death"
	{
		"userid"	"short"   	// user ID who died				
		"attacker"	"short"	 	// user ID who killed
		"healing"	"short"		// amount healed in this life
		"charged"	"bool"		// had a full ubercharge?
	}
	
	"overtime_nag"
	{
	}
	
	"teams_changed"
	{
	}
	
	"halloween_pumpkin_grab"
	{
		"userid"	"short"
	}

	"rocket_jump"
	{
		"userid"	"short"
		"playsound"	"bool"
	}
	
	"rocket_jump_landed"
	{
		"userid"	"short"
	}
	
	"sticky_jump"
	{
		"userid"	"short"	
		"playsound"	"bool"
	}
	
	"sticky_jump_landed"
	{
		"userid"	"short"	
	}

	"medic_defended"
	{
		"userid"	"short"	
		"medic"		"short"	
	}

	"localplayer_healed"
	{
		"amount"	"short"
	}
	
	"player_destroyed_pipebomb"
	{
		"userid"	"short"	
	}
	
	"object_deflected"
	{
		"userid"	"short"		// player who deflected the object
		"ownerid"	"short"		// owner of the object
		"weaponid"	"short"		// weapon id (0 means the player in ownerid was pushed)
		"object_entindex" "byte"	// entindex of the object that got deflected
	}
	
	"player_mvp"
	{
		"player"	"short"
	}
	
	"raid_spawn_mob"
	{
	}
	
	"raid_spawn_squad"
	{
	}
	
	"nav_blocked"
	{
		"area"		"long"
		"blocked"	"bool"
	}
	
	"path_track_passed"
	{
		"index"	"short"		// index of the node being passed
	}
	
	"num_cappers_changed"
	{
		"index"		"short"		// index of the trigger
		"count"		"byte"		// number of cappers (-1 for blocked)
	}
	
	"player_regenerate"
	{
	}
	
	"update_status_item"
	{
		"index"		"byte"
		"object"	"byte"
	}
	
	"stats_resetround"
	{
	}
	
	"achievement_earned_local"
	{
		"achievement"	"short"
	}
	
	"player_healed"
	{
		"patient"	"short"
		"healer"	"short"
		"amount"	"short"
	}
	
	"item_pickup"
	{
		"userid"	"short"
		"item"		"string"
	}
	
	"duel_status"
	{
		"killer"			"short"
		"score_type"		"short"	
		"initiator"			"short"
		"target"			"short"
		"initiator_score"	"short"
		"target_score"		"short"
	}
	
	// clone of "player_death"
	"fish_notice"
	{
		"userid"	"short"   	// user ID who died				
		"victim_entindex"	"long"
		"inflictor_entindex"	"long"	// ent index of inflictor (a sentry, for example)
		"attacker"	"short"	 	// user ID who killed
		"weapon"	"string" 	// weapon name killer used 
		"weaponid"	"short"		// ID of weapon killed used
		"damagebits"	"long"		// bits of type of damage
		"customkill"	"short"		// type of custom kill
		"assister"	"short"		// user ID of assister
		"weapon_logclassname"	"string" 	// weapon name that should be printed on the log
		"stun_flags"	"short"	// victim's stun flags at the moment of death
		"death_flags"	"short" //death flags.
		"silent_kill"	"bool"
		"assister_fallback"	"string"	// contains a string to use if "assister" is -1
	}
	
	// clone of "fish_notice" (...clone of "player_death")
	"fish_notice__arm"
	{
		"userid"	"short"   	// user ID who died				
		"victim_entindex"	"long"
		"inflictor_entindex"	"long"	// ent index of inflictor (a sentry, for example)
		"attacker"	"short"	 	// user ID who killed
		"weapon"	"string" 	// weapon name killer used 
		"weaponid"	"short"		// ID of weapon killed used
		"damagebits"	"long"		// bits of type of damage
		"customkill"	"short"		// type of custom kill
		"assister"	"short"		// user ID of assister
		"weapon_logclassname"	"string" 	// weapon name that should be printed on the log
		"stun_flags"	"short"	// victim's stun flags at the moment of death
		"death_flags"	"short" //death flags.
		"silent_kill"	"bool"
		"assister_fallback"	"string"	// contains a string to use if "assister" is -1
	}
	
	"pumpkin_lord_summoned"
	{
	}

	"pumpkin_lord_killed"
	{
	}
	
	"eyeball_boss_summoned"
	{
		"level" "short"
	}

	"eyeball_boss_stunned"
	{
		"level" "short"
		"player_entindex"	"byte"
	}
	
	"eyeball_boss_killed"
	{
		"level" "short"
	}

	"eyeball_boss_killer"
	{
		"level" "short"
		"player_entindex"	"byte"
	}

	"eyeball_boss_escape_imminent"
	{
		"level" "short"
		"time_remaining"	"byte"
	}
	
	"eyeball_boss_escaped"
	{
		"level" "short"
	}	
	
	"npc_hurt"
	{
		"entindex" "short"
		"health" "short"
		"attacker_player" "short"
		"weaponid" "short"
		"damageamount" "short"
		"crit" "bool"
	}
	
	"controlpoint_timer_updated"
	{
		"index"	"short"		// index of the cap being updated
		"time"	"float"		// time
	}

	"player_highfive_start"
	{
		"entindex"		"byte"
	}
	"player_highfive_cancel"
	{
		"entindex"		"byte"
	}
	"player_highfive_success"
	{
		"initiator_entindex"	"byte"
		"partner_entindex"	"byte"
	}

	"player_bonuspoints"
	{
		"points"		"short"	
		"player_entindex"	"short"
		"source_entindex"	"short"
	}

	"player_upgraded"
	{
	}

	"player_buyback"
	{
		"player"		"short"
		"cost"			"short"
	}

	"player_used_powerup_bottle"
	{
		"player"		"short"
		"type"			"short"
		"time"			"float"	
	}

	"christmas_gift_grab"
	{
		"userid"	"short"
	}
	
	"player_killed_achievement_zone"
	{
		"attacker"	"short"		// entindex of the attacker
		"victim"	"short"		// entindex of the victim
		"zone_id"	"short"		// type of area (0 for general, 1 for capture zone)
	}
	"party_updated"
	{
	}
	"lobby_updated"
	{
	}
	
	"mvm_mission_update"
	{
		"class"		"short"
		"count"		"short"
	}

	"recalculate_holidays"
	{
	}
	
	"player_currency_changed"
	{
		"currency"		"short"
	}

	"doomsday_rocket_open"
	{
		"team"		"byte"		// which team opened the rocket
	}

	"remove_nemesis_relationships"
	{
		"player"		"short"		// entindex of the player who should reset
	}

	"mvm_creditbonus_wave"
	{
	}

	"mvm_creditbonus_all"
	{
	}

	"mvm_creditbonus_all_advanced"
	{
	}

	"mvm_quick_sentry_upgrade"
	{
		"player"		"short"		// entindex of the player
	}

	"mvm_tank_destroyed_by_players"
	{
	}

	"mvm_kill_robot_delivering_bomb"
	{
		"player"		"short"		// entindex of the player
	}

	"mvm_pickup_currency"
	{
		"player"		"short"		// entindex of the player
		"currency"		"short"
	}

	"mvm_bomb_carrier_killed"
	{
		"level"			"short"		// upgrade level of the carrier
	}

	"mvm_sentrybuster_detonate"
	{
		"player"		"short"		// entindex of the target player
		"det_x"			"float"		// origin of the sentry buster
		"det_y"			"float"
		"det_z"			"float"
	}

	"mvm_scout_marked_for_death"
	{
		"player"		"short"		// entindex of the player
	}

	"mvm_medic_powerup_shared"
	{
		"player"		"short"		// entindex of the player
	}

	"mvm_begin_wave"
	{
		"wave_index"	"short"
		"max_waves"		"short"
		"advanced"		"short"		
	}
	
	"mvm_wave_complete"
	{
	}

	"mvm_mission_complete"
	{
		"mission"		"string"
	}

	"mvm_bomb_reset_by_player"
	{
		"player"		"short"
	}

	"mvm_bomb_alarm_triggered"
	{
	}

	"mvm_bomb_deploy_reset_by_player"
	{
		"player"		"short"
	}
}



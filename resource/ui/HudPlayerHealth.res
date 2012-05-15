//based on commhud, inspired by oxide

"Resource/UI/HudPlayerHealth.res"
{	
	// player health data
	"HudPlayerHealth"
	{
		"ControlName"	"EditablePanel"
		"fieldName"		"HudPlayerHealth"
		"xpos"			"c-368"//"c-368"	
		"ypos"			"r107"//"r114"	
		"zpos"			"2"
		"wide"			"400"//"400"
		"tall"			"120"
		"visible"		"1"
		"enabled"		"1"	
		"HealthBonusPosAdj"		"56"
		"HealthDeathWarning"	"0.55"
		"HealthDeathWarningColor"	"HUDDeathWarning"
	}	
	
	//health bar filling
	"PlayerStatusHealthImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusHealthImage"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"zpos"			"4"

		
		"xpos"			"90"
		"ypos"			"36"		
		"wide"			"44"
		"tall"			"44"
	

	}		
	
	//black background
	"PlayerStatusHealthImageBG"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusHealthImageBG"
		"visible"		"1"
		"enabled"		"1"
		"image"			"../hud/health_bg"
		"scaleImage"	"1"
		"zpos"			"3"

		
		"xpos"			"88"
		"ypos"			"34"
		"wide"			"48"
		"tall"			"48"		
	
	}	
	
	"PlayerStatusHealthBonusImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusHealthBonusImage"
		"xpos"			"177"	
		"ypos"			"22"//"29"	
		"zpos"			"-2"
		"wide"			"57"	
		"tall"			"57"	
		"visible"		"0"
		"enabled"		"1"
		"image"			"../hud/health_over_bg"
		"scaleImage"	"1"	
	}
	"PlayerStatusHealthValuePovo"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"PlayerStatusHealthValuePovo"
		"xpos"			"126"
		"ypos"			"15"//"22"
		"zpos"			"5"
		"wide"			"160"
		"tall"			"70"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%Health%"
		"textAlignment"	"center"	
		"font"			"HudFontHuge"
		"fgcolor"		"White"
	}	
	"PlayerStatusHealthValueShadowPovo"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"PlayerStatusHealthValueShadowPovo"
		"xpos"			"128"
		"ypos"			"17"//"24"
		"zpos"			"4"
		"wide"			"160"
		"tall"			"70"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%Health%"
		"textAlignment"	"center"	
		"font"			"HudFontHuge"
		"fgcolor"		"Black"
	}		
	
	"VerticalTeamColorThwartski"
	{
		"ControlName"		"CTFImagePanel"
		"fieldName"		"VerticalTeamColorThwartski"
		"xpos"			"100"
		"ypos"			"31"
		"zpos"			"-1"
		"wide"			"24"
		"tall"	 		"54"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"image"			"../hud/color_panel_brown"
		"scaleImage"		"1"
		"teambg_1"		"../hud/color_panel_brown"
		"teambg_2"		"../hud/color_panel_red"
		"teambg_3"		"../hud/color_panel_blu"
		
		"src_corner_height"		"40"				// pixels inside the image
		"src_corner_width"		"40"			
		"draw_corner_width"		"0"				// screen size of the corners ( and sides ), proportional
		"draw_corner_height" 		"0"	
	}
	
	"VerticalBlackBGThwartski"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"BlackCartBGThwartski"	
		"xpos"			"100"
		"ypos"			"31"
		"zpos"			"-2"
		"wide"			"24"
		"tall"	 		"54"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		""
		"scaleImage"	"1"
		"image"			""
		"fillcolor"		"0 0 0 255"
	}
	
	"HorizontalTeamColorThwartski"
	{
		"ControlName"		"CTFImagePanel"
		"fieldName"		"HorizontalTeamColorThwartski"
		"xpos"			"85"
		"ypos"			"46"
		"zpos"			"-3"
		"wide"			"54"
		"tall"	 		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"image"			"../hud/color_panel_brown"
		"scaleImage"		"1"
		"teambg_1"		"../hud/color_panel_brown"
		"teambg_2"		"../hud/color_panel_red"
		"teambg_3"		"../hud/color_panel_blu"
		
		"src_corner_height"		"40"				// pixels inside the image
		"src_corner_width"		"40"			
		"draw_corner_width"		"0"				// screen size of the corners ( and sides ), proportional
		"draw_corner_height" 		"0"	
	}

	"HorizontalBlackBGThwartski"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"HorizontalBlackBGThwartski"	
		"xpos"			"85"
		"ypos"			"46"
		"zpos"			"-4"
		"wide"			"54"
		"tall"	 		"24"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		""
		"scaleImage"	"1"
		"image"			""
		"fillcolor"		"0 0 0 255"
	}
	
	"PlayerStatusBleedImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusBleedImage"
		"xpos"			"96"//"104"
		"ypos"			"0"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/bleed_drop"
		"fgcolor"		"TanDark"
	}	
	"PlayerStatusMilkImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusMilkImage"
		"xpos"			"96"//"104"
		"ypos"			"0"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/bleed_drop"
		"fgcolor"		"TanDark"
	}
	"PlayerStatusMarkedForDeathImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusMarkedForDeathImage"
		"xpos"			"96"//"104"
		"ypos"			"0"
		"zpos"			"7"
		"wide"			"32"
		"tall"			"32"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"image"			"../vgui/marked_for_death"
		"fgcolor"		"TanDark"
	}
}
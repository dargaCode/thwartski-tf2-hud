//based on toasty hud

"Resource/UI/winpanel.res"
{
	"TeamScoresPanel"
	{
		"ControlName"		"EditablePanel"
		"fieldName"		"TeamScoresPanel"
		"xpos"			"-44"
		"ypos"			"16"
		"zpos"			"6"
		"wide"			"480"
		"tall"			"70"
		"visible"		"1"

		//deprecated
		"BlueScoreBG"
		{
			"ControlName"		"ImagePanel"
			"fieldName"		"BlueScoreBG"
			"xpos"			"-3"
			"ypos"			"10"
			"zpos"			"-1"
			"wide"			"241"
			"tall"			"55"
			"autoResize"	"1"
			"pinCorner"		"0"
			"visible"		"0"
			"enabled"		"0"
			"image"			"../hud/winpanel_blue_bg_team"
			"scaleImage"		"1"
			"src_corner_height"		"0"				// pixels inside the image
			"src_corner_width"		"0"			
			"draw_corner_width"		"0"				// screen size of the corners proportional
			"draw_corner_height" 		"0"
		}
		
		//deprecated
		"RedScoreBG"
		{
			"ControlName"		"ImagePanel"
			"fieldName"		"RedScoreBG"
			"xpos"			"130"
			"ypos"			"10"
			"zpos"			"-1"
			"wide"			"242"
			"tall"			"55"
			"autoResize"	"1"
			"pinCorner"		"0"
			"visible"		"0"
			"enabled"		"0"
			"image"			"../hud/winpanel_red_bg_team"
			"scaleImage"		"1"
			"src_corner_height"		"0"				// pixels inside the image
			"src_corner_width"		"0"			
			"draw_corner_width"		"0"				// screen size of the corners proportional
			"draw_corner_height" 		"0"
		}
		
		"TopBlackBGThwartski"
		{
			"ControlName"		"ImagePanel"
			"fieldName"		"TopBlackBGThwartski"
			"xpos"			"59"
			"ypos"			"34"
			"zpos"			"-4"
			"wide"			"260"
			"tall"			"24"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"	"0"	
			"fillcolor"		"54 51 52 255"
			"PaintBackgroundType"	"0"
		}
		"BlueScoreBGThwartski"
		{
			"ControlName"		"CTFImagePanel"
			"fieldName"		"BlueScoreBGThwartski"
			"xpos"			"59"
			"ypos"			"34"
			"zpos"			"-1"
			"wide"			"131"
			"tall"			"24"
			"autoResize"	"1"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"image"			"../hud/winpanel_blue_bg_team"
			"scaleImage"		"1"
			"src_corner_height"		"40"				// pixels inside the image
			"src_corner_width"		"40"			
			"draw_corner_width"		"0"				// screen size of the corners proportional
			"draw_corner_height" 		"0"
		}
		"RedScoreBGThwartkski"
		{
			"ControlName"		"CTFImagePanel"
			"fieldName"		"RedScoreBGThwartski"
			"xpos"			"189"
			"ypos"			"34"
			"zpos"			"-1"
			"wide"			"130"
			"tall"			"24"
			"autoResize"	"1"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"image"			"../hud/winpanel_red_bg_team"
			"scaleImage"		"1"
			"src_corner_height"		"40"				// pixels inside the image
			"src_corner_width"		"40"			
			"draw_corner_width"		"0"				// screen size of the corners proportional
			"draw_corner_height" 		"0"
		}

		"BlueTeamLabel"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"BlueTeamLabel"
			"font"			"ScoreboardTeamName"
			"labelText"		"%blueteamname%"
			"textAlignment"		"west"
			"xpos"			"69"
			"ypos"			"27"
			"zpos"			"3"
			"wide"			"100"
			"tall"			"40"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"fgcolor"		"White"
		}
		"BlueTeamLabelShadow"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"BlueTeamLabelShadow"
			"font"			"ScoreboardTeamName"
			"labelText"		"%blueteamname%"
			"textAlignment"		"west"
			"xpos"			"70"
			"ypos"			"28"
			"zpos"			"2"
			"wide"			"100"
			"tall"			"40"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"0"
			"enabled"		"1"
			"fgcolor"		"Black"
		}				
		"BlueTeamScore"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"BlueTeamScore"
			"font"			"HudFontBig"//"ScoreboardTeamScore"
			"labelText"		"%blueteamscore%"
			"textAlignment"		"east"
			"xpos"			"102"
			"ypos"			"18"
			"zpos"			"5"
			"wide"			"80"
			"tall"			"50"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"fgcolor"		"White"
		}
		"BlueTeamScoreDropshadow"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"BlueTeamScoreDropshadow"
			"font"			"HudFontBig"//"ScoreboardTeamScore"
			"fgcolor"		"Black"
			"labelText"		"%blueteamscore%"
			"textAlignment"		"east"
			"xpos"			"103"
			"ypos"			"19"
			"zpos"			"4"
			"wide"			"80"
			"tall"			"50"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
		}							
		"RedTeamLabel"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"RedTeamLabel"
			"font"			"ScoreboardTeamName"
			"labelText"		"%redteamname%"
			"textAlignment"		"east"
			"xpos"			"204"
			"ypos"			"27"
			"zpos"			"3"
			"wide"			"107"
			"tall"			"40"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"fgcolor"		"White"
		}			
		"RedTeamLabelShadow"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"RedTeamLabelShadow"
			"font"			"ScoreboardTeamName"
			"labelText"		"%redteamname%"
			"textAlignment"		"east"
			"xpos"			"205"
			"ypos"			"28"
			"zpos"			"2"
			"wide"			"107"
			"tall"			"40"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"0"
			"enabled"		"1"
			"fgcolor"		"Black"
		}				
		"RedTeamScore"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"RedTeamScore"
			"font"			"HudFontBig"//"ScoreboardTeamScore"
			"labelText"		"%redteamscore%"
			"textAlignment"		"west"
			"xpos"			"198"
			"ypos"			"18"
			"zpos"			"5"
			"wide"			"80"
			"tall"			"50"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"fgcolor"		"White"
		}
		"RedTeamScoreDropshadow"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"RedTeamScoreDropshadow"
			"font"			"HudFontBig"//"ScoreboardTeamScore"
			"fgcolor"		"Black"
			"labelText"		"%redteamscore%"
			"textAlignment"		"west"
			"xpos"			"199"
			"ypos"			"19"
			"zpos"			"4"
			"wide"			"80"
			"tall"			"50"
			"autoResize"	"0"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
		}
	}
	"WinPanelBG"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"WinPanelBG"
		"xpos"			"-102"
		"ypos"			"50"
		"zpos"			"0"
		"wide"			"496"
		"tall"			"174"
		"visible"		"0"
		"enabled"		"1"
		"scaleImage"	"1"	

	}
	"WinningTeamLabel"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"WinningTeamLabel"
		"font"			"ScoreboardMediumSmall"//"ScoreboardTeamName"
		"xpos"			"0"
		"ypos"			"81"//"72"
		"zpos"			"4"
		"wide"			"292"
		"tall"			"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%WinningTeamLabel%"
		"textAlignment"		"North"
		"dulltext"		"0"
		"brighttext"		"0"
		"fgcolor"		"White"
	}
	"WinningTeamLabelDropshadow"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"WinningTeamLabelDropshadow"
		"font"			"ScoreboardMediumSmall"//"ScoreboardTeamName"
		"fgcolor"		"black"
		"xpos"			"1"
		"ypos"			"82"//"73"
		"zpos"			"1"
		"wide"			"292"
		"tall"			"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%WinningTeamLabel%"
		"textAlignment"		"North"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"AdvancingTeamLabel"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"AdvancingTeamLabel"
		"font"			"ScoreboardMediumSmall"
		"xpos"			"0"
		"ypos"			"81"//"72"
		"zpos"			"3"
		"wide"			"292"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%AdvancingTeamLabel%"
		"textAlignment"		"North"
		"dulltext"		"0"
		"brighttext"		"0"
		"fgcolor"		"White"
	}
	"AdvancingTeamLabelDropshadow"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"AdvancingTeamLabelDropshadow"
		"font"			"ScoreboardMediumSmall"
		"fgcolor"		"black"
		"xpos"			"1"
		"ypos"			"82"//"73"
		"zpos"			"1"
		"wide"			"292"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%AdvancingTeamLabel%"
		"textAlignment"		"North"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"WinReasonLabel"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"WinReasonLabel"
		"font"			"ScoreboardVerySmall"
		"xpos"			"0"
		"ypos"			"89"
		"zpos"			"3"
		"wide"			"292"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"0"
		"labelText"		"%WinReasonLabel%"
		"textAlignment"		"center"
		"dulltext"		"0"
		"brighttext"		"0"
		"fgcolor"		"White"
	}
	"DetailsLabel"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"DetailsLabel"
		"font"			"ScoreboardVerySmall"
		"xpos"			"12"
		"ypos"			"101"
		"zpos"			"3"
		"wide"			"268"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"0"
		"labelText"		"%DetailsLabel%"
		"textAlignment"		"center"
		"dulltext"		"0"
		"brighttext"		"0"
		"fgcolor"		"White"
	}
	
	"ShadedBar"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"ShadedBar"
		"xpos"			"15"
		"ypos"			"74"//"71"
		"zpos"			"-2"
		"wide"			"260"//"280"
		"tall"			"84"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"	
		"fillcolor"		"54 51 52 255"
		"PaintBackgroundType"	"0"
	}
	
	"TopPlayersLabel"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"TopPlayerLabel"
		"font"			"ScoreboardVerySmall"
		"xpos"			"15"
		"ypos"			"84"
		"zpos"			"3"
		"wide"			"200"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"labelText"		"%TopPlayersLabel%"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"fgcolor"		"White"
	}
	"PointsThisRoundLabel"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"PointsThisRoundLabel"
		"font"			"ScoreboardVerySmall"
		"xpos"			"136"
		"ypos"			"84"
		"zpos"			"3"
		"wide"			"140"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"labelText"		"#Winpanel_PointsThisRound"
		"textAlignment"		"east"
		"dulltext"		"0"
		"brighttext"		"0"
		"fgcolor"		"White"
	}
	"HorizontalLine"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"HorizontalLine"
		"xpos"			"25"
		"ypos"			"101"
		"zpos"			"3"
		"wide"			"240"
		"tall"			"1"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"	
		"fillcolor"		"255 255 255 255"
		"PaintBackgroundType"	"0"
	}
	"Player1Avatar"		[$WIN32]
	{
		"ControlName"		"CAvatarImagePanel"
		"fieldName"		"Player1Avatar"
		"xpos"			"36"//"22"
		"ypos"			"105"
		"zpos"			"3"
		"wide"			"14"
		"tall"			"14"
		"visible"		"1"
		"enabled"		"1"
		"image"			""
		"scaleImage"		"1"	
		"color_outline"		"52 48 45 255"
	}
	"Player1Name"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"Player1Name"
		"xpos"			"62"//"50"	[$WIN32]
		"ypos"			"102"
		"zpos"			"3"
		"wide"			"126"	[$WIN32]
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"Player1Class"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"Player1Class"
		"xpos"			"190"//"180"
		"ypos"			"102"
		"zpos"			"3"
		"wide"			"200"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"Player1Score"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"Player1Score"
		"xpos"			"226"//"240"
		"ypos"			"102"
		"zpos"			"3"
		"wide"			"30"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"east"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"Player2Avatar"		[$WIN32]
	{
		"ControlName"		"CAvatarImagePanel"
		"fieldName"		"Player2Avatar"
		"xpos"			"36"//"22"
		"ypos"			"122"//"127"
		"zpos"			"3"
		"wide"			"14"
		"tall"			"14"
		"visible"		"1"
		"enabled"		"1"
		"image"			""
		"scaleImage"		"1"	
		"color_outline"		"52 48 45 255"
	}
	"Player2Name"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"Player2Name"
		"xpos"			"62"//"50"	[$WIN32]
		"ypos"			"119" //"124"
		"zpos"			"3"
		"wide"			"126"	[$WIN32]
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"Player2Class"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"Player2Class"
		"xpos"			"190"//"180"
		"ypos"			"119" //"124"
		"zpos"			"3"
		"wide"			"200"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"Player2Score"
	{	
		"ControlName"	"CExLabel"
		"fieldName"		"Player2Score"
		"xpos"			"226"//"240"
		"ypos"			"119" //"124"
		"zpos"			"3"
		"wide"			"30"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"east"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"Player3Avatar"		[$WIN32]
	{
		"ControlName"		"CAvatarImagePanel"
		"fieldName"		"Player3Avatar"
		"xpos"			"36"//"22"
		"ypos"			"139" //"149"
		"zpos"			"3"
		"wide"			"14"
		"tall"			"14"
		"visible"		"1"
		"enabled"		"1"
		"image"			""
		"scaleImage"		"1"	
		"color_outline"		"52 48 45 255"
	}
	"Player3Name"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"Player3Name"
		"xpos"			"62"//"50"	[$WIN32]
		"ypos"			"136"//"146"
		"zpos"			"3"
		"wide"			"126"	[$WIN32]
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"Player3Class"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"Player3Class"
		"xpos"			"190"//"180"
		"ypos"			"136"//"146"
		"zpos"			"3"
		"wide"			"200"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
	}
	"Player3Score"
	{	
		"ControlName"		"CExLabel"
		"fieldName"		"Player3Score"
		"xpos"			"226"//"240"
		"ypos"			"136"//"146"
		"zpos"			"3"
		"wide"			"30"
		"tall"			"20"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"		"east"
		"dulltext"		"0"
		"brighttext"		"0"
	}
}

"Resource/UI/HudStopWatch.res"
{
	"HudStopWatchBG"
	{
		"ControlName"		"ScalableImagePanel"
		"fieldName"		"HudStopWatchBG"
		"xpos"			"0"
		"ypos"			"5"
		"zpos"			"-1"
		"wide"			"120"
		"tall"			"28"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"image"			"../HUD/tournament_panel_brown"


		"src_corner_height"	 "45"	
		"src_corner_width"	 "45"
		
		"draw_corner_width"	 "0"		
		"draw_corner_height" "0"	
	}
	
	"StopWatchBGThwartski"
	{
		"ControlName"		"Imagepanel"
		"fieldName"			"StopWatchBGThwartski"
		"xpos"			"45"
		"ypos"			"5"
		"zpos"			"-2"
		"wide"			"76"
		"tall"			"28"
		"visible"			"1"
		"enabled"			"1"
		"scaleImage"		"1"	
		"fillcolor"			"0 0 0 255"
		
		"src_corner_height"		"90"//"23"
		"src_corner_width"		"90"//"23"
		
		"draw_corner_width"		"0"//"6"
		"draw_corner_height" 	"0"//"6"	
	}
	

	"StopWatchImageCaptureTime"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"StopWatchImageCaptureTime"
		"xpos"			"62"
		"ypos"			"10"
		"zpos"			"2"
		"wide"			"17"
		"tall"			"17"
		"visible"		"1"
		"enabled"		"1"
		"image"			"../hud/ico_time_10"
		"scaleImage"		"1"	
		//"teambg_2"		"../hud/objectives_timepanel_red_bg"
		//"teambg_3"		"../hud/objectives_timepanel_blue_bg"		
	}

	"ObjectiveStatusTimePanel"
	{
		"ControlName"			"EditablePanel"
		"fieldName"			"ObjectiveStatusTimePanel"
		"xpos"				"60"
		"ypos"				"4"
		"zpos"				"1"
		"wide"				"60"
		"tall"				"30"
		"visible"			"0"
		"enabled"			"1"

		"TimePanelValue"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"TimePanelValue"
			"font"			"HudFontMediumSmall"
			"fgcolor"		"TanLight"
			"xpos"			"16"
			"ypos"			"2"
			"zpos"			"3"
			"wide"			"45"
			"tall"			"32"
			"visible"		"1"
			"enabled"		"1"
			"textAlignment"		"center"
		}	
	}

	"StopWatchScoreToBeat"
	{
		"ControlName"		"CExLabel"
		"fieldName"		"StopWatchScoreToBeat"
		"font"			"HudFontMediumBold"
		"labelText"		"%scoretobeat%"
		"textAlignment"		"east"
		"xpos"			"-22"
		"ypos"			"5"
		"zpos"			"4"
		"wide"			"85"
		"tall"			"30"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
	}
	"StopWatchPointsLabel"
	{
		"ControlName"		"CExLabel"
		"fieldName"		"StopWatchPointsLabel"
		"font"			"HudFontSmallest"
		"labelText"		"%pointslabel%"
		"textAlignment"		"west"
		"xpos"			"47"
		"ypos"			"11"
		"zpos"			"4"
		"wide"			"0"
		"tall"			"0"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"wrap"			"0"
	}


	"StopWatchLabel"
	{
		"ControlName"		"CExLabel"
		"fieldName"		"StopWatchLabel"
		"font"			"DefaultVerySmall"
		"labelText"		"%stopwatchlabel%"
		"textAlignment"		"west"
		"xpos"			"79"
		"ypos"			"6"
		"zpos"			"4"
		"wide"			"45"
		"tall"			"30"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"wrap"			"1"
	}

	"HudStopWatchDescriptionBG"
	{
		"ControlName"		"ScalableImagePanel"
		"fieldName"		"HudStopWatchDescriptionBG"
		"xpos"			"0"
		"ypos"			"27"
		"zpos"			"-1"
		"wide"			"0"
		"tall"			"0"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"image"			"../hud/objectives_timepanel_suddendeath"


		"src_corner_height"	"45"				// pixels inside the image
		"src_corner_width"	"45"
		
		"draw_corner_width"	"0"				// screen size of the corners ( and sides ), proportional
		"draw_corner_height" 	"0"	
	}

	"StopWatchDescriptionLabel"
	{
		"ControlName"		"CExLabel"
		"fieldName"		"StopWatchDescriptionLabel"
		"font"			"ClockSubTextTiny"
		"labelText"		"%descriptionlabel%"
		"textAlignment"		"center"
		"xpos"			"0"
		"ypos"			"23"
		"zpos"			"4"
		"wide"			"0"
		"tall"			"0"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"wrap"			"0"
	}
}
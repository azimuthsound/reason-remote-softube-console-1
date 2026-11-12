--
-- Remote Codec for Softube's Console 1 controller
--    Dioxide
--        2021-06-24
--
-- Version 0.1.0

function remote_init(manufacturer, model)

	local items=
	{
	
--	INPUT		_____________________
--	Buttons
		{name="Preset",             			input="button",	output="value",	min=0,	max=1},
		{name="Filters to Compressor",	    	input="button",	output="value",	min=0,	max=1},
		{name="Phase Invert",            		input="button",	output="value",	min=0,	max=1},
--	Rotaries
		{name="Low Cut",            			input="value",	output="value",	min=0,	max=127},
		{name="High Cut",            			input="value",	output="value",	min=0,	max=127},
		{name="Input Gain",          		  	input="value",	output="value",	min=0,	max=127},
--	Meters
		{name="Peak Input Meter",            					output="value",	min=0,	max=127},
		{name="Peak Output Meter",            					output="value",	min=0,	max=127},



--	SHAPE		_____________________
--	Buttons
		{name="Gate On",            		 	input="button",	output="value",	min=0,	max=1},
		{name="Hard Gate",         		    	input="button",	output="value",	min=0,	max=1},
--	Rotaries
		{name="Gate",             				input="value",	output="value",	min=0,	max=127},
		{name="Sustain",           			  	input="value",	output="value",	min=0,	max=127},
		{name="Gate Release",      		       	input="value",	output="value",	min=0,	max=127},
		{name="Punch",             				input="value",	output="value",	min=0,	max=127},
--	Meters
		{name="Gate Gain Reduction",            				output="value",	min=0,	max=127},


--	EQUALIZER	_____________________
--	Buttons
		{name="EQ On",           			  	input="button",	output="value",	min=0,	max=1},
		{name="Low Shape",         		    	input="button",	min=0,	max=1},
		{name="High Shape",          		   	input="button",	min=0,	max=2},
--	Rotaries
		{name="High Gain",            		 	input="value",	output="value",	min=0,	max=127},
		{name="High Frequency",             	input="value",	output="value",	min=0,	max=127},
		{name="High Mid Gain",            	 	input="value",	output="value",	min=0,	max=127},
		{name="High Mid Frequency",            	input="value",	output="value",	min=0,	max=127},
		{name="High Mid Q",           		  	input="value",	output="value",	min=0,	max=127},
		{name="Low Mid Gain",           	  	input="value",	output="value",	min=0,	max=127},
		{name="Low Mid Frequency",             	input="value",	output="value",	min=0,	max=127},
		{name="Low Mid Q",          		   	input="value",	output="value",	min=0,	max=127},
		{name="Low Gain",           		  	input="value",	output="value",	min=0,	max=127},
		{name="Low Frequency",        	     	input="value",	output="value",	min=0,	max=127},


-- COMPRESSOR	_____________________
--	Buttons
		{name="Compressor On",         	  	  	input="button",	output="value",	min=0,	max=1},

--	Rotaries
		{name="Compressor Threshold",          	input="value",	output="value",	min=0,	max=127},
		{name="Compressor Release",             input="value",	output="value",	min=0,	max=127},
		{name="Compressor Ratio",             	input="value",	output="value",	min=0,	max=127},
		{name="Parallel Dry Wet",				input="value",	output="value",	min=0,	max=127},
		{name="Compressor Attack",				input="value",	output="value",	min=0,	max=127},
--	Meters
		{name="Compressor Gain Reduction",            			output="value",	min=0,	max=127},


--	OUTPUT		_____________________
--	Buttons
		{name="Mute",         	  			  	input="button",	output="value",	min=0,	max=1},
		{name="Solo",         	  			  	input="button",	output="value",	min=0,	max=1},
--	Rotaries
		{name="Volume",           			  	input="value",	output="value",	min=0,	max=127},
		{name="Pan",      		  	   		  	input="value",	output="value",	min=0,	max=127},
		{name="Drive",      	  	  	 	  	input="value",	output="value",	min=0,	max=127},
		{name="Character",         	    		input="value",	output="value",	min=0,	max=127},
--	Meters
		{name="Output Meter L",									output="value",	min=0,	max=127},
		{name="Output Meter R",									output="value",	min=0,	max=127},
		
		
--	TRACK		_____________________
--	Select Track Buttons
		{name="Select Track 1",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 2",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 3",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 4",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 5",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 6",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 7",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 8",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 9",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 10",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 11",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 12",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 13",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 14",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 15",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 16",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 17",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 18",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 19",             	input="button",	output="value",	min=0,	max=1},
		{name="Select Track 20",             	input="button",	output="value",	min=0,	max=1},
--	Track Buttons
		{name="Track Copy",   		         	input="button",	output="value",	min=0,	max=1},
		{name="Track Group",     		       	input="button",	output="value",	min=0,	max=1},
--	Page Buttons
		{name="Page Up",         		   	 	input="button",	min=0,	max=1},
		{name="Page Down",       		      	input="button",	min=0,	max=1},
--	Order		
		{name="Order",          			   	input="button",	min=0,	max=2},
--	External Sidechain
		{name="External Sidechain",				input="value",	min=0,	max=1},

	
--	DISPLAY		_____________________
		{name="Display On",						input="button",	output="value",	min=0,	max=1},
		{name="Display Mode",         		   	input="button",	output="value",	min=0,	max=1},



		
		
	}
	remote.define_items(items)

	local inputs=
	{
	
--	INPUT		_____________________
--	Buttons
		{pattern="b0 3A xx",     	name="Preset", value="1"},
		{pattern="b0 3D xx",     	name="Filters to Compressor", value="1"},
		{pattern="b0 6C xx",     	name="Phase Invert", value="1"},
--	Rotaries
		{pattern="b0 67 xx",     	name="Low Cut"},
		{pattern="b0 69 xx",     	name="High Cut"},
		{pattern="b0 6B xx",     	name="Input Gain"},


--	SHAPE		_____________________
--	Buttons
		{pattern="b0 35 xx",     	name="Gate On", value="1"},
		{pattern="b0 3B xx",     	name="Hard Gate", value="1"},
--	Rotaries
		{pattern="b0 36 xx",     	name="Gate"},
		{pattern="b0 37 xx",     	name="Sustain"},
		{pattern="b0 38 xx",     	name="Gate Release"},
		{pattern="b0 39 xx",     	name="Punch"},


--	EQUALIZER	_____________________
--	Buttons
		{pattern="b0 50 xx",     	name="EQ On", value="1"},
		{pattern="b0 5D xx",     	name="Low Shape", value="1"},
		{pattern="b0 41 xx",     	name="High Shape", value="1"},
--	Rotaries
		{pattern="b0 52 xx",     	name="High Gain"},
		{pattern="b0 53 xx",     	name="High Frequency"},
		{pattern="b0 55 xx",     	name="High Mid Gain"},
		{pattern="b0 56 xx",     	name="High Mid Frequency"},
		{pattern="b0 57 xx",     	name="High Mid Q"},
		{pattern="b0 58 xx",     	name="Low Mid Gain"},
		{pattern="b0 59 xx",     	name="Low Mid Frequency"},
		{pattern="b0 5A xx",     	name="Low Mid Q"},
		{pattern="b0 5B xx",     	name="Low Gain"},
		{pattern="b0 5C xx",     	name="Low Frequency"},


-- COMPRESSOR	_____________________
--	Buttons
		{pattern="b0 2E xx",     	name="Compressor On", value="1"},
--	Rotaries
		{pattern="b0 2F xx",     	name="Compressor Threshold"},
		{pattern="b0 30 xx",     	name="Compressor Release"},
		{pattern="b0 31 xx",     	name="Compressor Ratio"},
		{pattern="b0 32 xx",     	name="Parallel Dry Wet"},
		{pattern="b0 33 xx",     	name="Compressor Attack"},

	
--	OUTPUT		_____________________
--	Buttons
		{pattern="b0 0C xx",     	name="Mute", value="1"},
		{pattern="b0 0D xx",     	name="Solo", value="1"},
--	Rotaries
		{pattern="b0 07 xx",     	name="Volume"},
		{pattern="b0 0A xx",     	name="Pan"},
		{pattern="b0 0F xx",     	name="Drive"},
		{pattern="b0 12 xx",     	name="Character"},

	
	
--	TRACK		_____________________
--	Select Track Buttons
		{pattern="b0 15 xx",     	name="Select Track 1", value="1"},
		{pattern="b0 16 xx",     	name="Select Track 2", value="1"},
		{pattern="b0 17 xx",     	name="Select Track 3", value="1"},
		{pattern="b0 18 xx",     	name="Select Track 4", value="1"},
		{pattern="b0 19 xx",     	name="Select Track 5", value="1"},
		{pattern="b0 1A xx",     	name="Select Track 6", value="1"},
		{pattern="b0 1B xx",     	name="Select Track 7", value="1"},
		{pattern="b0 1C xx",     	name="Select Track 8", value="1"},
		{pattern="b0 1D xx",     	name="Select Track 9", value="1"},
		{pattern="b0 1E xx",     	name="Select Track 10", value="1"},
		{pattern="b0 1F xx",     	name="Select Track 11", value="1"},
		{pattern="b0 20 xx",     	name="Select Track 12", value="1"},
		{pattern="b0 21 xx",     	name="Select Track 13", value="1"},
		{pattern="b0 22 xx",     	name="Select Track 14", value="1"},
		{pattern="b0 23 xx",     	name="Select Track 15", value="1"},
		{pattern="b0 24 xx",     	name="Select Track 16", value="1"},
		{pattern="b0 25 xx",     	name="Select Track 17", value="1"},
		{pattern="b0 26 xx",     	name="Select Track 18", value="1"},
		{pattern="b0 27 xx",     	name="Select Track 19", value="1"},
		{pattern="b0 28 xx",     	name="Select Track 20", value="1"},
--	Track Buttons
		{pattern="b0 78 xx",     	name="Track Copy", value="1"},
		{pattern="b0 7B xx",     	name="Track Group", value="1"},
--	Page Buttons
		{pattern="b0 60 xx",     	name="Page Up", value="1"},
		{pattern="b0 61 xx",     	name="Page Down", value="1"},
--	Order		
		{pattern="b0 0E xx",     	name="Order", value="x"},
--	External Sidechain
		{pattern="b0 11 xx",     	name="External Sidechain", value="x"},
		
		
--	DISPLAY		_____________________
		{pattern="b0 66 xx",     	name="Display On", value="1"},
		{pattern="b0 68 xx",     	name="Display Mode", value="1"},
	}
	remote.define_auto_inputs(inputs)

	local outputs={


--	INPUT		_____________________
--	Buttons
		{name="Preset"						,	pattern="b0 3A xx"},
		{name="Filters to Compressor"		,	pattern="b0 3D xx"},
		{name="Phase Invert"				,	pattern="b0 6C xx"},
--	Rotaries
		{name="Low Cut"						,	pattern="b0 67 xx"},
		{name="High Cut"					,	pattern="b0 69 xx"},
		{name="Input Gain"					,	pattern="b0 6B xx"},
--	Meters
		{name="Peak Input Meter"			,	pattern="b0 6E xx"},
		{name="Peak Output Meter"			,	pattern="b0 6F xx"},


--	SHAPE		_____________________
--	Buttons
		{name="Gate On"						,	pattern="b0 35 xx"},
		{name="Hard Gate"					,	pattern="b0 3B xx"},
--	Rotaries
		{name="Gate"						,	pattern="b0 36 xx"},
		{name="Sustain"						,	pattern="b0 37 xx"},
		{name="Gate Release"				,	pattern="b0 38 xx"},
		{name="Punch"						,	pattern="b0 39 xx"},
--	Meters
		{name="Gate Gain Reduction"			,	pattern="b0 72 xx", x="(value*(-1))+127"},


--	EQUALIZER	_____________________
--	Buttons
		{name="EQ On"						,	pattern="b0 50 xx"},
-- not working		{name="Low Shape"					,	pattern="b0 5D xx"},
-- not working		{name="High Shape"					,	pattern="b0 41 xx"},
--	Rotaries
		{name="High Gain"					,	pattern="b0 52 xx"},
		{name="High Frequency"				,	pattern="b0 53 xx"},
		{name="High Mid Gain"				,	pattern="b0 55 xx"},
		{name="High Mid Frequency"			,	pattern="b0 56 xx"},
		{name="High Mid Q"					,	pattern="b0 57 xx"},
		{name="Low Mid Gain"				,	pattern="b0 58 xx"},
		{name="Low Mid Frequency"			,	pattern="b0 59 xx"},
		{name="Low Mid Q"					,	pattern="b0 5A xx"},
		{name="Low Gain"					,	pattern="b0 5B xx"},
		{name="Low Frequency"				,	pattern="b0 5C xx"},
		
		
-- COMPRESSOR	_____________________
--	Buttons
		{name="Compressor On"				,	pattern="b0 2E xx"},
--	Rotaries
		{name="Compressor Threshold"		,	pattern="b0 2F xx"},
		{name="Compressor Release"			,	pattern="b0 30 xx"},
		{name="Compressor Ratio"			,	pattern="b0 31 xx"},
		{name="Parallel Dry Wet"			,	pattern="b0 32 xx"},
		{name="Compressor Attack"			,	pattern="b0 33 xx"},
--	Meters
		{name="Compressor Gain Reduction"	,	pattern="b0 73 xx", x="(value*(-1))+127"},

	
--	OUTPUT		_____________________
--	Buttons
		{name="Mute"						,	pattern="b0 0C xx"},
		{name="Solo"						,	pattern="b0 0D xx"},
--	Rotaries
		{name="Volume"						,	pattern="b0 07 xx"},
		{name="Pan"							,	pattern="b0 0A xx"},
		{name="Drive"						,	pattern="b0 0F xx"},
		{name="Character"					,	pattern="b0 12 xx"},
--	Meters
		{name="Output Meter L"				,	pattern="b0 70 xx"},
		{name="Output Meter R"				,	pattern="b0 71 xx"},

		
--	TRACK		_____________________
--	Select Track Buttons
		{name="Select Track 1"				,	pattern="b0 15 xx"},
		{name="Select Track 2"				,	pattern="b0 16 xx"},
		{name="Select Track 3"				,	pattern="b0 17 xx"},
		{name="Select Track 4"				,	pattern="b0 18 xx"},
		{name="Select Track 5"				,	pattern="b0 19 xx"},
		{name="Select Track 6"				,	pattern="b0 1A xx"},
		{name="Select Track 7"				,	pattern="b0 1B xx"},
		{name="Select Track 8"				,	pattern="b0 1C xx"},
		{name="Select Track 9"				,	pattern="b0 1D xx"},
		{name="Select Track 10"				,	pattern="b0 1E xx"},
		{name="Select Track 11"				,	pattern="b0 1F xx"},
		{name="Select Track 12"				,	pattern="b0 20 xx"},
		{name="Select Track 13"				,	pattern="b0 21 xx"},
		{name="Select Track 14"				,	pattern="b0 22 xx"},
		{name="Select Track 15"				,	pattern="b0 23 xx"},
		{name="Select Track 16"				,	pattern="b0 24 xx"},
		{name="Select Track 17"				,	pattern="b0 25 xx"},
		{name="Select Track 18"				,	pattern="b0 26 xx"},
		{name="Select Track 19"				,	pattern="b0 27 xx"},
		{name="Select Track 20"				,	pattern="b0 28 xx"},
--	Track Buttons
		{name="Track Copy"					,	pattern="b0 78 xx"},
		{name="Track Group"					,	pattern="b0 7B xx"},
--	Page Buttons - REMOVED OUTPUT
--		{name="Page Up"						,	pattern="b0 60 xx"},
--		{name="Page Down"					,	pattern="b0 61 xx"},
--	Order - REMOVED OUTPUT
--		{name="Order"						,	pattern="b0 0E xx"},
--	External Sidechain - REMOVED OUTPUT
--		{name="External Sidechain"			,	pattern="b0 11 xx"},


--	DISPLAY		_____________________
		{name="Display On"					,	pattern="b0 66 xx"},
		{name="Display Mode"				,	pattern="b0 68 xx"},
	}
	remote.define_auto_outputs(outputs)
end

function remote_probe()
	return {
		-- does not respond
	}
end

function remote_prepare_for_use()
	local retEvents={
	}
	return retEvents
end

function remote_release_from_use()
	local retEvents={
	}
	return retEvents
end


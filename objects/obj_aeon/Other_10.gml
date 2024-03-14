//---You can update variables here!---//
reset_dialogue_defaults();


switch(_readyforgun){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "I cannot believe you actually convinced me to do this.";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "Really, Ruey? And here I thought I had built up a pretty solid repuatation in the field of 'convincing my friends to do stupid shit for me.'";
		mySpeaker[i]	= obj_player;
		
		//Line 2
		i++;
		myText[i]		= "Won't deny that, but you do realize this is Heaven’s Nightclub, right?";
		mySpeaker[i]	= id;

		// line 3
		i++;
		myText[i]		= "They catch your demonic ass in there and it's back to the aether- permanently.";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "Rue, baby, angel, my most favorite sentient weapon in the whole wide multiverse-";
		mySpeaker[i]	= obj_player;
		
		//Line 5
		i++;
		myText[i]		= "I am arguably all those things.";
		mySpeaker[i]	= id;

		//Line 6
		i++;
		myText[i]		= "Do you really think the Drones in there are gonna catch me? I'm Adalam, Voted Hell's Sexiest DJ since 1 AD, baby.";
		myEmotion[i]	= 1;
		mySpeaker[i]    = obj_player;

		//Line 7
		i++;
		myText[i]		= "You know, something tells me they're not gonna care about your sex appeal or DJ status when they're firing their eye-beams at you.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
		
		// line 8
		i++;
		myText[i]		= "Whatever, man. They're Lesser Angels, and even worse, they're NERDS. I'll take 'em down easy.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = obj_player;
	
//line 9
		
		i++;
		myText[i]		= "Yeah, nerds armed with divine blasters in their eyes. You’d be dead in a second if you didn’t have me chaperoning.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
//line 10
		i++;
		myText[i]		= "And that's why I'm so happy I have you, Ruey~~ <3";
		myEmotion[i]	= 1;
		mySpeaker[i]    = obj_player;
		//line 11
		i++;
		myText[i]		= "Okay, don't do that. And you promise you're getting me into Club Infernus next weekend, right?";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
//line 12
		i++;
		myText[i]		= "Swear it on my Mama (AKA The vat of acid I spawned from).";
		myEmotion[i]	= 0;
		mySpeaker[i]    = obj_player;
	//line 13
		i++;
		myText[i]		= "Whatever works. And by the way, if you die in there, which you will, I'm out. Can't go risking my job over some demon's wild night out.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
	//line 14
		i++;
		myText[i]		= "Hey, don't sweat it. I already ain't used to folks sticking around after I finish.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = obj_player;
	//line 15
		i++;
		myText[i]		= "'Sides, if my final moments are spent busting it down sexual style at the Hottest Club in the Seven Planes, then so be it.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = obj_player;
//line 16
		i++;
		myText[i]		= "I won't lie, it would be a pretty appropriate end considering your… everything.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
//line 17
		i++;
		myText[i]		= "Anyway, ready to head in?";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
		//line 18
		i++;
		myText[i]		= ["Yes, ma'am.", "Nah."];
		myTypes[i]      = 1
		myNextLine[i]   = [(i + 1), (i + 3)];
		myScripts[i]	= [[change_variable, id, "_readyforgun", true], [change_variable, id, "_readyforgun", false]];
		myEmotion[i]	= 0;
		mySpeaker[i]    = obj_player;
		
//line 19
		i++;
		myText[i]		= "I'll get ready then.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
		
		i++;
		myText[i]       = "You recieved the power of the AEON REUEL!";
		mySpeaker[i]    = id;
		myNextLine[i]   = -1;
		myScripts[i]    = [transform, true];
		
//line 20
		i++;
		myText[i]		= "I'll be here when you are.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
		myScripts[i]    = [make_player_move, true];

		#endregion
	break;
	
	case false:
	#region If you choose to continue
		var i = 0;
		//Line 0
		myText[i]		= "Ready?";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
		
		i++;
		myText[i]		= ["Yes, ma'am.", "Nah."];
		myTypes[i]      = 1
		myNextLine[i]   = [(i + 1), (i + 3)];
		myScripts[i]	= [[change_variable, id, "_readyforgun", true], [change_variable, id, "_readyforgun", false]];
		myEmotion[i]	= 0;
		mySpeaker[i]    = obj_player;
		
//line 19
		i++;
		myText[i]		= "I'll get ready then.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
		
		i++;
		myText[i]       = "You recieved the power of the AEON REUEL!";
		mySpeaker[i]    = id;
		myNextLine[i]   = -1;
		myScripts[i]    = [transform, true];
		
//line 20
		i++;
		myText[i]		= "I'll be here when you are.";
		myEmotion[i]	= 0;
		mySpeaker[i]    = id;
		myScripts[i]    = [make_player_move, true];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}
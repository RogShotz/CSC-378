"I think somethings wrong..." by "Luke Rowe"

[ Day in the life of me, start with phone, scroll, sanity pts hp, losing sanity. Include bathroom, room, phone, mind as rooms, perhaps outside of room is winning? possible foe is self, reasons not to go outside, things to do to increase sanity? Nothing to do to help for a while maybe, have to suffer as context for game?  Accurate descriptions, not wanting to get up, getting overwhelmed ect.]

The story genre is "survival/ horror". The story headline is "Something is wrong...".

When play begins, say "-------------------Important Info---------------------------

[bold type] Starting there is  TW for mental health related topics. This game is a game about disassociation and could be a trigger for some. [roman type]

The score in the game is bad. Think of it as your sanity load. Get to high and something may happen. Try to get a low score.

You will need to know some commands, most commands are basic however here are two important ones:

Phone Down, and Phone Up. This is how you access the phone. The phone can only be used in the bedroom, it in itself is a room. Treat it as such and potentially explore it.

-------------------Begin---------------------------
".
[Phone start]
PS-flag is a truth state that varies. PS-flag is false.
Use scoring.
ScoreMax is a number variable. ScoreMax is 18.
Every turn:
	if a random chance of 1 in 4 succeeds:
		if a random chance of 1 in 2 succeeds:
			Say "[italic type] Your head throbs, your vision gets blurry. You stare at nothing for a little. You come back to.";
		otherwise:
			Say "[italic type] You lose sight of what you are doing. You put your hands up and they look oddly distant. You say:
			
			[roman type] Are these even my hands?";
		increase score by 3;
	if score is greater than ScoreMax:
		end the story saying "You took too long, you did the things you knew would make you worse off. You succumb. You stare at the walls around you and you fade. You get pulled in, you don't come back. You are now stuck. You never will experience anything else but this hell. You can't move, you can't think";

[suicide bois ref lol]
The Phone is a room. The printed name of the The Phone is “Phone”. The description is "You are on your phone, scrolling endlessly with no end in sight.

     [fixed letter spacing]A water main broke, leaving New Orleans without drinking water, and the flooding here is getting worse after waters from Lake Pontchartrain broke through a levee.[roman type]
      [line break]
	[italic type]scroll[roman type]
	[line break]
	[fixed letter spacing]The Crips & Bloods tried to establish themselves here, and these guys killed them. Simple as that—gone! See you later![roman type]
	[line break]
	[italic type]scroll[roman type]
	[line break]
	[fixed letter spacing]Music Intro: Steve Lacy
	I wish I knew you wanted me
	I wish I knew, I wish I knew you wanted me
	I wish I knew, I wish I knew you wanted me [roman type]

     Slowly you begin to hear a high pitch sound. You start feeling an unease. Maybe you should put the phone down.

      You could also stay on your phone in your endless lull. [bold type] scroll[roman type]ing, maybe that feeling of unease could just be random. Go and see whats going on with your phone. [bold type] What time was it again?

	[roman type] I also have [bold type]snapchat [roman type] I could go to... not really  a point probably.

	[italic type] You start with 5 sanity load".

When play begins:
	increase the score by 5.

Scrolling is an action applying to nothing. Understand "scroll" as scrolling.
Check scrolling:
	if player is in the Phone:
	 	if a random chance of 1 in 3 succeeds:
			Say "Bwhahabbsahs. SCHHKKK... (catchy music) sssssssssssssssss...";
		otherwise:
			if a random chance of 2 in 3 succeeds:
				Say "Wamp womp wamp womp... e e e, gir gir tir te..";
			otherwise:
				Say "EEEEER, EEEER, STOP STOP STOP, GSCH GSCH GSCH. Waaaackrrr ssshhhh... NOOOOO WHY WHY, WHY WHY
				
						I'm starting to not feel so good.";
				increase the score by 10;
	otherwise:
		say "You feel a jolt and feeling wash over you. You feel the urge to get back to your phone";

Snapchat is scenery in the phone. The description is "My friends are on this app, I wonder if I have any messages? Probably not... no one ever talks to me".
Instead of examining snapchat:
	Say "Hey my girlfriend sent me something, it says:
	
	[italic type]Can I come over tonight? I can drive you to school tomorrow if you'd like :)
	
	[roman type]That was nice, I wish she could but I feel like shit right now... I gotta get in better shape.";
	Decrease the score by 5;

Checking the time is an action applying to nothing. Understand "time" or "check time" or "check the time" as checking the time.
Check checking the time:
	if player is in the Phone:
		Say "The time is 12:13, it way to early for this to be happening. Normally it's only at night this happens... what am I doing";
		increase the score by 3;
	otherwise:
		Say "The time? What about it, it's probably late... too late... what am I even doing right now I don't have my phone, i'm stupid what does it even matter.";
		increase the score by 6;

DP is a direction. The opposite of DP is UP.
Understand "down phone" as DP.
Understand "phone down" as DP.
Understand "up phone" as UP.
Understand "phone up" as UP.


DP of the phone is the bedroom. The Bedroom is north of The Bathroom.

 The Bedroom is a room. The printed name of the The Bedroom is “Bedroom”. The description is "Your bedroom, the walls look kind of silly. Did the walls stucco always slide like that? Your bathroom is south of the Bedroom, the door to the outside to the east". 

Bottle is a thing in The Bedroom. The description is "I wonder whats in here?". There is liquid in the bottle. The description is "Looks like water, smells like nothing... maybe  a little bit of metal? It looks off. Did the bottle always feel so heavy?

     You look back up at your room there is a big blur and your eyes take time to readjust. You flop back into your bed as if picking up the bottle was too exhausting. You begin to get a headache."

Instead drinking the liquid:
	say "You take a sip of the liquid. You feel a sense that it doesn't taste right... something isn't right... you start to feel ill. [line break]";
	say "Hey the headache is subsiding at least, something just doesn't feel right, your field of vision blurs for a second and comes back to";
	decrease score by 5;
	remove liquid from play;
[TODO: Implement drinking of liquid, unease a couple turns later you feel better]

The Bathroom is a room south of the bedroom. The description is "Your bathroom, it seems kind of small. The corners of the room seem to be swaying inward. Other than that its a normal bathroom with a shower and a mirror that's refracting some weird looking objects. I probably look like shit."
The Mirror is scenery in the bathroom. The description is "A mirror, its reflections seem to be waving at me."
Instead of examining mirror:
	say "Man I look horrible... why does my face look like that? I haven't taken a shower all day... I look like shit, I look like shit. There's something wrong with the perspective... I can't seem to make myself look right";
	increase score by 10; 

Showering is an action applying to nothing. Understand "Shower" as showering.
Check showering:
	if player is in the Bathroom:
		say "I feel much better after that. Things are starting to feel right again.";
		Decrease score by 10;
	otherwise:
		say "Take a shower, why would I do that, i'm just lying here and things aren't feeling right, it seems like the last thing I want to do. It's just not right.".
	
Self is an man in the bathroom. "Self is a man sitting in your head, but your thoughts are jumbled.". The description is "talking to myself could help a bit... maybe I can figure out what is going on.".

[TODO: add inner monologue options and]
Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

Instead of talking to Self:
	say "What am I doing right now, why is everything so weird. Am I okay? What is happening?

	Everything is going to be okay.
	I should try to do some things that will make me feel better.";
	
The Living Room is a room east of the bedroom.

Instead of going to The Living Room:
	if score is greater than -1:
		say "I couldn't possibly go outside... I feel horrible, something isn't right, something isn't right.";
	otherwise:
		end the story saying "You made it outside... things start to feel right, you see your friend and talk with them. Your phone stops being so cryptic and you see a message from your girlfriend. You feel relief and you continue your day";
	
	
 
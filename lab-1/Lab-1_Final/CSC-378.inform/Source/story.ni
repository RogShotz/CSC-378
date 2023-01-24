"I think somethings wrong..." by "Luke Rowe"

[ Day in the life of me, start with phone, scroll, sanity pts hp, losing sanity. Include bathroom, room, phone, mind as rooms, perhaps outside of room is winning? possible foe is self, reasons not to go outside, things to do to increase sanity? Nothing to do to help for a while maybe, have to suffer as context for game?  Accurate descriptions, not wanting to get up, getting overwhelmed ect.]

The story genre is "survival/ horror". The story headline is "Something is wrong...".

When play begins, say "-------------------Important Info---------------------------

[bold type] Starting there is  TW for mental health related topics. This game is a game about disassociation and could be a trigger for some. [roman type]

The score in the game is your sanity/ self image. You start with 5, and can check it with score. Get too high and something bad may happen. In other words try to get a low score. Another part of the scoring is that you will consistently take damage to your sanity, sometimes even when you do something good you'll be punished because you got another one of those pings... it sucks, I know.

You will need to know a special part of this game, that is the phone. The phone is a room not an object so treat it as such. Throughout the game text will be highlighted... this may mean you can interact with typing it out ;)

-------------------Begin---------------------------
".
[Phone start]
PS-flag is a truth state that varies. PS-flag is false.
Use scoring.
ScoreMax is a number variable. ScoreMax is 18.
InsaneFlag is a truth state that varies.

Every turn:
	if score is greater than 10:
		if InsaneFlag is False:
			Say "I'm going insane i can't bare this anymore, please make it stop... I need to lay down, I need to do something. I can't do this, what am I doing. Something is off please let me out.";
			now InsaneFlag is True;
		otherwise:
			if a random chance of 1 in 2 succeeds:
				Say "[italic type]Let me out please let me out. I'm done with this... make it stop.";
			otherwise:
				Say "[italic type]I can't do this... please stop this";
	if a random chance of 1 in 4 succeeds:
		if a random chance of 1 in 2 succeeds:
			Say "[italic type] 
			
			Your head throbs, your vision gets blurry. You stare at nothing for a little. You come back to.";
		otherwise:
			Say "
			
			[italic type] You lose sight of what you are doing. You put your hands up and they look oddly distant. You say: [roman type] Are these even my hands?";
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

     Slowly you begin to hear a high pitch sound which you could [bold type]listen[roman type] to possibly. You start feeling an unease. Maybe you should put the [bold type]phone down[roman type].

      You could also stay on your phone in your endless lull. [bold type] scroll[roman type]ing, maybe that feeling of unease could just be random. Go and see whats going on with your phone. [bold type] What time was it again?

	[roman type] I also have [bold type]snapchat [roman type] I could [bold type]examine[roman type] it but... there's no point, I don't ever get sent anything.

	[italic type] You start with 5 sanity load".

When play begins:
	increase the score by 5.

Instead of listening:
	Say "This sound isn't real, it doesn't exist, its so irritating I can't stand it... why can't it stop.";
	Increase the score by 3

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
				increase the score by 8;
	otherwise:
		say "You feel a jolt and feeling wash over you. You feel the urge to get back to your phone";

Snapchat is scenery in the phone. The description is "My friends are on this app, I wonder if I have any messages? Probably not... no one ever talks to me".

SnapFlag is a truth state that varies.
Instead of examining snapchat:
	if SnapFlag is false:
		Say "Hey my girlfriend sent me something, it says:
		
		[italic type]Can I come over tonight? I can drive you to school tomorrow if you'd like :)
		
		[roman type]That was nice, I wish she could but I feel like shit right now... I gotta get in better shape.";
		Decrease the score by 5;
		now snapFlag is True;
	otherwise:
		say "No point in checking snap again, I already checked all the messages... no one other than my girlfriend every texts me";
		decrease the score by 1;

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

 The Bedroom is a room. The printed name of the The Bedroom is “Bedroom”. The description is "Your bedroom, the walls look kind of silly. Did the walls stucco always slide like that? Your bathroom is south of the Bedroom, the closet is to the east, the door to the outside to the northeast". 

Bottle is a thing in The Bedroom. The description is "I wonder whats in here?". There is liquid in the bottle. The description is "Looks like water, smells like nothing... maybe  a little bit of metal? It looks off. Did the bottle always feel so heavy?

     You look back up at your room there is a big blur and your eyes take time to readjust. You flop back into your bed as if picking up the bottle was too exhausting. You begin to get a headache. Should I [bold type]drink [roman type]the [bold type]liquid[roman type]? It still feels wrong."

Instead drinking the liquid:
	say "You take a sip of the liquid. You feel a sense that it doesn't taste right... something isn't right... you start to feel ill. [line break]";
	say "Hey the headache is subsiding at least, something just doesn't feel right, your field of vision blurs for a second and comes back to";
	decrease score by 5;
	remove liquid from play;

The Bathroom is a room south of the bedroom. The description is "Your bathroom, it seems kind of small. The corners of the room seem to be swaying inward. Other than that its a normal bathroom with a shower and a mirror that's refracting some weird looking objects. I probably look like shit."
The Mirror is scenery in the bathroom. The description is "A mirror, its reflections seem to be waving at me."
Instead of examining mirror:
	say "Man I look horrible... why does my face look like that? I haven't taken a shower all day... I look like shit, I look like shit. There's something wrong with the perspective... I can't seem to make myself look right";
	increase score by 10; 

ShowerFlag is a truth state that varies.
Showering is an action applying to nothing. Understand "Shower" as showering.
Check showering:
	if player is in the Bathroom:
		if ShowerFlag is false:
			say "I feel much better after that. Things are starting to feel right again.";
			Decrease score by 7;
			now ShowerFlag is True;
		otherwise:
			say "Okay okay, I think i'm looking better and feeling alright, no need to take another shower";
	otherwise:
		say "Take a shower, why would I do that, i'm just lying here and things aren't feeling right, it seems like the last thing I want to do. It's just not right.".
	
Self is an man in the bathroom. "Self is a man sitting in your head, but your thoughts are jumbled.". The description is "talking to myself could help a bit... maybe I can figure out what is going on.".

Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

Instead of talking to Self:
	say "What am I doing right now, why is everything so weird. Am I okay? What is happening?

	[bold type]1[roman type]. Things don't always seem wrong. Somethings just up right now.
	[bold type]2[roman type]. Everything is going to be okay.
	[bold type]3[roman type]. I should try to do some things that will make me feel better.";

[Hijacking yes no sorry to give outcomes, No is the only bad outcome... idk how else to do this]
Understand "1" as saying yes. Understand "2" as saying no. Understand "3" as saying sorry.

YesFlag is a truth state that varies.
Instead of saying yes in the presence of the Self:
	if YesFlag is False:
	    	say "Your right... just go with the flow.";
		decrease score by 4;
		now YesFlag is True;
	otherwise:
		say "Saying the same things over and over isn't gonna make me feel better";
	
NoFlag is a truth state that varies.
Instead of saying no in the presence of the Self:
	if NoFlag is False:
    		say "No it's not, it never is, this always happens... I always come back to this... Why me, why is this happening right now I can't escape.";
		increase score by 3;
		now NoFlag is True;
	otherwise:
		say "Saying the same things over and over isn't gonna make me feel better";

SorryFlag is a truth state that varies.
Instead of saying sorry in the presence of the Self:
	if SorryFlag is False:
   		say "Just focus on doing something productive, the less I think about this the better";
		now SorryFlag is True;
		decrease score by 4;
	otherwise:
		say "Saying the same things over and over isn't gonna make me feel better";
	
The Bedroom is west of the closet.
The Closet is a room east of the bedroom. The description of the closet is "Kinda running low on clothes... man everything is so outdated, I never get new clothes, I NEVER get anything good for myself, I think I have some things I can wear though...

	[italic type]You gaze at the corner of the closet and stare at how dark it is. Your gaze wanders across the clothing rack, then slowly throughout the rest of it. The felt and fabrics begin to seem like a mirage, fake almost... you get a ping. You snap back to.".
The clothing rack is scenery in the closet. The description of the clothing rack is "On the clothing rack is your favorite Berserk hoodie. You're comfy joggers. And a bunch of other misc. clothing you couldn't give a shit less about."

A hoodie is a kind of thing. A hoodie is always wearable.
A joggers is a kind of thing. A joggers is always wearable.

The Berserk Hoodie is a hoodie. The description of the Berserk Hoodie is "Black with a couple of white Manga frames printed on. You think to yourself, 'shit goes hard'.". The Berserk Hoodie is in the closet.

After wearing a Hoodie:
	decrease score by 4;
After wearing a Joggers:
	decrease score by 4;
		
After taking off a Joggers:
	increase score by 6;
	say "I'm such a schizo, I can't make up my mind. This doesn't feel right... what's wrong with me. I cant even put some clothes on.";
	
After taking off a Hoodie:
	increase score by 6;
	say "I love that hoodie so much... it's my favorite thing and I can't even wear it. I hate myself why can't I like anything more.";

The Black Joggers is a joggers. The description of the Black Joggers is "Black with white speckles. They have a hole in it but they are your favorite and feel so nice and make go good with the hoodie.". The Black Joggers is in the closet.

The Living Room is a room northeast of the bedroom.

Instead of going to The Living Room:
	if score is greater than -1:
		say "I couldn't possibly go outside... I feel horrible, something isn't right, something isn't right.";
	otherwise:
		end the story saying "You made it outside... things start to feel right, you see your friend and talk with them. Your phone stops being so cryptic and you see a message from your girlfriend. You feel relief and you continue your day";
	
	Release along with a website and an interpreter.
	
 
VAR laura_sta = 5
VAR laura_afn = 10
VAR case_sta =5
VAR case_afn = 10
VAR ames_sta = 5
VAR ames_afn = 10
VAR suspicion = 0

on the cryptic instructions of a superhuman underground leader you make your way to a hidden power station in the  middle of nowhere
Your party:
You (she/her) - telepathy, but physical touch causes intense and painful mental feedback
Laura (she/her) - Stretch powers (a la mr fantastic), fashionable it girl
Case (she/her) - Super strength, shy goth who isnt used to her new muscles.
Ames (she/her) - Force field projection, pretentious nerd, understands Marx
Each begin with {laura_sta} stamina and {laura_afn} trust
Power usage consumes stamina and success depends on trust

 + Enter
 -> begin
 
 ===begin===
-The cars headlights illuminate the chain link fence. On both sides it streches out into the gloom and barbed wire bristles along the top.
+Case, could you make an opening? 
    Case: Yeah, I guess if I lift the whole thing up but someone might see it if they come by.
    ++Okay, lets think about it then
    -> begin
    **Lets do it (CASE 1/{case_sta}, {case_afn*10}%)
    {
    - case_afn*10 >= RANDOM(1, 100):
        ~suspicion = suspicion+1
        ~case_sta = case_sta-1
        Success
        Case stamina reduced to {case_sta}
        Suspicion raised to {suspicion}
    ->yard
    -else:
    FAIL
    ->begin
    }
+Laura, what do you think?
    Laura: i'm not sure, I could try and lift you guys over
    ++Okay, lets think about it then
    -> begin
    **Lets do it (LAURA 1/{laura_sta}, {laura_afn*5}%)
        {
        -laura_afn*10-50 >= RANDOM(1, 100):
        ~laura_sta = laura_sta-1
        success
        Laura stamina reduced to {laura_sta}
        ->yard
        -else:
        FAIL
        ->begin
        }
   
+Ames, can you get us over?
    Ames: I suppose I could lift us on a platform.
    Laura: Are you any good at it?
    Ames: Not really.
    ++Okay, lets think about it then
    -> begin
    **Lets do it (AMES 1/{ames_sta}, {ames_afn*7}%)
    {
    -ames_afn*10-30 >= RANDOM(1, 100):
    ~ames_sta = ames_sta-1
    Ames stamina reduced to {ames_sta}
        success
    ->yard
    -else:
        FAIL
    ->begin
    }
+why are we here again?
    Ames: Prospero just said he said we needed something from inside
    Laura: apparently we will "know when we see it" which is bull&%$@.
    **okay
    -> begin


===yard===
The four of you are standing in a field encircled by fence. A low concrete building sits in the middle.
+approach the building
    you cautiously approach the concrete wall.
    ++inspect
    the wall is solid and impassable, but looking closer you can see a small air vent
        +++Case?
        I don't think I could tear it down i think i could get hurt.
            ****You don't know until you try (CASE 3/{case_sta}, {case_afn*0.1}%)
            {
            - case_afn*10-100 >= RANDOM(1, 100):
            ~suspicion = suspicion+1
            ~case_sta = case_sta-3
            Success
            Case stamina reduced to {case_sta}
            Suspicion raised to {suspicion}
                ->backroom
            -else:
            FAIL
            ~case_afn = case_afn-3
            Case trust reduced to {case_afn}
            ->yard
            }
            ++++nevermind
            ->yard
        +++Laura?
        I guess I could try to squeeze through the vent and unlock the door from the other side, easy.
            ****Lets do it (LAURA 4/{laura_sta}, {laura_afn*10}%)
            {
            -laura_afn*10 >= RANDOM(1, 100):
            ~laura_sta = laura_sta-2
            Laura stamina reduced to {laura_sta}
            success 
                ->backroom
            -else:
            FAIL
                ->yard
            }
            ****i dont want you to push yourself too hard
            Laura okay but i still totally could
            ~ames_afn = ames_afn+1
            Ames trust increased to {ames_afn}
                *****i don't disagree, but we need you at your best if we get into a fight inside.
                ->yard
                *****i dont want to risk it
                ~laura_afn = laura_afn-1
                Laura trust decreased to {laura_afn}
                ->yard
            ++++nevermind
            ->yard
        +++Ames?
        Ames: I'm not sure how much I could help with my powers, Laura could slip through there but it could be a lot to ask. Case of course could try to tear the whole thing down, but shes never attempted anything that hard before.
        Case: yeah I'm not so sure if I could do it.
        Laura: speak for yourself, I could do it easily.
        ++++thanks
            ->yard
        +++step back
        ->yard
    ++go back
    ->yard
+go around
->front

===front===
on the other end of the building there is a large metal door and a dull electric light.
+inspect
    the door is locked and thick
    ++Case?
    I might be able to tear it down, it wouldnt be easy and it would draw attention though
    ***Lets do it (CASE 2/{case_sta}, {case_afn*8}%)
        {
        - case_afn*10-20 >= RANDOM(1, 100):
        ~suspicion = suspicion+1
        ~case_sta = case_sta-2
        Success
        Case stamina reduced to {case_sta}
        Suspicion raised to {suspicion}
            ->door
        -else:
        FAIL
            ->front
        }
        +++nevermind
        ->front
    ++Laura?
    I guess I could try to squeeze in the keyhole and unlock it
        ***Lets do it (LAURA 3/{laura_sta}, {laura_afn*7}%)
            {
            -laura_afn*10-30 >= RANDOM(1, 100):
            ~laura_sta = laura_sta-3
            Laura stamina reduced to {laura_sta}
            success 
                ->door
            -else:
            FAIL
                ->front
            }
        +++nevermind
        ->front
    **Ames?
    Ames: I don't think I could help here, Laura has been practacing forming key shapes with me but it's not easy, Case could tear it down but we might want to be more discrete, besides we might want to save her strength in case we get into a fight.
    Laura: Case in case?
        ***Good one
        ~laura_afn = laura_afn+1
            Laura trust increased to {laura_afn}
         ->front
        ***Okay, never mind
        ->front
+go back
->yard


===door===
->endscreen

===backroom===

->endscreen

===endscreen===
you have entered the secret bunker

Laura's stamina: {laura_sta} 
Laura's affinity: {laura_afn}
Case's stamina: {case_sta}
Case's affinity: {case_afn}
Ames's stamina: {ames_sta}
Ames's stamina: {ames_afn}
Suspicion: {suspicion}
    -> END


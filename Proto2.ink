VAR laura = 10
VAR case = 10
VAR ames = 10
VAR suspicion = 0


Your party:
You (she/her) - telepathy, but physical touch causes intense and painful mental feedback
Laura (she/her) - Stretch powers (a la mr fantastic), fashionable it girl
Case (she/her) - Super strength, shy goth who isnt used to her new muscles.
Ames (she/her) - Force field projection, pretentious nerd, understands Marx
Each begin with {laura} affinity

 + Enter
 -> begin
 
 ===begin===
-The cars headlights illuminate the chain link fence. On both sides it streches out into the gloom and barbed wire bristles along the top.
+Case, could you make an opening? 
    Case: Yeah, I guess if I lift the whole thing up but someone might see it if they come by.
    ++Okay, lets think about it then
    -> begin
    **Lets do it (CASE {case*10}%)
    {
    - case*10 >= RANDOM(1, 10):
        ~suspicion = suspicion+1
        Success
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
    **Lets do it (LAURA {laura*5}%)
    {
    - laura*5 >= RANDOM(1, 100):
        success 
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
    **Lets do it (AMES {ames*7}%)
    {
    - ames*7 >= RANDOM(1, 10):
        success
    ->yard
    -else:
    FAIL
    ->begin
    }
+why are we here again? []
    Ames: Prospero just said he said we needed something from inside
    Laura: apparently we "will know when we see it" which is bull&%$@.
    **okay
    -> begin


===yard===

    -> END

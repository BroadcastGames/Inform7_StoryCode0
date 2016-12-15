"Danse Nocturne" by Joey Jones

Part 1 - Set Up

[2: formerly this was by 'Eggerich von Eggermond'. The original pseudonym was supposed to have the effect of making the piece more mysterious or somesuch. I'm quite proud of this though, so I wanted to put my name on the re-release.

It was my intention to release the source with the re-release. I'd long had a vague intention of integrating the Club Floyd playthrough suggestions into a second release, and showing off the sourcecode as I do something relatively unusual here.

I give permission to use any part of the source however you like so long as you give credit where due etc. you know the drill.

Thanks go to Melvin Rangasamy for providing me with the list of 'something new' commands, and to Sam Jones for some of the testing, as well as all the players in the Club Floyd playthrough. Thanks everyone!]
[2: Version 2 notes will be marked with a '2' followed be a ':' to make them easier to search if you want to do that sort of thing.]

The story headline is "An Unending Dance".
The story description is "Interactive blank verse. Dance adverbially.".
Use no scoring. Release along with an interpreter.
The release number is 2.
Include Rewrite The Command Line by Ron Newcomb. [2: this extension allowed me to get rid of the player's prior command in the transcript so that there's only a single unbroken poem left. This further has the benefit of getting rid of unworkable commands so the player's transcript isn't littered with mistakes. Good job Ron!]

[2: the following bits prevent any undoing, so each poem is complete and unadulterated. I decided on a blank message as a part of the purist vision of the piece.]
Use undo prevention.

When play begins: 
    choose row with a final response rule of immediately undo rule in the Table of Final Question Options; 
    blank out the final question wording entry.

The immediately undo rule response (A) is "[line break]".

Rule for printing the banner text:
say "[fixed letter spacing]Danse Nocturne[roman type]" instead. [2: there is no banner text in the poem, because I wanted it to display as much like typical blank verse as possible.]

Rule for printing a parser error when the latest parser error is the I beg your pardon error (this is the do something useful with blank lines rule):
	say "[one of]Can she just dance? No she must dance some way[or]Can the moon just glow? No it mournfully glows[or]Can the nightingale just sing? No it must sing sweetly[or]Can leaves just lie? No they must lie still[cycling].". [2:this prints a line if the reader enters a blank line. I didn't want any text appearing in the game that I didn't write.]

Part 2 - The Adverbs

[2: The following is where the majority of the responses come from. The game takes in a command then prints a line. Most responses have multiple inputs and sequential outputs. This is the easiest way to give a wide range of responses to a huge array of adverbs while still having a managable number of paths. Typically, the responses clue alternative adverbs along their same path so that in play it makes it look as if you need to type different things, or in the case of dead end paths, they tend to clue on to an alternative similar path. The reader gets to feel smart for spotting the next stage along, whilst at the same time, repetitive inputs aren't punished with repetitive outputs and the reader is often rewarded for their inventiveness.]

Table of Dancing 
Topic			Elbegast
"partner/elbegast/eggerich/charlemagne/another/infrequently/really/sometimes/difficultly/never/occasionally/seldomly/completely"		"No matter how she twists or drags her feet,[line break]the lady dances on with Elbegast."
"finally/depressingly/forlornly/miserably/morosely/weepingly/wretchedly/dispiritedly/melancholically/sorrowfully/disappointedly/sadly/grimly/mournfully/dismally/inevitably/listlessly/inextricably/hopelessly/aimlessly/helplessly/despondently/desperately/spiritlessly/dejectedly/desolately/despairingly/disconsolately/emptily/gloomily/pessimistically/defeatedly/defeatingly/willingly/acquiescently/suicidally"			"[one of]The lady lets herself be led across,[line break]by Elbegast, the damp and leaf-strewn ground.[line break]'Finally love, are you acquiescent?'[or]Her shoulders slump. Does she accept defeat?[or][end bad][stopping]"
"fickly/capriciously/changingly/changeably/changefully/inconstantly/faithlessly/variably/hotly/temperamentally/mercurially/unsteadily/mutably/randomly/irresolutely/fitfully/unintelligibly/waveringly/disgracefully/sparingly/disreputably/inadequately/incompletely/reprehensibly/shoddily/irately/unforgivably/doubtably/contestably/doubtfully/painfully/thickly/questionably/ineffectively/hardly/laughably/regrettably/poorly/imprecisely/inaccurately/incorrectly/inexactly/heavily/ineptly/incompetently/foolishly/improperly/wrongly/badly/outrageously/unceremoniously/unapologetically/clumsily/awfully/slovenly"			"[one of]'Is this how you once danced with Eggerich?'[line break]says Elbegast a tad resentfully.[or]'That fiend!' her partner cries so painfully,[line break]'has he twisted your step so horribly?'[or]'You're married no more to a monster, love,'[line break]'so why,' he asks, 'must you dance monstrously?''[or]The lady cannot dance quite poor enough.[stopping]"
"devilishly/morbidly/squamously/frighteningly/frightfully/scarily/rugosely/demoniacally/demonically/grotesquely/corruptingly/diabolically/hellishly/terribly/terrifically/terrifyingly/freakishly/freakily/weirdly/horrendously/horribly/heretically/slyly/fiendishly/horrifyingly/darkly/abysmally/hideously/horrifically/dreadfully/slippingly/slickly/creepily/wickedly/rabidly/monstrously/heinously/alarmingly/evilly/hypocritically/malignantly"	"[one of]A slyly slipping slick of evil slides[line break]into the lady's ever creeping strides.[or]'I should have realised,' weeps Elbegast,[line break]'the shadow that fiend Eggerich had cast!'[or][end monster][stopping]"
"unsympathetically/ungraciously/resentfully/coolly/negatively/unfavorably/barely/treadingly/discouragingly/begrudgingly/dissuadingly/draggingly"		"[one of]The lady barely lets herself be dragged[line break]across the leaves that lie beneath their treading feet.[or]Mere trepidation's nowhere near enough.[stopping]"
"sweetly/elegantly/prettily/daintily/gracefully/beautifully/delicately/perfectly/gorgeously/cutely/swan-like/appealing/attractively/charmingly/pleasantly/pleasingly/delightfully/exquisitely/handsomely"			"[one of]A swan is just a swan, an angry bird.[line break]The moon is just the moon, a glowing rock.[line break]But the lady is a graceful swan and[line break]when dancing she becomes his moon and stars.[or]'Well, you are just my wife,' says Elbegast.[line break]'You're just my partner, sharing life and death.'[or]Although he is afixed by beauty clearly,[line break]he could not love a mortal woman, could he?[stopping]"
"brilliantly/blazingly/actively/glitteringly/glaringly/gleamingly/glisteningly/luminously/lustrously/shiningly/sparklingly/exactingly/tiringly/rhythmically/drastically/magnificently/energetically/rapidly/briskly/urgently/quickly/deftly/swiftly/speedily/fast/loudly/audibly/assertively/blatantly/unassailably/pointedly/glowingly/brightly/spiritedly/radiantly/baskingly/luminescently/confidently/assuredly/vivaciously/lightly/illuminatingly/dazzlingly/shinily/slidingly/grandly/ignoringly/dashingly/glidingly/stridently/fearlessly/bravely/firmly/resolutely/staunchly/perseveringly/determinedly/audaciously/boldly/brashly/dramatically"	"[one of]One two three steps, beneath the willow tree.[line break]Right foot forward, eyes staring straight through him.[or]Four five six steps along the trickling stream.[line break]Her spine aligned: left turn, right turn, now twist.[or]The beady owls in trees behold the star[line break]that shines out even Elbegast himself.[or][end bright][stopping]"
"lazily/immovably/slowly/belatedly/penultimately/still/ploddingly/glacially/haltingly/wearily/stiffly/rigidly/exhaustingly/thoroughly/fixedly/inflexibly/motionlessly/solidly/sluggishly/lethargically/laboriously"			"Now when a lady steps so slowly with[line break]a man she's meant to love, does reason fill[line break]her sleepy head or has she met defeat?"
"deceitful/deviously/insincerely/unreliably/untrustworthily/untruthfully/mendaciously/falsely/trickily/tricksomely/underhandedly/deceptively/furtively/suavely/secretly/obscurely/naughtily/subtly/sneakily/secretively/dishonestly/misleadingly/liberally/criminally/guilefully/illegally/dubiously/licentiously/radically/revolutionarily/covertly/tenebrously/obfuscatingly/shadily"	"[one of]One time outlaw now has royal in-laws.[or]The lady's swaying reminds him of his past.[or]'Those were fun times, if I recall, although[line break]I was the friend that Charlemagne despised.'[or][end illegal][stopping]"
"nocturne/nocturnally/eternally/nightly/diurnally/unwindingly/often/always/weekly/monthly/yearly/annually/yesterday/tomorrow/today/daily/hour/entwiningly/eventually/hourly/frequently/soon/now/timely/well-nigh/afterwards/afterward/afterwhile/later/latterly/subsequently/thereafter"	"No entwined time unwinds in Ingelheim."
"alluringly/sexily/purringly/eagerly/seductively/wantonly/desirably/lasciviously/lecherously/horizontally/amorously/achingly/bodaciously/salaciously/uncleanly/dirtily/lustily/vulgarly/lustfully/longingly/wantingly/slinkily/provocatively/sensually/hedonically/sensuously/erotically"	"[one of]The fallen lady slinks and purrs beside[line break]the firm full figure grasping her so close.[or]His aching lips an inch before her own,[line break]whispers, 'though we must dance you tempt me so!'[or]'I will not break before your wiles,' he shouts,[line break]all while his body tells a different tale![or][end seduce][stopping]"
"sternly/diplomatically/courteously/monarchically/royally/invincibly/regally/nobly/directionally/purposefully/winningly/triumphantly/victoriously/defiantly"	"[one of]The lady dances like a noble queen.[line break]Purposeful steps breed thoughts in her king's mind.[or]'Am I the Elfen King?' asks Elbegast.[line break]'For lady you most truly are my queen.'[or]'If we danced more majestically,' he cries,[line break]'why, Charlemagne himself would bow to us!'[or]The lady dances like a noble queen.[stopping]"
"majestically" 	"[end majesty]"
"irritably/frustratingly/infuriatingly/irritatingly/cynically/testily/loathsomely/unpleasantly/obnoxiously/indignantly/stubbornly/noxiously/thanklessly/inappreciatively/rudely/irreligiously/unprotectively/profanely/unsacredly/ungratefully/crossly/mordantly/rowdily/anarchically/sarcastically/bitingly/hatefully/meanly/cruelly/pettily/bitterly/stupidly/dimly/ignorantly/boorishly/moronically/coarsely/contemptuously/discourteously/bluntly/roughly/crudely/strictly/harshly/barbarously/barbarically/boisterously/brazenly/crassly/curtly/disrespectfully/imprudently/indecently/insolently/tactlessly/uncivilly/densely/obtusely"		"[one of]The lady stands upon her husband's toes[line break]and doesn't even look apologetic![or]Toes stubbed, knees scuffed and elbows caught in turns.[or]The dance jars in disjointed disarray,[line break]as pettiness ensnares the lady's strides.[or][end clumsy][stopping]"
"adverbially/literally/metaphorically/virtually/figuratively/neologismically/metonymically"			"'A lesson sweet one,' offers Elbegast.[line break]'In Ingelheim there's little literal.'"
"crazily/maniacally/frenziedly/amuck/dementedly/insanely/ludicrously/jealously/irrationally/hysterically/psychotically/madly/absurdly/bizarrely/shudderingly/impulsively/messily/untidily/chaotically/erratically/senselessly/nonsensically"	"[one of]Jagged trickling steps she takes across the[line break]leaves that strew the woods of Ingelheim. She[line break]twists and turns and shudders violently.[or][end mad][stopping]"
"upsettingly/shockingly/flabbergastedly/embarrassingly/awkwardly/prom/monotonously/ordinarily/expectedly/boringly/normally/commonly/standardly/dully/gravely/weakly/metronomically/hazily/indecisively/indefinably/indefinitely/indistinctly/nebulously/inobtrusively/fadingly"	"A metronome can tick with greater verve[line break]than she who's led and turned against her will."
"sleepily/slumberously/stuporously/somnambulatory/stertorously/yawningly/duskily/drowsily/languidly/tiredly"		"[one of]Is she sleepwalking in her waking life?[line break]Or twilight dreaming in her sleeping time?[or]Can she drift into repose, escaping?[line break]Can she leave her vigil, sleep commencing?[or][end asleep][stopping]"
"forgivingly/magnanimously/peacefully/morally/tactfully/understandingly/sympathetically/safely/reasonably/sanely/soundly/rationally/logically/dichotomously/serenely/macabre/philosophically/epicureanistically/dutifully/contentfully/acceptingly/obediently/totally/absolutely/positively/positivistically"	"[one of]They two entwined must dance the [italic type]danse macabre[roman type],[line break]for everything that's come will come to pass.[or]It's logical: if dance she must eternal,[line break]then so resigned she'll be to endless fate.[or]Just so: if their four stepping feet should fail,[line break](admit that it's a possibility!)[line break]then so diurnally the dance will end.[or][end serene][stopping]"
"wakingly/sleeplessly/lucidly/pellucidly"		"[end wake]"
"sharply/malevolently/mortally/frustratedly/irritatedly/angrily/heatedly/furiously/aggressively/violently/viciously/murderously/savagely/brutally"	"[murder]"
"attentively/discriminatingly/mindfully/vigilantly/advertent/heedfully/detectively/deductively/observationally/penetratively/regardfully/opportunistically/perspicaciously/resourcefully/discerningly/alertly/shrewdly/penetratingly/searchingly/observantly/perceptively/luckily/hopefully/fortunately/apprehensively"	 "[observant]"
"robustly/strongly/fiercely/forcibly/vigorously/indomitably/shovingly/pushily/thrustingly/wildly/puissantly/mightily/powerfully"	"[shove]"
"thankfully/admiringly/delightedly/responsively/respectfully/graciously/gratefully/tenderly/passionately/lovingly/dearly/kindly/gently/mercifully"	"[one of]Was Eggerich a violent plotting man?[line break]Should now the lady thank Elbegast?[or]The lady holds her brand new husband dear,[line break]although his hands once slew a man she'd loved.[or][end thanks][stopping]"
"cabalistically/mysterially/enigmatically/impenetrably/incomprehensibly/ambiguously/arcanely/inexplicably/mystically/unaccountably/undiscoverably/unexplainably/unknowably/unreadably/inscrutably/unexpectedly/surprisingly/mysteriously/ethereally/airily/unfathomably/phantasmagorically/hypnotically/fantastically/ritually/enchantingly/compulsorily/coercively/unusually/inordinarily/magically/bewitchingly/sorcerously/electrically/entrancingly/occultly"	"[one of]In Ingelheim there's magic in the air.[line break]The lady feels the sorcerous spark abound.[or]She pulls the sparks into her mind and breathes[line break]out mist and steps on dew that coats on the ground.[or]
She knows that she's ensorcelled by this man,[line break]and so begins enchanting him herself.[or][end magic][stopping]"
"venerably/unprofanely/sacramentally/sanctifiedly/numinously/consecratedly/celestially/cosmically/spiritually/faithfully/innocently/piously/blessedly/cherishedly/religiously/scholastically/reverently/sacredly/rapturously/beatifically/purely/holily/sublimely/divinely/devoutly/fatefully/enduringly/angelically/heavenly/deathly"	"[one of]She'd like to pray to nothing out loud.[line break]Her lips both break but there is no sound.[or]The only vision Charlemagne endured,[line break]he tried to but it couldn't go ignored.[or][end angels][stopping]"
"knowingly/pitifully/compellingly/sensitively/persuadingly/sensorially/evocatively"		"In the nocturne forest the smell of two[line break]living human bodies and dew damp leaves."
"bloatedly/traditionally/conventionally/distendly/inflatedly/puffily/tumescently/tumidly/symmetrically/pompously/turgidly/technically/tediously/bombastically/busily/baroquely/redundantly/complexly/similarly/comparatively"		"The labyrinthine complexities that dwell[line break]in Elbegast's [one of]small corner turned half smile[or]baroque redundant strides[cycling],[line break]now threaten to corrupt our lady plain."
"swingingly/tango/ballet/tap/jazz/jiggedly/ballroom/polka/mamba/circle/lambada/lemniscate/mambo/meringue/foxtrot/highland/breakingly/line/square/waltz/disco/straightly/diagonally/directionlessly/squarely/divisibly/jumpily/backwards/contrariwise/forwards/geometrically/triangularly/shapefully/lemniscatingly/lemniscatefully/swirlingly/vertically/spinningly/curlingly/twirlingly/patternfully/almost/around/generally/round/roundly/behind"		"The lady steps [one of]obscure[or]bizarre[or]foreign[or]furtive[in random order] odd named patterns[line break]with her [one of]strange[or]elf[or]odd[or]weird[cycling] ex-outlaw husband in hand."
"factually/meticulously/diligently/assiduously/painstakingly/uncertainly/judgementally/suspiciously/deliberately/fastidiously/precisely/carefully/considerately/gingerly/cautiously/quizically/abstractly/theoretically/historically/biographically/contemplatively/thoughtfully/musefully/ponderously/doubtingly/inquisitively/inquiringly/analytically/academically/judiciously/sagaciously/intelligently/intellectually/cannily/comprehendingly/learnedly/astutely/knowledgeably/cleverly/ingeniously/foxily/craftily/cunningly/solemnly/seriously/soberly"			"[one of]What she wonders is the truth in this fable?[line break]She seem to dance; inside her mind's aflame.[or]Fact one: she was married to Eggermond.[or]Fact two: her Eggermond betrayed the King.[or]Fact three: discovered, dueling Eggermond was slain.[or]Fact four: the wife of Eggermond's the lady.[or]Fact five: the wife of Elbegast's the lady.[or]Fact six: ever she dances with a killer.[stopping]"
"contentedly/gladly/joyously/playfully/wilfully/buoyantly/elatedly/exhilaratingly/exultantly/hilariously/jovially/laughingly/light-heartedly/smilingly/sportively/sportingly/blithely/blissfully/eudaimonically/prosperously/amiably/agreeably/loosely/perkily/bouncily/freely/sprightfully/sprightly/ironically/comically/prancingly/cheeringly/cheerfully/zestfully/keenly/enthusiastically/fancifully/happily/enjoyably/joyfully/humorously/merrily/funnily/comedically/gleefully/gaily/eggingly/whimsically/drolly/preposterously/inanely/ridiculously/animatedly"		"[one of]Quite gaily she forgets her Eggermond![line break]This brand new man in hand: she eggs him on.[or]To see Charlemagne'd be flabbergasted![line break]By his sister kissing Elbegast's head![or]The lady prances! Do we think her mad?[line break]Or's she accepted her predicament?[stopping]"
"timidly/shrinkingly/timorously/hesitantly/remotely/distantly/starrily/falteringly/retiringly/unassumingly/diffidently/bashfully/quaintly/civilly/decorously/politely/demurely/naively/reluctantly/trepidatingly/primly/coyly/shyly"		"[one of]The black knight clasps the lady tighter still.[line break]'Sweet,' he whispers, 'did I not win you fair?'[or]'Come sweetly now,' says Elbegast, 'for I[line break]am not the fiend that you may once have loved.'[or]The husband pulls his lady tightly on.[stopping]"
"approximately/together/collectively/combined/concertedly/concomitantly/concurrently/conjointly/contemporaneously/mutually/simultaneously/synchronically/unanimously/unitedly/coincidentally/doggedly/persistently/nearabout/following/proximately/intently/intimately/jointly/nearly/favourably/altogether/exclusively/tightly/close/entwiningly/securely/warmly/relatively/closely/pressingly/claspingly/windingly/devotedly/appropriately/felicitously/agreeably/matchingly/unshakeably/unflinchingly"			"[one of]The lady clasps to Elbegast tightly,[line break]his breath upon the nape of her bare neck.[or]'My little squirrel,' whispers Elbegast,[line break]'do you remember Eggerich struck you?[line break]'That's something I would never do to you.'[or]Their hearts are beating now together. One.[line break]Could this be love or is it just deception?[stopping]."
"efficiently/expertly/adeptly/proficiently/fittingly/presentably/satisfactorily/sufficiently/suitably/tolerably/comfortably/handily/readily/uncomplicatedly/capitally/commendably/irreproachably/properly/successfully/tastefully/remarkedly/strikingly/notably/splendidly/smoothly/acceptably/admirably/creditably/ably/decently/nicely/aptly/correctly/adequately/stably/profoundly/conscientiously/rightly/ethically/limitedly/scarcely/rightfully/righteously/scrupulous/reliably/justly/measuredly/fairly/equanimously/virtuously/legitimately/effectively/well/capably/facilely/effortlessly/skilfully/ideally/excellently/wonderfully/superbly/greatly/regularly/tremendously/competently/convincingly/easily/conveniently/again/steadily/masterfully/evenly/ideologically/politically/commitedly/socially"			"The lady always dances well, except[line break]when she's attempting [one of]toe tipped ballet moves[or]ballroom flourishes[or]sprightly twisting turns[in random order]."[2: ideally would have split a lot of these out but there are only so many hours in the day.]
"about/aboutly/informatively"	"[one of](A poem blank in verse, and mostly but[line break]not fully in iambic pentameter)[or]She'll alway dance with him until she won't[stopping]."
"haphazardly/irresponsibly/nonchalantly/sloppily/incautiously/offhandedly/unconcernedly/hastily/inattentively/neglectfully/negligently/indifferently/thoughtlessly/unmindfully/unobservantly/selfishly/blindly/inadvertently/fumblingly/gawkily/gracelessly/inelegantly/lumberingly/unadroitly/uncouthly/bunglingly/heedlessly/carelessly/recklessly/rashly/accidentally/unwittingly/forgetfully/incidentally/inconsiderately"	"[one of]A single step or two escapes her focus[or]And who could blame her if her concentration slips?[or]'My love,' says he, 'it suits you ill to clumsy be...'[or]And on they tread the endless lemniscate.[stopping]"
"sorrily/apologetic/ashamedly/contrite/remorseful/attritionally/compunctiously/potentially/possibly/penitently/repentantly/hypothetically/regretfully/wistfully/ruefully/memoriously/reminiscently/speculatively"	"[one of]The realm of what was not but could have been[line break]is vaster than the lands of Charlemagne.[or]What words could she have said (and how?) before?[line break]She has eternity to speculate.[or][end memory][stopping]"
"believably/candidly/forthrightfully/realistically/earnestly/understandably/openly/honestly/vulnerably/transparently/translucently/crisply/scrutably/clearly/knowably/frankly/unpretentiously/truthfully/boastfully/verily/sincerely/modestly/self-effacingly/simply/humbly/plainly/straightforwardly/truly/trustworthily/guilelessly/unfeignedly/unreservedly/veraciously/veritably/neatly/trimly/tidily/sweepingly/cleanly"	"[one of]A step can lie, a dance deceive, and yet[line break]a truth can lie inside a twisting turn.[or]The wife of Elbegast now more steps true[line break]than ever she danced with Eggerich.[or][end true][stopping]"
"nautically/atavistically/aqueously/fathomably/swimmingly/aquatically/turbulently/wetly/damply/stormily/tempestuously/tumultuously/cephalopodically/wavingly"	"[one of]The moon in Ingelheim will brook no cloud.[or]No rain nor wind nor silver lining comes.[line break]The only stirring is their stepping.[or]Beneath the surface of the world there is[line break]an ocean stretching out eternal.[or][end damp][stopping]"
"fearfully/anxiously/manicallyshakily/frantically/nervously"	"Is it mad to be mad in a mad world?[line break]Is there much that makes sense in Ingelheim?"
"minutely/punctiliously/exactly/sparingly/frugally/parsimoniously/reservedly/responsibly/practically/sensibly/prudently/conservatively/sturdily/durably"	"She slows her step, conserving power,[line break]waiting for the moment, any moment."
"hungrily/voraciously/gluttonously/rapaciously/greedily/thirstily/ravenously/insatiably"	"There is no food nor drink in Ingelheim:[line break]here life's a banquet that'll never come."
"wisely/aphoristically/pithily/gnomically"	"[one of]Even the tiniest enemy[line break]is not to be despised.[or]It's best to be alone when company[line break]is bad, but worser is to be alone[line break]when friends are good. Is Elbegast a friend?[cycling]"
"quietly/blankly/silently/wordlessly/silently/soundlessly/stealthily/mildly/softly/gently/unpresumptuously/unobtrusively/calmly/invisibly/insubstantially"	"[one of]'If you were not before my eyes,' says he,[line break]'I'd think you somewhere else, so silent you you are.'[or]'I cannot feel your waist beneath my gauntlets,[line break]could a sprite have cast a glamour over me?'[or][end quiet][stopping]"
"meringue"	"The lady can dance the merengue,[line break]but no one can dance the meringue." [2: because this is a joke line, I stuck with amphibrach rather than forcing it into iambic.]
"peculiarly/novelly/evidently/apparently/distinctively/distinctly/certainly/eccentrically/uniquely/individually/illustriously/decisively/definitely/obtrusively/seemingly/sportily/surely/undoubtedly/decidedly/discernibly/incontestably/incontrovertibly/indubitably/manifestly/markedly/overtly/perceptibly/prominently/recognisably/undeniably/unmistakably/unequivocally/thoroughly/noticeably/singularly/curiously/queerly/idiosyncratically/specially/innately/essentially/basically/rootedly/originally/oddly/famously"	"A little clicking flick of two turned heels,[line break]a daring clap or subtle sideways step.[line break]The lady's style is unmistakable."
"largely/substantially/forever/tirelessly/disproportionately/obviously/overly/immensely/immoderately/sumptuously/extravagantly/excessively/indecorously/unreasonably/unnecessarily/comprehensively/enormously/unabashedly/gaudily/intensely/massively/weightily/conspicuously/indiscriminately/fully/heartily/stoutly/unstoppably/rigorously/relentlessly/incessantly/severely/uproariously/astronomically/outspokenly/outlandishly/exhaustively/industriously/much/intensively/strenuously/unremittingly/untiringly/hard/abundantly/copiously/conclusively/unconditionally/ultimately/utterly/undividedly/unabridged/limitlessly/endlessly/lengthily/unendingly"	"[one of]The partners turn a dance unending.[or]The ages turn and lands collapse and churn,[line break]and still the pair will dance forever on.[or]The wheel revolves, each moment comes again.[or][end endlessly][stopping]"
"agily/supply/pliably/flexibly/limberly/twistily/pliantly/pliably/sprucely/lissomly/acrobatically/spryly/bendingly/nimbly/lithesomely/dexterously"	"[twist]"
"artistically/artfully/aesthetically/creatively/inventively/harmoniously/musically/sonorously/fluently"	"[plan]"


[2: You'll note that at times I've taken a fairly liberal interpretation as to what constitutes an adverb. If anyone's ever wanted to be rewarded for saying 'thrustingly', I've got them covered. It's all British English, sorry Americans!]

[2: the following are the values for the dancing verb. Each value links up to a different topic above (one doesn't work without the other). If you're thinking that this looks like a terrible way to implement anything you'd be absolutely correct. But if there was a better way I didn't know how.]

[2: in fact, if you were to deliberately devise a method for manufacturing difficult-to-discover errors, you could scarcely do better than this.]

[2: It's split up into different kinds so that the header prints the command you just typed grammatically.]

Extraneous is a kind of value. The extraneous are mamba, tango, can can, can-can, polka, lambada, mambo, merengue, meringue, foxtrot, highland.

Objection is a kind of value. The objections are line, figure of eight, lemniscate, square, circle.

The night is a kind of value. The nights are nocturne.

The couple is a kind of value. The couples are partner, elbegast, eggerich and charlemagne.

Manner is a kind of value. The manners are abundantly, copiously, conclusively, unconditionally, ultimately, utterly, undividedly, unabridged, sorrowfully, disappointedly, haphazardly, irresponsibly, nonchalantly, sloppily, incautiously, offhandedly, unconcernedly, efficiently, expertly, adeptly, proficiently, fittingly, presentably, satisfactorily, sufficiently, suitably, tolerably, comfortably, handily, readily, uncomplicatedly, capitally, commendably, irreproachably, properly, successfully, unwindingly, fully, scrupulous, defiantly, thoughtfully, shrewdly, aesthetically, remotely, distantly, musefully, ponderously, obscurely, expectedly, secretively, eggingly, wantonly, tenderly, defeatingly, nervously, weirdly, peacefully, serenely, deftly, dementedly, philosophically, outspokenly, stably, furtive, heartily, briskly, acceptingly, amuck, thickly, spiritlessly, whimsically, dispiritedly, wisely, nocturnally, diurnally, ravenously, insatiably, unstoppably, legitimately, relentlessly, incessantly, immovably, monthly, furiously, quaintly, unsympathetically, yearly, irrationally, hysterically, fluently, psychotically, overly, annually, daily, hourly, comprehendingly, learnedly, understandably, understandingly, unendingly, coyly, clumsily, completely, stealthily, shyly, badly, rapaciously, terribly, mysteriously, ethereally, historically, randomly, positively, positivistically, mutably, irresolutely, fitfully, admiringly, delightedly, responsively, biographically, frenziedly, surprisingly, quietly, unexpectedly, demoniacally, monstrously, macabre, cannily, intensely, wearily, sleepily, foxily, craftily, cephalopodically, ritually, backwards, forwards, energetically, robustly, ungraciously, sincerely, obnoxiously, noxiously, about, hopelessly, aboutly, infuriatingly, unintelligibly, informatively, deceptively, forcibly, keenly, ineffectively, enthusiastically, heavily, laboriously, windingly, contentedly, gladly, joyously, playfully, wilfully, buoyantly, elatedly, exhilaratingly, exultantly, hilariously, jovially, laughingly, light-heartedly, smilingly, sportively, sportingly, melancholically, secretly, dishonestly, incontrovertibly, misleadingly, forever, tirelessly, conservatively, painfully, bodaciously, evilly, indomitably, selfishly, hopefully, fearlessly, safely, morally, weepingly, dramatically, devoutly, devotedly, greatly, inconsiderately, depressingly, famously, forlornly, profoundly, creditably, desirably, gently, vivaciously, blindly, often, unpleasantly, miserably, cynically, masterfully, squarely, invincibly, indignantly, normally, commonly, drastically, sorrily, apologetic, ashamedly, contrite, remorseful, attritionally, compunctiously, penitently, gravely, atavistically, attentively, discriminatingly, mindfully, amorously, vigilantly, advertent, heedfully, detectively, deductively, observationally, penetratively, regardfully, geometrically, triangularly, shapefully, irately, lemniscatingly, lemniscatefully, sparingly, magnanimously, spiritually, helplessly, intellectually, meticulously, diligently, assiduously, painstakingly, occasionally, willingly, pleasingly, frugally, parsimoniously, crossly, reservedly, haltingly, squamously, rugosely, unassailably, frustratedly, brightly, discerningly, stubbornly, sportily, unapologetically, actively, firmly, resolutely, limitlessly, endlessly, lengthily, decorously, civilly, primly, regrettably, furtively, pitifully, luminescently, zestfully, yawningly, stupidly, sensuously, fatefully, correctly, shovingly, radically, admirably, brilliantly, blazingly, glitteringly, innately, essentially, glaringly, ethically, gleamingly, virtuously, glisteningly, luminously, lustrously, shiningly, peculiarly, aimlessly, sparklingly, swingingly, tremendously, happily, joyfully, purely, malignantly, straightly, loathsomely, diagonally, directionlessly, knowingly, metronomically, liberally, heinously, hard, soon, now, timely, well-nigh, afterward, afterwards, afterwhile, later, latterly, subsequently, hereafter, bloatedly, distendly, inflatedly, puffily, tumescently, tumidly, doubtably, contestably, ineptly, incompetently, ignorantly, seriously, wickedly, obviously, eventually, artfully, rightfully, righteously, frequently, inattentively, neglectfully, spiritedly, unfeignedly, unreservedly, veraciously, veritably, negligently, indifferently, thoughtlessly, believably, limitedly, unceremoniously, scarcely, candidly, forthrightfully, realistically, unmindfully, unobservantly, infrequently, dejectedly, desolately, favourably, messily, untidily, chaotically, altogether, exclusively, despairingly, blessedly, cherishedly, minutely, perseveringly, punctiliously, searchingly, religiously, scholastically, deceitful, deviously, falsely, reverently, disconsolately, emptily, gloomily, pessimistically, jiggedly, horrifyingly, innocently, perceptibly, piously, dearly, slidingly, enjoyably, unfathomably, modestly, self-effacingly, simply, ballet, respectfully, diplomatically, frustratingly, tap, jazz, sluggishly, lethargically, disco, negatively, testily, sonorously, unfavorably, irritatingly,  ballroom, breakingly, guilefully, swirlingly, spinningly, blithely, roughly, blissfully, factually, eudaimonically, urgently, prosperously, laughably, politely, curlingly, twirlingly, prom, waltz, fancifully, cleanly, uncleanly, tidily, sweepingly, seldomly, regularly, darkly, questionably, sumptuously, drolly, loudly, angelically, heavenly, deathly, wordlessly, gaudily, sensually, nautically, aqueously, trickily, mendaciously, sprucely, sometimes, unflinchingly, unshakeably, tricksomely, aquatically, facilely, effortlessly, boastfully, wetly, damply, finally, soundly, terrifyingly, silently, illustriously, immensely, conveniently, immoderately, extravagantly, excessively, alarmingly, reasonably, indecorously, unreasonably, unnecessarily, soundlessly, insincerely, unreliably, unpresumptuously, unobtrusively, untrustworthily, longingly, wantingly, untruthfully, insanely, slovenly, starrily, nobly, sanely, glidingly, aptly, stridently, strictly, victoriously, wretchedly, freakishly, freakily, staunchly, neatly, trimly, underhandedly, imprecisely, relatively, belatedly, penultimately, inaccurately, incorrectly, inexactly, achingly, irritatedly, madly, frighteningly, frightfully, scarily, approximately, together, collectively, combined, concertedly, concomitantly, concurrently, conjointly, contemporaneously, mutually, simultaneously, synchronically, unanimously, unitedly, coincidentally, doggedly, persistently, nearabout, virtually, following, proximately, intently, intimately, jointly, nearly, rationally, crazily, eagerly, upsettingly, absurdly, timidly, shrinkingly, timorously, hesitantly, falteringly, retiringly, unassumingly, contrariwise, excellently, uncertainly, crisply, dichotomously, unwittingly, fiendishly, academically, clearly, phantasmagorically, fantastically, intelligently, unusually, inordinarily, hatefully, cleverly, cunningly, exhaustively, thoroughly, fixedly, judiciously, sagaciously, inflexibly, rabidly, motionlessly, solidly, bravely, inventively, irritably, erotically, majestically, responsibly, lucidly, pellucidly, practically, similarly, comparatively, sensorially, ably, harmoniously, musically, evocatively, hazily, indecisively, indefinably, indefinitely, indistinctly, nebulously, inobtrusively, decisively, definitely, distinctly, obtrusively, hypocritically, rhythmically, hypothetically, dimly, dirtily, knowledgeably, convincingly, entwiningly, twistily, shudderingly, blatantly, smoothly, seductively, verily, again, funnily, hedonically, revolutionarily, provocatively, sprightfully, airily, densely, obtusely, dully, slyly, easily, purposefully, remarkedly, strikingly, sparingly, graciously, fickly, tactfully, magnificently, capriciously, changingly, almost, generally, round, around, roundly, behind, blankly, changeably, changefully, directionally, calmly, inconstantly, faithlessly, variably, temperamentally, fumblingly, gawkily, gracelessly, inelegantly, lumberingly, unadroitly, uncouthly, novelly, industriously, much, intensively, strenuously, unremittingly, untiringly, audibly, coarsely, contemptuously, discourteously, bluntly, really, aphoristically, pithily, animatedly, boisterously, thirstily, largely, fadingly, oddly, outlandishly, substantially, disproportionately, greedily, securely, steadily, gnomically, crudely, harshly, barbarously, curiously, barbarically, brazenly, crassly, queerly, traditionally, exhuastingly, conventionally, idiosyncratically, specially, curtly, disrespectfully, imprudently, indecently, insolently, tactlessly, uncivilly, mercurially, unsteadily,  sacredly, freely, agily, supply, pliably, invisibly, insubstantially, divisibly, flexibly, limberly, pliantly, pliably, plainly, lissomly, acrobatically, ordinarily, weakly, spryly, bendingly, nimbly, lithesomely, artistically, standardly, creatively, improperly, wrongly,  rapturously, earnestly, openly, honestly, bunglingly, lightly, frankly, truthfully, holily, divinely, sorcerously, astutely, tumultuously, turbulently, sexily, comprehensively, hungrily, decently, gluttonously, beautifully, courteously, criminally, illegally, puissantly, appealing, attractively, charmingly, delightfully, exquisitely, handsomely, doubtfully, weekly, mightily, powerfully, gaily, severely, morosely, radiantly, unpretentiously, ludicrously, bouncily, subtly, sneakily, splendidly, rightly, baskingly, boringly, maniacally, manically, rowdily, rapidly, embarrassingly, literally, awkwardly, busily, perfectly, venerably, unprofanely, sacramentally, sanctifiedly, numinously, consecratedly, monotonously, duskily, foolishly, enchantingly, prancingly, rigorously, occultly, cabalistically, mysterially, enigmatically, impenetrably, incomprehensibly, ambiguously, arcanely, inexplicably, mystically, unaccountably, undiscoverably, unexplainably, unknowably, hotly, malevolently, totally, absolutely, monarchically, equanimously, socially, ideologically, politically, ingeniously, commitedly, violently, meanly, cruelly, viciously, erratically, effectively, murderously, ignoringly, lustily, lustfully, unreadably, reliably, inscrutably, magically, regally, cosmically, astronomically, comically, wavingly, irreligiously, vulnerably, unprotectively, profanely, unsacredly, heatedly, waveringly, judgementally, justly, humorously, somnambulatory, exactingly, tiringly, humbly, thanklessly, inappreciatively, patternfully, kindly, coercively, compulsorily, mercifully, appropriately, straightforwardly, truly, trustworthily, guilelessly, voraciously, felicitously, ungratefully, agreeably, matchingly, unequivocally, dangerously, penetratingly, gratefully, potentially, possibly, purringly, delicately, pressingly, compellingly, swan-like, vigorously, dissuadingly, doubtingly, fearfully, shakily, tastefully, anxiously, grimly, preposterously, inanely, slippingly, slickly, eternally, nightly, ideally, sternly, adequately, dismally, abysmally, sadly, never, exactly, royally, mournfully, moronically, ironically, creepily, jealously, wonderfully, cutely, glowingly, slinkily, despondently, loosely, speculatively, diabolically, dashingly, cheerfully, cheeringly, discouragingly, regretfully, ruefully, memoriously, rudely, durably, mordantly, alluringly, fathomably, indiscriminately, sarcastically, bitingly, conspicuously, reminiscently,  barely, competently, gleefully, begrudgingly, poorly, deliberately, carefully, considerately, slowly, soberly, gracefully, naughtily, elegantly, superbly, sweetly, fairly, prettily, celestially, solemnly, pushily, thrustingly, bizarrely, pettily, skilfully, boorishly, bitterly, unmistakably, evidently, indubitably, manifestly, markedly, overtly, awfully, decidedly, discernibly, incontestably, difficultly, hardly, inevitably, enormously, trepidatingly, pointedly, thankfully, seemingly, surely, undoubtedly, listlessly, resentfully, resourcefully, heedlessly, apparently, certainly, treadingly, apprehensively, scruffily, theoretically, pompously, technically, tediously, turgidly, bombastically, faithfully, desperately, yesterday, precisely, suspiciously, tomorrow, evenly, today, stormily, baroquely, symmetrically, always, sympathetically, contemplatively, angrily, gingerly, sharply, cautiously, aggressively, wildly, nicely, contentfully, anarchically, inadvertently, carelessly, fastidiously, savagely, lasciviously, acceptably, lecherously, notably, shockingly, audaciously, pleasantly, flabbergastedly, salaciously, stiffly, frantically, transparently, translucently, beatifically, illuminatingly, gorgeously, dazzlingly, accidentally, incidentally, hastily, quickly, swiftly, speedily, fast, singularly, distinctively, uniquely, individually, enduringly, boldly, brashly, redundantly, complexly, fiercely, strongly, stertorously, inextricably, softly, abstractly, slumberously, warmly, quizically, stuporously, opportunistically, hideously, fortunately, massively, covertly, tenebrously, obfuscatingly, shadily, weightily, electrically, diffidently, naively, shinily, perspicaciously, alertly, sturdily, sorrily, observantly, perceptively, dutifully, amiably, disgracefully, disreputably, inadequately, obediently, tightly, reluctantly, bashfully, mildly, passionately, sublimely, demurely, acquiescently, still, defeatedly, hypnotically, terrifically, bewitchingly, entrancingly, logically, wakingly, incompletely, corruptingly, mortally, confidently, assuredly, another, coolly, comedically, heretically, noticeably, ridiculously, swimmingly, grandly, claspingly, determinedly, jumpily, lovingly, winningly, triumphantly, reprehensibly, tempestuously, wistfully, forgetfully, horrendously, horribly, windily, horrifically, close, closely, prominently, recognisably, morbidly, drowsily, languidly, tiredly, impulsively, hellishly, assertively, metaphorically, capably, figuratively, metonymically, recklessly, rashly, adverbially, analytically, licentiously, grotesquely, brutally, outrageously, draggingly, sensitively, perkily, merrily, sensibly, infernally, devilishly, demonically, glacially, undeniably, luckily, dexterously, persuadingly, ploddingly, dreadfully, stoutly, inquisitively, inquiringly, sprightly, shoddily, unforgivably and well.

[2: there is no order to the above due to the ad hoc way the list was developed. After a certain point I took a perverse delight in breaking up chunks of related words with the whatever new thing I just thought of. You can easily get a feel for someone's basic dispositions in life by looking at how they structure source code.]

Part 3 - Understanding the Player's Command

The understood command is an indexed text which varies. [2: This is a sort of text bucket where I put the player's command which is then manipulated and then checked to see whether whatever remains matches an adverb in the table of dancing.]

Dance style is an indexed text that varies. Dance style is "[bracket]adverbially[close bracket]". [2: this is what gets displayed in the header. It starts with an instruction as to how to play the game.]

[2: The following is the work-engine of the game,]
After reading a command:
	if the player's command includes "restart", try restarting the game instead;
	if the player's command includes "save", try saving the game instead;
	if the player's command includes "quit", try quitting the game instead;
	if the player's command includes "restore", try restoring the game instead;
	now the understood command is the player's command;
	if the understood command is "dance", say "[one of]Can she just dance? No she must dance some way[or]Can the moon just glow? No it mournfully glows[or]Can the nightingale just sing? No it must sing sweetly[or]Can leaves just lie? No they must lie still[cycling]." instead;
	if the player's command includes "so/danse/in/dance/a/very/with/extremely/the" begin;
	cut the matched text;
	now the understood command is the player's command;
	end if;
	if the player's command includes "danse/in/dance/a/at/very/with/extremely/the" begin;
	cut the matched text;
	now the understood command is the player's command;
	end if;
	if the player's command includes "danse/in/dance/a/very/with/extremely/the" begin;
	cut the matched text;
	now the understood command is the player's command;
	end if;
	if the number of words in the understood command is greater than two begin;
	say "" instead;
	end if;
	if the understood command is "xyzzy", say "No magic word can save the lady now,[line break]to stop her dancing she must dance some more." instead;
	if the player's command includes "[forbidden]", say "The only thing the lady does is dance,[line break]her only choice is in the way she does." instead;
	if the player's command includes "[manner]" begin;
		now dance style is the matched text;
	otherwise if the player's command includes "[extraneous]";
	now dance style is "the [the matched text]";
	otherwise if the player's command includes "[objection]";
	now dance style is "in a [the matched text]";
	otherwise if the player's command includes "[couple]";
	now dance style is "with [the matched text in title case]";
	otherwise if the player's command includes "[night]";
	now dance style is "nocturnally";
		otherwise;
		say "[one of]The lady dances many other ways[or]This one's imagination dances on[or]The lady only dances how she can[cycling]." instead; [2: added a bit more variety to the 'I didn't understand you' response'.] 
		end if.

Forbidden is a kind of value. The forbidden is look, l, examine, sing, inventory, i, wait, z.

When play begins:
	now the left hand status line is ">dance [dance style]";
	now the right hand status line is "";
	now the command prompt is "".

[2: This is the beginning of the poem, as a room description. The poem name is the name of the room. It's not possible to 'look' so there's no danger of the opening stanza being repeated. For the second edition I mixed up the last few lines to add some different suggestions.]

The Twilight Dance is a room. "It is always twilight in Ingelheim,[line break]in the forest the lady slides across[line break]the crumpled leaves entranced by Elbegast.[line break]Her nightclothes sweep the same old lemniscate,[line break]with Elbegast's wood gauntlets at her waist.[line break]Tired eyes gaze listlessly, with lips shut tight.[line break]The lady longs to end the dance, but she[line break]cannot. The only thing she does is dance...[line break]Oft [one of]gracefully[or]forlornly[or]doubtfully[or]eagerly[or]pettily[or]sincerely[or]shakily[at random] or [one of]solemnly[or]sleepily[or]tenderly[or]airily[or]carefully[or]steadily[or]ruefully[at random] or [one of]sweetly[or]poorly[or]slyly[or]slowly[or]nobly[or]weakly[or]coyly[or]tightly[at random][line break]or more often, reluctantly. But[line break]she always dances inevitably.". The printed name of the twilight dance is "[no line break]".

Understand "dance [text]", "[text]" and "[text] dance" as dancing.
	
Dancing is an action applying to one topic. 
	
	Report dancing a topic listed in the table of dancing:
	say "[elbegast entry][paragraph break]".

Part 4 - Endings	

To say end bad:
say "The lady dances so [dance style][line break]that Elbegast knows her to be his wife.[line break]'A fitting prize you were from Charlemagne,'[line break]he says and smiles as she forgets the name[line break]and face of Eggerich von Eggermond.";
end the story finally saying "***"

To say end majesty:
say "The lady is of course of royal blood,[line break]The sister of King Charlemagne himself.[line break]Though once an outlaw stranger, Elbegast[line break]proclaims himself the king of elf and dwarf[line break]and maybe man, yes maybe one true king.[line break]And so a different deadly dance begins.";
end the story finally saying "***"

To say end thanks:
say "In time the lady comes to love the man[line break]the man that loves to dance. Together they[line break]will dance the forest floor of Ingelheim.[line break]Together they will forget lands and men,[line break]and finally love, in endless passing time.";
end the story finally saying "***".

To say end seduce:
say "The lady softens Elbegast's resolve,[line break]no longer can he continue so firm.[line break]And with a sly glint in one of his eyes,[line break]he stops the dance so suddenly and says,[line break]'Perhaps there's something new that we could try?'";
end the story finally saying "***".

To say end monster:
say "Was Eggerich von Eggermond the fiend[line break]for plotting the king Charlemagne's demise?[line break]Could Eggerich really plot a king's end?[line break]Did Elbegast see through the King's disguise?[line break][line break]Is Charlemagne the monster for he gave[line break]his sister's hand to such a ghostly guest?[line break]Or do we hold the Elfen King to blame[line break]for accepting and dancing with his wife?[line break][line break]Throughout the dance the lady has declined[line break]and fiendish forces have entranced her now.[line break]So whomever was a monster before,[line break]is kith and kin to she who dances still.";
end the story finally saying "***".

To say end wake:
say "The scene collapses, Liutperga wakes.[line break]She blinks and yawns in hazy morning glow.[line break]'I will not marry Elbegast!' she cries.[line break]Her mother Ansa takes her daughter's hand,[line break]'But little Liutperga,' you're married![line break]'To Tassilo, may he make peace with God!'[line break]The lady touches her own tonsured head,[line break]and suddenly's unsure if she's awake!";
end the story finally saying "***".

To say end serene:
say "The lady faces but one forking path:[line break]Either their dancing ends or it does not.[line break]Accepting the unassailable in life,[line break]the lady treads her troubles underfoot,[line break]and is no more the one that men once married.";
end the story finally saying "***".

To say end clumsy:
say "But on it goes for dancing is eternal.[line break]Eternally they shrink and stagger on:[line break]She never accepting, vindictive, silent.[line break]He holding her unsympathetic, cold.[line break]The last lingering laugh of Eggermond,[line break]his dying cry immortalised in dance;[line break]his curse promised eternal pettiness.[line break]For on the forest floor of Ingelheim,[line break]the lady and Elbegast dance for all time.";
end the story finally saying "***".

Yourself is either peaceful or murderous. Yourself is peaceful.

Yourself is either sleepwalking or opportunistic. Yourself is sleepwalking.

To say murder:
	if the player is sleepwalking:
		say "With vicious strides the lady looks around,[line break]and hopes to find, observe, the means to kill.";
		now the player is murderous;
	otherwise:
		say "The branch so sharp! She thinks with vigour she[line break]could free herself with but a sudden shove...".
		
To say observant:
	if the player is peaceful:
		say "[one of]Quite listlessly the lady looks around,[line break]her partner frowning, 'Do I bore you sweet?'[or]The dance is all that she can see for now.[stopping]";
	otherwise:
		say "[one of]A gnarled oak grows beside the clearing where[line break]the mismatched partners shuffle slowly past.[line break]A vicious branch oft points towards the back[line break]of Elbegast who tugs his newly wed.[line break]A newly wed who's stronger than she looks...[or]This newly wed is stronger than she looks.[stopping]";
		now the player is opportunistic.
		
To say shove:
	if the player is peaceful:
		say "What little strength the lady shows she stores[line break]for strength to step her endless sleepless steps.";
	otherwise if the player is murderous:
		if the player is sleepwalking, say "A plan now slowly forms in mind, ah but,[line break]she needs to find the opportunity.";
		if the player is opportunistic, say "The time has come the noble lady thinks,[line break]to end for good this horrifying dance.[line break]They dance a final lemniscate across[line break]the twilight forest floor of Ingelheim.[line break]She dances 'til his back is to the spike[line break]with strength so hideous she shoves him hard![line break]He cries a tear, the spike ripping a tear[line break]through now bloodstained gut besmirched evening wear.[line break]Her second husband dead before her hands,[line break]the sun now rises first on Ingelheim.";
		end the story finally saying "***".
		
Yourself is either twisted or untwisted. Yourself is untwisted. Yourself is either musical or unmusical. Yourself is unmusical.

To say twist:
	if the player is unmusical:
		say "A sprucely step means nothing in a dance,[line break]if music is not stepped to artfully.";
		now the player is twisted;
	otherwise:
		say "Her ears had opened to a deeper song[line break]with steps unknown to all except herself.[line break]The king of twilight, Elbegast, believed[line break]himself to be the leader of the dance,[line break]so when his partner twisted him askance,[line break]he was surprised to find his lady leading him![line break]";
		end the story finally saying "***".
										
To say plan:
	say "[first time]At last she hears the dulcid dance's tune.[line break][']Tis if her ears are opened as a babe.[line break][only]Her supple limbs now flex to hidden beats.";
	now the player is musical.
										
												
		
To say end mad:
say "Hark now! Who is that couple dancing there?[line break]Dancing: him without smile; her without care?[line break]He asks, 'Where have you gone my sweet one, true?[line break]'If you've departed, I'm lost without you![line break]'I'll be despised by Charlemagne once more.[line break]'I cannot stand again to be an outlaw![line break]In breaking down the lady's fragile mind,[line break]Elbegast's fate is sealed in Ingelheim.";
end the story finally saying "***"

To say end angels:
say "'In Ingelheim's the angel's home,' [apostrophe]twas said,[line break]by Charlemagne awaking from his vision.[line break]That vision led to duels and outlaw schemes,[line break]it brought the death of Eggermond and others.[line break]Hark now! Do angels dance upon a pin?[line break]Or do they twirl along besides our couple?[line break]Are not our partners here in Ingelheim?[line break]And is it not the angel's home in heaven?";
end the story finally saying "***"

To say end bright:
say "'The sweet and bloodied girl that I once spied[line break]in the court of Eggermond is gone!'[line break]says Elbegast, 'I thought I knew you well,[line break]but I don't even know your name, in truth.[line break]Is it Redburga, Ida or even,[line break]Liutperga, the twice desired lady?'[line break]The noble outlaw stops the dance, admits,[line break]'I think it's time I learned something of you,[line break]'although we're man and wife by holy law,[line break]'I am a stranger.' She is free to walk.";
end the story finally saying "***"

To say end asleep:
say "She yawns, and says, 'I had an awful dream.'[line break]She blinks and Charlemagne is by her bed,[line break]'Sister, am I not a brother to you?[line break]And am I not your good and rightful king?[line break]For duty you must marry Elbegast.[line break]He is a fine and noble vassal knight,[line break]for though I loved him not he was my friend.[line break]He slew the treacherous Eggermond,[line break]and so of course you are the fitting prize...[line break]From bed she says, 'Be still, I am asleep!',[line break]then eyes shut tight, in hope of different dreams.";
end the story finally saying "***"

To say end magic:
say "She feels the power circle 'round her grow[line break]Her eyes alight, she stares at Elbegast.[line break]With croaking whisper unused voice she says,[line break]'The dance is mine to lead or leave my love!'";
end the story finally saying "***"

To say end true:
say "'I'd have you speak your mind my love,' says he[line break]that won the lady as a prize for good.[line break]'I could never come to love you,' she says,[line break]'but in that you're the same as Eggerich.'[line break]He nods. He doesn't really need her love,[line break]He only needs her hands in his to dance.";
end the story finally saying "***"

To say end illegal:
say "The temptation to run and slink abounds.[line break]Now furtive husband peers and peeks around.[line break]He's looking for escape, and looks just like her.[line break]He knows he has to be again an outlaw.[line break]He takes her hands away and turns one last time,[line break]'It's been nice, but now I must have me-time...'";
end the story finally saying "***"

To say end memory:
say "'If I had shut the door when Eggerich[line break]was sowing seeds of Charlemagne's demise...'[line break]'Then,' says the elf, 'I'd not have heard him sow,[line break]and he'd have reaped the death of Charlemagne.'[line break]'And I'd be still the wife of Eggerich.'[line break]'But that is not the path that fate has paved.'[line break]'That's true,' though she wishes it wasn't.";
end the story finally saying "***"

To say end damp: [2: this is a silly occult-tick-box ending and I considered omitting it, but I wanted a good response for 'atavistically'.]
say "Beneath the waves that wash beneath the world[line break]a ceph'lopodic tangling twist of limbs[line break]unpick and twirl in perfect symmetry:[line break]the pair will dance above, so as below.";
end the story finally saying "***"

To say end quiet:
say "The possibility of glamoured sight[line break]leads Elbegast to pause and fumble with[line break]the straps of both his wooden gauntlets.[line break]The lady spots her moment, pulling free.[line break]And in the woods of Ingelheim beyond[line break]the grasp of Elbegast and other men,[line break]she still is sometimes seen but never heard.";
end the story finally saying "***"

To say end endlessly:
end the story finally saying "It is always twilight in Ingelheim..."

Part 5 - Clean-up

[2: The following commands remove the possibility of there being any game response to non-dancing commands.]

Understand the commands "take", "carry", "hold", "get" and "pick" as something new.
Understand the command "stand" as something new.
Understand the commands "remove", "shed", "doff", "wear" and "don" as something new.
Understand the commands "put", "insert", "drop", "throw" and "discard" as something new.
Understand the commands "give", "pay", "offer", "feed", "show", "present" and "display" as something new.
Understand the commands "go", "walk" and "run" as something new.
Understand the commands "inventory", "i" and "inv" as something new.
Understand the commands "look", "l" and "consult" as something new.
Understand the commands "open", "unwrap", "uncover", "close", "shut" and "cover" as something new.
Understand the commands "enter", "cross", "sit", "exit", "leave" and "out" as something new.
Understand the commands "examine", "x", "watch", "describe", "check" and "read" as something new.
Understand the commands "yes", "y", "no" and "sorry" as something new.
Understand the commands "bother", "curses", "drat", "darn", "shit", "fuck" and "damn" as something new.
Understand the command "search" as something new.
Understand the command "wave" as something new.
Understand the commands "set" and "adjust" as something new.
Understand the commands "pull", "drag", "push", "move", "shift", "clear" and "press" as something new.
Understand the commands "turn", "rotate", "twist", "unscrew", "screw", and "switch" as something new.
Understand the commands "lock" and "unlock" as something new.
Understand the commands "attack", "break", "smash", "hit", "fight", "torture", "wreck", "crack", "destroy", "murder", "kill", "punch" and "thump" as something new.
Understand the commands "wait" and "z" as something new.
Understand the commands "answer", "say", "shout", "speak", "tell" and "ask" as something new.
Understand the command "eat" as something new.
Understand the commands "sleep" and "nap" as something new.
Understand the command "sing" as something new.
Understand the commands "climb" and "scale" as something new.
Understand the commands "buy" and "purchase" as something new.
Understand the commands "squeeze" and "squash" as something new.
Understand the commands "take", "carry", "hold", "get" and "pick" as something new.
Understand the command "swing" as something new.
Understand the commands "wake", "awake" and "awaken" as something new.
Understand the commands "kiss", "embrace" and "hug" as something new.
Understand the commands "think" as something new.
Understand the commands "smell", "sniff", "listen", "hear", "taste" and "touch" as something new.
Understand the commands "rub", "shine", "polish", "sweep", "clean", "dust", "wipe", and "scrub" as something new.
Understand the commands "tie", "attach" and "fasten" as something new.
Understand the commands "burn" and "light" as something new.
Understand the commands "drink", "swallow" and "sip" as something new.
Understand the commands "cut", "slice", "prune" and "chop" as something new.
Understand the commands "jump", "skip" and "hop" as something new.

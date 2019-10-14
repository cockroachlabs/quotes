package main

import (
	"encoding/csv"
	"log"
	"os"
	"strconv"

	"github.com/google/uuid"
)

func main() {
	f, err := os.OpenFile("quotes.csv", os.O_CREATE|os.O_TRUNC|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatal(err)
	}
	w := csv.NewWriter(f)

	for _, q := range startrekQuotes {
		record := make([]string, 5)
		record[colQuote] = q[colQuote].(string)
		record[colSpeakers] = q[colSpeakers].(string)
		if q[colStardate] != nil {
			record[colStardate] = strconv.FormatFloat(q[colStardate].(float64), 'f', 1, 64)
		}
		record[colEpisode] = strconv.Itoa(q[colEpisode].(int))

		if id, err := uuid.NewRandom(); err == nil {
			record[colUUID] = id.String()
		} else {
			log.Fatal(err)
		}
		if err := w.Write(record); err != nil {
			log.Fatal(err)
		}
	}

	w.Flush()
	if err := f.Close(); err != nil {
		log.Fatal(err)
	}
}

const (
	colQuote int = iota
	colSpeakers
	colStardate
	colEpisode
	colUUID
)

var startrekQuotes = [...][]interface{}{
	{`"... freedom ... is a worship word..." "It is our worship word too."`, `Cloud William and Kirk`, nil, 52},
	{`"Beauty is transitory." "Beauty survives."`, `Spock and Kirk`, nil, 72},
	{`"Can you imagine how life could be improved if we could do away with jealousy, greed, hate ..." "It can also be improved by eliminating love, tenderness, sentiment -- the other side of the coin"`, `Dr. Roger Corby and Kirk`, 2712.4, 7},
	{`"Evil does seek to maintain power by suppressing the truth." "Or by misleading the innocent."`, `Spock and McCoy`, 5029.5, 59},
	{`"Get back to your stations!" "We're beaming down to the planet, sir."`, `Kirk and Mr. Leslie`, 3417.3, 24},
	{`"I think they're going to take all this money that we spend now on war and death --" "And make them spend it on life."`, `Edith Keeler and Kirk`, nil, 28},
	{`"It's hard to believe that something which is neither seen nor felt can do so much harm." "That's true.  But an idea can't be seen or felt.  And that's what kept the Troglytes in the mines all these centuries.  A mistaken idea."`, `Vanna and Kirk`, 5819.0, 76},
	{`"Life and death are seldom logical." "But attaining a desired goal always is."`, `McCoy and Spock`, 2821.7, 16},
	{`"Logic and practical information do not seem to apply here." "You admit that?" "To deny the facts would be illogical, Doctor"`, `Spock and McCoy`, nil, 46},
	{`"No one talks peace unless he's ready to back it up with war." "He talks of peace if it is the only way to live."`, `Colonel Green and Surak of Vulcan`, 5906.5, 77},
	{`"That unit is a woman." "A mass of conflicting impulses."`, `Spock and Nomad`, 3541.9, 32},
	{`"The combination of a number of things to make existence worthwhile." "Yes, the philosophy of 'none,' meaning 'all.'"`, `Spock and Lincoln`, 5906.4, 77},
	{`"The glory of creation is in its infinite diversity." "And in the way our differences combine to create meaning and beauty."`, `Dr. Miranda Jones and Spock`, 5630.8, 60},
	{`"The release of emotion is what keeps us healthy.  Emotionally healthy." "That may be, Doctor.  However, I have noted that the healthy release of emotion is frequently unhealthy for those closest to you."`, `McCoy and Spock`, 5784.3, 65},
	{`"There's only one kind of woman ..." "Or man, for that matter.  You either believe in yourself or you don't."`, `Kirk and Harry Mudd`, 1330.1, 6},
	{`"We have the right to survive!" "Not by killing others."`, `Deela and Kirk`, 5710.5, 66},
	{`"What a terrible way to die." "There are no good ways."`, `Sulu and Kirk`, nil, 72},
	{`"What happened to the crewman?" "The M-5 computer needed a new power source, the crewman merely got in the way."`, `Kirk and Dr. Richard Daystrom`, 4731.3, 53},
	{`... bacteriological warfare ... hard to believe we were once foolish enough to play around with that.`, `McCoy`, nil, 52},
	{`... The prejudices people feel about each other disappear when they get to know each other.`, `Kirk`, 4372.5, 68},
	{`... The things love can drive a man to -- the ecstasies, the miseries, the broken rules, the desperate chances, the glorious failures and the glorious victories.`, `McCoy`, 5843.7, 74},
	{`A father doesn't destroy his children.`, `Lt. Carolyn Palamas`, 3468.1, 31},
	{`A little suffering is good for the soul.`, `Kirk`, 1514.0, 10},
	{`A man either lives life as it happens to him, meets it head-on and licks it, or he turns his back on it and starts to wither away.`, `Dr. Boyce`, nil, 11},
	{`A princess should not be afraid -- not with a brave knight to protect her.`, `McCoy`, 3025.3, 15},
	{`A star captain's most solemn oath is that he will give his life, even his entire crew, rather than violate the Prime Directive.`, `Kirk`, nil, 52},
	{`A Vulcan can no sooner be disloyal than he can exist without breathing.`, `Kirk`, 3012.4, 11},
	{`A woman should have compassion.`, `Kirk`, 3018.2, 36},
	{`Actual war is a very messy business.  Very, very messy business.`, `Kirk`, 3193.0, 23},
	{`After a time, you may find that "having" is not so pleasing a thing, after all, as "wanting."  It is not logical, but it is often true.`, `Spock`, 3372.7, 30},
	{`All your people must learn before you can reach for the stars.`, `Kirk`, 3259.2, 45},
	{`Another Armenia, Belgium ... the weak innocents who always seem to be located on a natural invasion route.`, `Kirk`, 3198.4, 26},
	{`Another dream that failed.  There's nothing sadder.`, `Kirk`, 3417.3, 24},
	{`Another war ... must it always be so?  How many comrades have we lost in this way? ...  Obedience.  Duty.  Death, and more death ...`, `Romulan Commander`, 1709.2, 14},
	{`Behind every great man, there is a woman -- urging him on.`, `Harry Mudd`, 4513.3, 37},
	{`Blast medicine anyway!  We've learned to tie into every organ in the human body but one.  The brain!  The brain is what life is all about.`, `McCoy`, 3012.4, 11},
	{`But it's real.  And if it's real it can be affected ...  we may not be able to break it, but, I'll bet you credits to Navy Beans we can put a dent in it.`, `deSalle`, 3018.2, 36},
	{`Change is the essential process of all existence.`, `Spock`, 5730.2, 70},
	{`Compassion -- that's the one thing no machine ever had.  Maybe it's the one thing that keeps men ahead of them.`, `McCoy`, 4731.3, 53},
	{`Computers make excellent and efficient servants, but I have no wish to serve under them.  Captain, a starship also runs on loyalty to one man.  And nothing can replace it or him.`, `Spock`, 4729.4, 53},
	{`Conquest is easy. Control is not.`, `Kirk`, nil, 33},
	{`Death.  Destruction.  Disease.  Horror.  That's what war is all about. That's what makes it a thing to be avoided.`, `Kirk`, 3193.0, 23},
	{`Death, when unnecessary, is a tragic thing.`, `Flint`, 5843.7, 74},
	{`Do you know about being with somebody?  Wanting to be?  If I had the whole universe, I'd give it to you, Janice.  When I see you, I feel like I'm hungry all over.  Do you know how that feels?`, `Charlie Evans`, 1535.8, 2},
	{`Do you know the one -- "All I ask is a tall ship, and a star to steer her by ..."  You could feel the wind at your back, about you ...  the sounds of the sea beneath you.  And even if you take away the wind and the water, it's still the same.  The ship is yours ... you can feel her ... and the stars are still there.`, `Kirk`, 4729.4, 53},
	{`[Doctors and Bartenders], We both get the same two kinds of customers -- the living and the dying.`, `Dr. Boyce`, nil, 11},
	{`Each kiss is as the first.`, `Miramanee, Kirk's wife`, 4842.6, 58},
	{`Earth -- mother of the most beautiful women in the universe.`, `Apollo`, 3468.1, 31},
	{`Either one of us, by himself, is expendable.  Both of us are not.`, `Kirk`, 3196.1, 25},
	{`Emotions are alien to me.  I'm a scientist.`, `Spock`, 3417.3, 24},
	{`Even historians fail to learn from history -- they repeat the same mistakes.`, `John Gill`, 2534.7, 50},
	{`Every living thing wants to survive.`, `Spock`, 4731.3, 53},
	{`Extreme feminine beauty is always disturbing.`, `Spock`, 5818.4, 76},
	{`Fascinating, a totally parochial attitude.`, `Spock`, 3219.8, 38},
	{`Fascinating is a word I use for the unexpected.`, `Spock`, 2124.5, 17},
	{`First study the enemy.  Seek weakness.`, `Romulan Commander`, 1709.2, 14},
	{`Four thousand throats may be cut in one night by a running man.`, `Klingon Soldier`, nil, 62},
	{`Genius doesn't work on an assembly line basis.  You can't simply say, "Today I will be brilliant."`, `Kirk`, 4731.3, 53},
	{`He's dead, Jim`, `McCoy`, 3196.1, 25},
	{`History tends to exaggerate.`, `Col. Green`, 5906.4, 77},
	{`Humans do claim a great deal for that particular emotion (love).`, `Spock`, 5725.6, 73},
	{`I am pleased to see that we have differences.  May we together become greater than the sum of both of us.`, `Surak of Vulcan`, 5906.4, 77},
	{`I have never understood the female capacity to avoid a direct answer to any question.`, `Spock`, 3417.3, 24},
	{`I object to intellect without discipline;  I object to power without constructive purpose.`, `Spock`, 2124.5, 17},
	{`I realize that command does have its fascination, even under circumstances such as these, but I neither enjoy the idea of command nor am I frightened of it.  It simply exists, and I will do whatever logically needs to be done.`, `Spock`, 2812.7, 16},
	{`I thought my people would grow tired of killing.  But you were right, they see it is easier than trading.  And it has its pleasures.  I feel it myself.  Like the hunt, but with richer rewards.`, `Apella`, 4211.8, 48},
	{`If a man had a child who'd gone anti-social, killed perhaps, he'd still tend to protect that child.`, `McCoy`, 4731.3, 53},
	{`If I can have honesty, it's easier to overlook mistakes.`, `Kirk`, 3141.9, 22},
	{`If some day we are defeated, well, war has its fortunes, good and bad.`, `Commander Kor`, 3201.7, 26},
	{`If there are self-made purgatories, then we all have to live in them.`, `Spock`, 3417.7, 24},
	{`I'm a soldier, not a diplomat.  I can only tell the truth.`, `Kirk`, 3198.9, 26},
	{`I'm frequently appalled by the low regard you Earthmen have for life.`, `Spock`, 2822.3, 16},
	{`Immortality consists largely of boredom.`, `Zefrem Cochrane`, 3219.8, 38},
	{`In the strict scientific sense we all feed on death -- even vegetarians.`, `Spock`, 3615.4, 43},
	{`Insufficient facts always invite danger.`, `Spock`, 3141.9, 22},
	{`Insults are effective only where emotion is present.`, `Spock`, 3468.1, 31},
	{`Intuition, however illogical, is recognized as a command prerogative.`, `Kirk`, 3620.7, 42},
	{`Is not that the nature of men and women -- that the pleasure is in the learning of each other?`, `Natira, the High Priestess of Yonada`, 5476.3, 63},
	{`Is truth not truth for all?`, `Natira`, 5476.4, 63},
	{`It [being a Vulcan] means to adopt a philosophy, a way of life which is logical and beneficial.  We cannot disregard that philosophy merely for personal gain, no matter how important that gain might be.`, `Spock`, 3842.4, 39},
	{`It is a human characteristic to love little animals, especially if they're attractive in some way.`, `McCoy`, 4525.6, 44},
	{`It is more rational to sacrifice one life than six.`, `Spock`, 2822.3, 16},
	{`It is necessary to have purpose.`, `Alice #1`, 4513.3, 37},
	{`It is undignified for a woman to play servant to a man who is not hers.`, `Spock`, 3372.7, 30},
	{`It would be illogical to assume that all conditions remain stable.`, `Spock`, 5027.3, 57},
	{`It would be illogical to kill without reason`, `Spock`, 3842.4, 39},
	{`It would seem that evil retreats when forcibly confronted`, `Yarnek of Excalbia`, 5906.5, 77},
	{`I've already got a female to worry about.  Her name is the Enterprise.`, `Kirk`, 1514.0, 10},
	{`Killing is stupid; useless!`, `McCoy`, 4211.8, 48},
	{`Killing is wrong.`, `Losira`, nil, 72},
	{`Knowledge, sir, should be free to all!`, `Harry Mudd`, 4513.3, 37},
	{`Landru! Guide us!`, `A Beta 3-oid`, 3157.4, 21},
	{`Leave bigotry in your quarters; there's no room for it on the bridge.`, `Kirk`, 1709.2, 14},
	{`Live long and prosper.`, `Spock`, 3372.7, 30},
	{`Lots of people drink from the wrong bottle sometimes.`, `Edith Keeler`, nil, 28},
	{`Love sometimes expresses itself in sacrifice.`, `Kirk`, 3220.3, 38},
	{`Madness has no purpose.  Or reason.  But it may have a goal.`, `Spock`, 3088.7, 27},
	{`Many Myths are based on truth`, `Spock`, 5832.3, 75},
	{`Men don't talk peace unless they're ready to back it up with war.`, `Col. Green`, 5906.4, 77},
	{`Men of peace usually are [brave].`, `Spock`, 5906.5, 77},
	{`Men will always be men -- no matter where they are.`, `Harry Mudd`, 1329.8, 6},
	{`Military secrets are the most fleeting of all.`, `Spock`, 5027.4, 57},
	{`Most legends have their basis in facts.`, `Kirk`, 5029.5, 59},
	{`Murder is contrary to the laws of man and God.`, `M-5 Computer`, 4731.3, 53},
	{`No more blah, blah, blah!`, `Kirk`, 2713.6, 8},
	{`No one can guarantee the actions of another.`, `Spock`, nil, 62},
	{`No one may kill a man.  Not for any purpose.  It cannot be condoned.`, `Kirk`, 5431.6, 56},
	{`No one wants war.`, `Kirk`, 3201.7, 26},
	{`No problem is insoluble.`, `Dr. Janet Wallace`, 3479.4, 41},
	{`Not one hundred percent efficient, of course ... but nothing ever is.`, `Kirk`, 3219.8, 38},
	{`Oblivion together does not frighten me, beloved.`, `Thalassa (in Anne Mulhall's body)`, 4770.3, 49},
	{`Oh, that sound of male ego.  You travel halfway across the galaxy and it's still the same song.`, `Eve McHuron`, 1330.1, 6},
	{`On my planet, to rest is to rest -- to cease using energy.  To me, it is quite illogical to run up and down on green grass, using energy, instead of saving it.`, `Spock`, 3025.2, 15},
	{`One does not thank logic.`, `Sarek`, 3842.4, 39},
	{`One of the advantages of being a captain is being able to ask for advice without necessarily having to take it.`, `Kirk`, 2715.2, 9},
	{`Only a fool fights in a burning house.`, `Kang the Klingon`, nil, 62},
	{`Our missions are peaceful -- not for conquest.  When we do battle, it is only because we have no choice.`, `Kirk`, 2124.5, 17},
	{`Our way is peace.`, `Septimus, the Son Worshiper`, 4040.7, 54},
	{`Pain is a thing of the mind.  The mind can be controlled.`, `Spock`, 3287.2, 29},
	{`Peace was the way.`, `Kirk`, nil, 28},
	{`Power is danger.`, `The Centurion`, 1709.2, 14},
	{`Prepare for tomorrow -- get ready.`, `Edith Keeler`, nil, 28},
	{`Punishment becomes ineffective after a certain point.  Men become insensitive.`, `Eneg`, 2534.7, 50},
	{`Respect is a rational process`, `McCoy`, 2822.3, 16},
	{`Romulan women are not like Vulcan females.  We are not dedicated to pure logic and the sterility of non-emotion.`, `Romulan Commander`, 5027.3, 57},
	{`Schshschshchsch.`, `The Gorn`, 3046.2, 18},
	{`Sometimes a feeling is all we humans have to go on.`, `Kirk`, 3193.9, 23},
	{`Sometimes a man will tell his bartender things he'll never tell his doctor.`, `Dr. Phillip Boyce`, nil, 11},
	{`Suffocating together ... would create heroic camaraderie.`, `Khan Noonian Singh`, 3142.8, 22},
	{`Superior ability breeds superior ambition.`, `Spock`, 3141.9, 22},
	{`The face of war has never changed.  Surely it is more logical to heal than to kill.`, `Surak of Vulcan`, 5906.5, 77},
	{`The games have always strengthened us.  Death becomes a familiar pattern.  We don't fear it as you do.`, `Proconsul Marcus Claudius`, 4041.2, 54},
	{`The heart is not a logical organ.`, `Dr. Janet Wallace`, 3479.4, 41},
	{`The idea of male and female are universal constants.`, `Kirk`, 3219.8, 38},
	{`The joys of love made her human and the agonies of love destroyed her.`, `Spock`, 5842.8, 74},
	{`The man on tops walks a lonely street; the "chain" of command is often a noose.`, `McCoy`, 2818.9, 13},
	{`The more complex the mind, the greater the need for the simplicity of play.`, `Kirk`, 3025.8, 15},
	{`The only solution is ... a balance of power.  We arm our side with exactly that much more.  A balance of power -- the trickiest, most difficult, dirtiest game of them all.  But the only one that preserves both sides.`, `Kirk`, 4211.8, 48},
	{`The people of Gideon have always believed that life is sacred.  That the love of life is the greatest gift ... We are incapable of destroying or interfering with the creation of that which we love so deeply -- life in every form from fetus to developed being.`, `Hodin of Gideon`, 5423.4, 71},
	{`The sight of death frightens them [Earthers].`, `Kras the Klingon`, 3497.2, 40},
	{`The sooner our happiness together begins, the longer it will last.`, `Miramanee`, 4842.6, 58},
	{`There are always alternatives.`, `Spock`, 2822.3, 16},
	{`There are certain things men must do to remain men.`, `Kirk`, 4929.4, 53},
	{`There are some things worth dying for.`, `Kirk`, 3201.7, 26},
	{`There comes to all races an ultimate crisis which you have yet to face .... One day our minds became so powerful we dared think of ourselves as gods.`, `Sargon`, 4768.3, 49},
	{`There is a multi-legged creature crawling on your shoulder.`, `Spock`, 3193.9, 23},
	{`There is an old custom among my people.  When a woman saves a man's life, he is grateful.`, `Nona, the Kanuto witch woman`, 4211.8, 48},
	{`There is an order of things in this universe.`, `Apollo`, 3468.1, 31},
	{`There's a way out of any cage.`, `Captain Christopher Pike`, nil, 11},
	{`There's another way to survive.  Mutual trust -- and help.`, `Kirk`, nil, 62},
	{`There's no honorable way to kill, no gentle way to destroy.  There is nothing good in war.  Except its ending.`, `Abraham Lincoln`, 5906.5, 77},
	{`There's nothing disgusting about it [the Companion].  It's just another life form, that's all.  You get used to those things.`, `McCoy`, 3219.8, 38},
	{`This cultural mystique surrounding the biological function -- you realize humans are overly preoccupied with the subject.`, `Kelinda the Kelvan`, 4658.9, 51},
	{`Those who hate and fight must stop themselves -- otherwise it is not stopped.`, `Spock`, nil, 62},
	{`Time is fluid ... like a river with currents, eddies, backwash.`, `Spock`, 3134.0, 28},
	{`To live is always desirable.`, `Eleen the Capellan`, 3498.9, 40},
	{`Too much of anything, even love, isn't necessarily a good thing.`, `Kirk`, 4525.6, 44},
	{`Totally illogical, there was no chance.`, `Spock`, 2822.3, 16},
	{`Uncontrolled power will turn even saints into savages.  And we can all be counted on to live down to our lowest impulses.`, `Parmen`, 5784.3, 65},
	{`Violence in reality is quite different from theory.`, `Spock`, 5818.4, 76},
	{`Virtue is a relative term.`, `Spock`, 3499.1, 40},
	{`Vulcans believe peace should not depend on force.`, `Amanda`, 3842.3, 39},
	{`Vulcans do not approve of violence.`, `Spock`, 3842.4, 39},
	{`Vulcans never bluff.`, `Spock`, 4202.1, 35},
	{`Vulcans worship peace above all.`, `McCoy`, 4768.3, 49},
	{`Wait!  You have not been prepared!`, `Mr. Atoz`, 3113.2, 19},
	{`[War] is instinctive.  But the instinct can be fought.  We're human beings with the blood of a million savage years on our hands!  But we can stop it.  We can admit that we're killers ... but we're not going to kill today.  That's all it takes!  Knowing that we're not going to kill today!`, `Kirk`, 3193.0, 23},
	{`War is never imperative.`, `McCoy`, 1709.2, 14},
	{`War isn't a good life, but it's life.`, `Kirk`, 4211.8, 48},
	{`We do not colonize.  We conquer.  We rule.  There is no other way for us.`, `Rojan`, 4657.5, 51},
	{`We fight only when there is no other choice.  We prefer the ways of peaceful contact.`, `Kirk`, 4385.3, 61},
	{`We have found all life forms in the galaxy are capable of superior development.`, `Kirk`, 3211.7, 45},
	{`We have phasers, I vote we blast 'em!`, `Bailey`, 1514.2, 10},
	{`We Klingons believe as you do -- the sick should die.  Only the strong should live.`, `Kras`, 3497.2, 40},
	{`We're all sorry for the other guy when he loses his job to a machine. But when it comes to your job -- that's different.  And it always will be different.`, `McCoy`, 4729.4, 53},
	{`What kind of love is that?  Not to be loved; never to have shown love.`, `Commissioner Nancy Hedford`, 3219.8, 38},
	{`When a child is taught ... it's programmed with simple instructions -- and at some point, if its mind develops properly, it exceeds the sum of what it was taught, thinks independently.`, `Dr. Richard Daystrom`, 4731.3, 53},
	{`When dreams become more important than reality, you give up travel, building, creating; you even forget how to repair the machines left behind by your ancestors.  You just sit living and reliving other lives left behind in the thought records.`, `Vina`, nil, 11},
	{`Where there's no emotion, there's no motive for violence.`, `Spock`, 2715.1, 9},
	{`Witch!  Witch!  They'll burn ya!`, `Hag`, nil, 19},
	{`Without facts, the decision cannot be made logically.  You must rely on your human intuition.`, `Spock`, nil, 55},
	{`Without followers, evil cannot spread.`, `Spock`, 5029.5, 59},
	{`Without freedom of choice there is no creativity.`, `Kirk`, 3157.4, 21},
	{`Women are more easily and more deeply terrified ... generating more sheer horror than the male of the species.`, `Spock`, 3615.4, 43},
	{`Women professionals do tend to over-compensate.`, `Dr. Elizabeth Dehner`, 1312.9, 3},
	{`Worlds may change, galaxies disintegrate, but a woman always remains a woman.`, `Kirk`, 2818.9, 13},
	{`Yes, it is written.  Good shall always destroy evil.`, `Sirah the Yang`, nil, 52},
	{`You!  What PLANET is this?!`, `McCoy`, 3134.0, 28},
	{`You are an excellent tactician, Captain.  You let your second in command attack while you sit and watch for weakness.`, `Khan Noonian Singh`, 3141.9, 22},
	{`You can't evaluate a man by logic alone.`, `McCoy`, 4513.3, 37},
	{`You Earth people glorified organized violence for forty centuries.  But you imprison those who employ it privately.`, `Spock`, 2715.1, 9},
	{`You go slow, be gentle.  It's no one-way street -- you know how you feel and that's all.  It's how the girl feels too.  Don't press.  If the girl feels anything for you at all, you'll know.`, `Kirk`, 1535.8, 2},
	{`You humans have that emotional need to express gratitude.  "You're welcome," I believe, is the correct response.`, `Spock`, 4041.2, 54},
	{`You say you are lying.  But if everything you say is a lie, then you are telling the truth.  You cannot tell the truth because everything you say is a lie.  You lie, you tell the truth ... but you cannot, for you lie.`, `Norman the android`, 4513.3, 37},
	{`You speak of courage.  Obviously you do not know the difference between courage and foolhardiness.  Always it is the brave ones who die, the soldiers.`, `Kor, the Klingon Commander`, 3201.7, 26},
	{`You'll learn something about men and women -- the way they're supposed to be.  Caring for each other, being happy with each other, being good to each other.  That's what we call love.  You'll like that a lot.`, `Kirk`, 3715.6, 34},
	{`You're dead, Jim.`, `McCoy`, 3372.7, 30},
	{`You're dead, Jim.`, `McCoy`, nil, 64},
	{`You're too beautiful to ignore.  Too much woman.`, `Kirk to Yeoman Rand`, nil, 5},
	{`Youth doesn't excuse everything.`, `Dr. Janice Lester (in Kirk's body)`, 5928.5, 79},
}

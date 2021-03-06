-- Generated from "cockroach dump"
CREATE TABLE quotes (
                        quote STRING NOT NULL,
                        characters STRING NOT NULL,
                        stardate DECIMAL NULL,
                        episode INT8 NOT NULL,
                        id UUID NOT NULL DEFAULT gen_random_uuid(),
                        CONSTRAINT "primary" PRIMARY KEY (id ASC),
                        FAMILY "primary" (quote, characters, stardate, episode, id)
);

INSERT INTO quotes (quote, characters, stardate, episode, id) VALUES
('History tends to exaggerate.', 'Col. Green', 5906.4, 77, '002b0674-8e83-4204-8265-d48c1ec13036'),
('Time is fluid ... like a river with currents, eddies, backwash.', 'Spock', 3134.0, 28, '014f8601-6244-46ad-a4d9-745f6251da78'),
('Men of peace usually are [brave].', 'Spock', 5906.5, 77, '01efdee0-75d4-4a67-8318-fc02afe79df0'),
('Totally illogical, there was no chance.', 'Spock', 2822.3, 16, '0220ff8c-dd55-4c1d-9429-aafd672f014f'),
('Behind every great man, there is a woman -- urging him on.', 'Harry Mudd', 4513.3, 37, '02ac853c-b3fc-42c7-b696-59a0f003bef4'),
('Conquest is easy. Control is not.', 'Kirk', NULL, 33, '09aa7052-8133-43da-b052-aa01b8f4cba0'),
(e'Sometimes a man will tell his bartender things he\'ll never tell his doctor.', 'Dr. Phillip Boyce', NULL, 11, '0d8bde65-1a0f-4187-acae-9d9a53d2a656'),
('... bacteriological warfare ... hard to believe we were once foolish enough to play around with that.', 'McCoy', NULL, 52, '0df10383-9213-4ddc-abd0-14e278b7d189'),
('A woman should have compassion.', 'Kirk', 3018.2, 36, '0f4d7131-b5f9-4aa7-aa22-889df24a07b5'),
(e'When a child is taught ... it\'s programmed with simple instructions -- and at some point, if its mind develops properly, it exceeds the sum of what it was taught, thinks independently.', 'Dr. Richard Daystrom', 4731.3, 53, '0fac6b87-11b6-4ed4-af51-f98aa38b3474'),
('Our missions are peaceful -- not for conquest.  When we do battle, it is only because we have no choice.', 'Kirk', 2124.5, 17, '10408d0a-779e-4b8c-9e30-4e78d05a39bc'),
(e'Death.  Destruction.  Disease.  Horror.  That\'s what war is all about. That\'s what makes it a thing to be avoided.', 'Kirk', 3193.0, 23, '128b1c08-ec88-4540-ace9-eb58c570f24b'),
('Change is the essential process of all existence.', 'Spock', 5730.2, 70, '15131823-f832-4d9c-aea6-42a2e6424060'),
('This cultural mystique surrounding the biological function -- you realize humans are overly preoccupied with the subject.', 'Kelinda the Kelvan', 4658.9, 51, '1564fbc1-70f4-4a5f-98f8-5ab358760a8c'),
(e'Men don\'t talk peace unless they\'re ready to back it up with war.', 'Col. Green', 5906.4, 77, '161ea7de-a80a-4a17-8210-a96838cd486e'),
('I thought my people would grow tired of killing.  But you were right, they see it is easier than trading.  And it has its pleasures.  I feel it myself.  Like the hunt, but with richer rewards.', 'Apella', 4211.8, 48, '165872cb-3c00-48ce-91bf-cd52ed7882a9'),
(e'Witch!  Witch!  They\'ll burn ya!', 'Hag', NULL, 19, '189d5e58-3008-4855-9842-16c0883a40df'),
('Without freedom of choice there is no creativity.', 'Kirk', 3157.4, 21, '1b0c4fea-3158-4016-9c90-fb7f662bc376'),
('Wait!  You have not been prepared!', 'Mr. Atoz', 3113.2, 19, '1da85bf5-aac1-41a9-b889-9f4a66928632'),
('Uncontrolled power will turn even saints into savages.  And we can all be counted on to live down to our lowest impulses.', 'Parmen', 5784.3, 65, '1db2ad40-5381-464a-81b2-8f1d04013204'),
(e'But it\'s real.  And if it\'s real it can be affected ...  we may not be able to break it, but, I\'ll bet you credits to Navy Beans we can put a dent in it.', 'deSalle', 3018.2, 36, '1e67758e-339c-4061-a52d-4c32258ba79f'),
('Romulan women are not like Vulcan females.  We are not dedicated to pure logic and the sterility of non-emotion.', 'Romulan Commander', 5027.3, 57, '224cbff5-0e76-44c2-a19a-f2e786b0b38f'),
('Military secrets are the most fleeting of all.', 'Spock', 5027.4, 57, '23ec8883-be69-40d1-a3ec-520f04252bed'),
('The joys of love made her human and the agonies of love destroyed her.', 'Spock', 5842.8, 74, '23ed6d4e-004b-4a7b-97d6-9904b1e538db'),
('"Can you imagine how life could be improved if we could do away with jealousy, greed, hate ..." "It can also be improved by eliminating love, tenderness, sentiment -- the other side of the coin"', 'Dr. Roger Corby and Kirk', 2712.4, 7, '26149b5f-ca6e-4ba7-92b4-7afbe183a412'),
('We have found all life forms in the galaxy are capable of superior development.', 'Kirk', 3211.7, 45, '263534ba-e0dc-450a-83ec-3e3c1e38d716'),
('Vulcans believe peace should not depend on force.', 'Amanda', 3842.3, 39, '278d6ecc-b809-4d92-ab9f-6cc4233ea76f'),
('... The prejudices people feel about each other disappear when they get to know each other.', 'Kirk', 4372.5, 68, '2989a9c8-e7a1-4810-9d58-ec271fbf75c4'),
('Landru! Guide us!', 'A Beta 3-oid', 3157.4, 21, '2ae5a0b1-2511-4d98-9baa-885e9a33e000'),
(e'"I think they\'re going to take all this money that we spend now on war and death --" "And make them spend it on life."', 'Edith Keeler and Kirk', NULL, 28, '2bd92de1-860a-4a4e-84d9-13344c9b5b2f'),
('All your people must learn before you can reach for the stars.', 'Kirk', 3259.2, 45, '2eec421c-0097-463a-9293-24feb5d538ce'),
('A man either lives life as it happens to him, meets it head-on and licks it, or he turns his back on it and starts to wither away.', 'Dr. Boyce', NULL, 11, '2f1f5563-321a-42b7-b5b8-ee0fefec8a99'),
(e'If a man had a child who\'d gone anti-social, killed perhaps, he\'d still tend to protect that child.', 'McCoy', 4731.3, 53, '2fd33019-e251-4cff-8da1-62342888886c'),
(e'Do you know the one -- "All I ask is a tall ship, and a star to steer her by ..."  You could feel the wind at your back, about you ...  the sounds of the sea beneath you.  And even if you take away the wind and the water, it\'s still the same.  The ship is yours ... you can feel her ... and the stars are still there.', 'Kirk', 4729.4, 53, '3009cd59-8ead-4312-9b3b-3fecf6d3316a'),
('"That unit is a woman." "A mass of conflicting impulses."', 'Spock and Nomad', 3541.9, 32, '31d804a4-b6bf-443e-b8dd-bccd193b9b26'),
(e'Too much of anything, even love, isn\'t necessarily a good thing.', 'Kirk', 4525.6, 44, '331bdaa8-fa55-40d4-b29d-0fff0fe4d373'),
('Love sometimes expresses itself in sacrifice.', 'Kirk', 3220.3, 38, '34152714-0060-48ad-88d5-f1e1a7c05335'),
('You are an excellent tactician, Captain.  You let your second in command attack while you sit and watch for weakness.', 'Khan Noonian Singh', 3141.9, 22, '36448718-47e5-40f3-abaa-eb052354ca30'),
('Murder is contrary to the laws of man and God.', 'M-5 Computer', 4731.3, 53, '37d31193-fec7-4052-ab9e-155d2024176d'),
(e'We\'re all sorry for the other guy when he loses his job to a machine. But when it comes to your job -- that\'s different.  And it always will be different.', 'McCoy', 4729.4, 53, '394acd9b-ed0c-4c12-a6e1-0f502f88f46c'),
('Fascinating is a word I use for the unexpected.', 'Spock', 2124.5, 17, '3e32a26e-aff8-4221-ad73-a640211f9193'),
('Worlds may change, galaxies disintegrate, but a woman always remains a woman.', 'Kirk', 2818.9, 13, '3e493fb5-d537-45f1-92c7-ee75cb5ad4c1'),
('Our way is peace.', 'Septimus, the Son Worshiper', 4040.7, 54, '3f478eaf-a7f3-407d-b837-7ab44af62a0e'),
(e'Compassion -- that\'s the one thing no machine ever had.  Maybe it\'s the one thing that keeps men ahead of them.', 'McCoy', 4731.3, 53, '4010326c-fb18-4b48-a3ab-ea649365a121'),
('Humans do claim a great deal for that particular emotion (love).', 'Spock', 5725.6, 73, '413681ab-a929-467f-8078-63929f636295'),
('Vulcans worship peace above all.', 'McCoy', 4768.3, 49, '4380f875-31a9-4bfd-b8cd-722d6b28577e'),
('Men will always be men -- no matter where they are.', 'Harry Mudd', 1329.8, 6, '46aa319f-7312-4fe3-92b9-7ad4d455bc6e'),
('The only solution is ... a balance of power.  We arm our side with exactly that much more.  A balance of power -- the trickiest, most difficult, dirtiest game of them all.  But the only one that preserves both sides.', 'Kirk', 4211.8, 48, '478c0bb3-f176-414e-8209-32691c4cf32f'),
('Those who hate and fight must stop themselves -- otherwise it is not stopped.', 'Spock', NULL, 62, '496158cb-d3eb-4057-b91b-7603278d92c9'),
('I have never understood the female capacity to avoid a direct answer to any question.', 'Spock', 3417.3, 24, '4970d607-0b25-4e98-936a-526499d8bab1'),
('Either one of us, by himself, is expendable.  Both of us are not.', 'Kirk', 3196.1, 25, '498fd462-87ed-4b32-b35a-62ba8173e810'),
(e'"There\'s only one kind of woman ..." "Or man, for that matter.  You either believe in yourself or you don\'t."', 'Kirk and Harry Mudd', 1330.1, 6, '49a6968f-1190-4647-9c51-8fa16f6c7b17'),
('Killing is wrong.', 'Losira', NULL, 72, '4a23244e-70df-47f8-95cd-de9675edf581'),
(e'You can\'t evaluate a man by logic alone.', 'McCoy', 4513.3, 37, '4f37b7c3-e4f7-425e-8cb9-2d2f13babf2a'),
(e'We have phasers, I vote we blast \'em!', 'Bailey', 1514.2, 10, '50e0f262-05a2-4d9c-94d4-33eeffac72b0'),
(e'Youth doesn\'t excuse everything.', e'Dr. Janice Lester (in Kirk\'s body)', 5928.5, 79, '5169de8c-26e6-4b03-aa12-765e3b5c4cb0'),
(e'A father doesn\'t destroy his children.', 'Lt. Carolyn Palamas', 3468.1, 31, '51d0efb2-c2e7-467e-a332-91522c604eac'),
(e'"No one talks peace unless he\'s ready to back it up with war." "He talks of peace if it is the only way to live."', 'Colonel Green and Surak of Vulcan', 5906.5, 77, '53a6f69b-0417-4a83-8bf7-6d39194c44d6'),
('There are certain things men must do to remain men.', 'Kirk', 4929.4, 53, '54cc9dc1-45c6-442c-a2fd-5905f4c344a2'),
('Power is danger.', 'The Centurion', 1709.2, 14, '54dee9b5-6f21-47aa-8627-eb86463eef53'),
('One does not thank logic.', 'Sarek', 3842.4, 39, '5609a9de-c29f-41d8-af6c-815a9275fd67'),
('Four thousand throats may be cut in one night by a running man.', 'Klingon Soldier', NULL, 62, '56ccaab0-7b3a-4196-95bd-ba45ce52092b'),
(e'Blast medicine anyway!  We\'ve learned to tie into every organ in the human body but one.  The brain!  The brain is what life is all about.', 'McCoy', 3012.4, 11, '5888fe7f-0bc8-4884-be90-d6f3f89fcaed'),
('Vulcans never bluff.', 'Spock', 4202.1, 35, '58fb3c70-ede9-4661-b4a0-8b37534b2363'),
('Death, when unnecessary, is a tragic thing.', 'Flint', 5843.7, 74, '58fd19a9-2b18-4044-a061-673b7f994180'),
('It [being a Vulcan] means to adopt a philosophy, a way of life which is logical and beneficial.  We cannot disregard that philosophy merely for personal gain, no matter how important that gain might be.', 'Spock', 3842.4, 39, '59db2fe3-220f-4f9f-89bd-9e88ecd59310'),
('"We have the right to survive!" "Not by killing others."', 'Deela and Kirk', 5710.5, 66, '5a018ba7-311f-4b88-988c-18fdca0c2759'),
('Madness has no purpose.  Or reason.  But it may have a goal.', 'Spock', 3088.7, 27, '5b510c41-2670-4f86-995e-f83a6683dd8e'),
('Without facts, the decision cannot be made logically.  You must rely on your human intuition.', 'Spock', NULL, 55, '5b80d6cb-c381-4a02-9aae-0244e5b1b606'),
(e'There\'s nothing disgusting about it [the Companion].  It\'s just another life form, that\'s all.  You get used to those things.', 'McCoy', 3219.8, 38, '5ea3b67b-884b-4d41-abf7-627406bf3a22'),
('You speak of courage.  Obviously you do not know the difference between courage and foolhardiness.  Always it is the brave ones who die, the soldiers.', 'Kor, the Klingon Commander', 3201.7, 26, '5f88ddf7-64fa-4ac5-9108-d53fbf6073e1'),
('You Earth people glorified organized violence for forty centuries.  But you imprison those who employ it privately.', 'Spock', 2715.1, 9, '608a67f2-bd61-4b5c-a5fe-c2804e25f9eb'),
('A Vulcan can no sooner be disloyal than he can exist without breathing.', 'Kirk', 3012.4, 11, '60c6930a-fccb-419e-959f-79c5d3797dc9'),
('No one wants war.', 'Kirk', 3201.7, 26, '65840684-244a-4593-a2e4-9d11451217f1'),
('Live long and prosper.', 'Spock', 3372.7, 30, '677747f2-3082-4ebb-b56a-e1db1e9f9973'),
('If there are self-made purgatories, then we all have to live in them.', 'Spock', 3417.7, 24, '679806d8-d82c-4ae3-9935-8ca300c80685'),
('Prepare for tomorrow -- get ready.', 'Edith Keeler', NULL, 28, '680291a6-179b-4fe9-90de-59cf633e0562'),
('Superior ability breeds superior ambition.', 'Spock', 3141.9, 22, '6931b693-19b6-4251-b68b-2b065dfaf436'),
(e'I\'ve already got a female to worry about.  Her name is the Enterprise.', 'Kirk', 1514.0, 10, '697e492b-6ec3-4b3e-8699-929c1d7bc5c7'),
(e'[War] is instinctive.  But the instinct can be fought.  We\'re human beings with the blood of a million savage years on our hands!  But we can stop it.  We can admit that we\'re killers ... but we\'re not going to kill today.  That\'s all it takes!  Knowing that we\'re not going to kill today!', 'Kirk', 3193.0, 23, '6b3fddbc-711b-4fa1-861d-80d88d21c67b'),
('Another war ... must it always be so?  How many comrades have we lost in this way? ...  Obedience.  Duty.  Death, and more death ...', 'Romulan Commander', 1709.2, 14, '6ca7a40f-b8fb-4fc4-8138-b1945603f4ec'),
('... The things love can drive a man to -- the ecstasies, the miseries, the broken rules, the desperate chances, the glorious failures and the glorious victories.', 'McCoy', 5843.7, 74, '6d63f7d7-dc86-4edb-b911-3535366edf57'),
('Fascinating, a totally parochial attitude.', 'Spock', 3219.8, 38, '6db20b3b-ddc2-4cfe-a7dd-41e6a3d8d22f'),
('War is never imperative.', 'McCoy', 1709.2, 14, '6e5716bb-b131-400c-acbd-06ab9b80d7f4'),
('No more blah, blah, blah!', 'Kirk', 2713.6, 8, '6f3da98a-fec4-41c8-998a-e3604fefb555'),
('Only a fool fights in a burning house.', 'Kang the Klingon', NULL, 62, '704f8cb9-97b4-4e3d-aa2b-c8997c77172b'),
('No one can guarantee the actions of another.', 'Spock', NULL, 62, '71fac8cd-303a-4fff-b127-3a6a5b382b23'),
('There is an order of things in this universe.', 'Apollo', 3468.1, 31, '72c2ba4c-2573-4804-98ec-8afe75e0dce4'),
('There are always alternatives.', 'Spock', 2822.3, 16, '735835fe-461a-42b1-b00b-7e0711baf475'),
('There comes to all races an ultimate crisis which you have yet to face .... One day our minds became so powerful we dared think of ourselves as gods.', 'Sargon', 4768.3, 49, '7386b2fc-3e5f-496d-95d3-5f8b4c4edcb0'),
('Virtue is a relative term.', 'Spock', 3499.1, 40, '75f02e37-9677-4bcb-8d93-d2e8ea626128'),
('Schshschshchsch.', 'The Gorn', 3046.2, 18, '75f15cbd-742d-46fd-abef-27faeb244eb2'),
('Knowledge, sir, should be free to all!', 'Harry Mudd', 4513.3, 37, '7650b6b1-d04e-4283-95ea-4253935ae542'),
('"What happened to the crewman?" "The M-5 computer needed a new power source, the crewman merely got in the way."', 'Kirk and Dr. Richard Daystrom', 4731.3, 53, '78472a7b-4fb2-4b81-be93-c1e6fc232030'),
('Insults are effective only where emotion is present.', 'Spock', 3468.1, 31, '7a23434c-0629-4adc-8e01-9bce6072a7fc'),
('There is a multi-legged creature crawling on your shoulder.', 'Spock', 3193.9, 23, '7b6ff819-2651-44be-af4d-c0bd6c0bf652'),
('We fight only when there is no other choice.  We prefer the ways of peaceful contact.', 'Kirk', 4385.3, 61, '7f2dd44d-acff-4b68-911e-9741745fcaa7'),
('Pain is a thing of the mind.  The mind can be controlled.', 'Spock', 3287.2, 29, '82365889-2d70-4f23-aae2-d61085ed3222'),
('Punishment becomes ineffective after a certain point.  Men become insensitive.', 'Eneg', 2534.7, 50, '82b33fb1-ab0d-455d-b9ed-9dfd14bf31df'),
('The face of war has never changed.  Surely it is more logical to heal than to kill.', 'Surak of Vulcan', 5906.5, 77, '8506da2b-7816-4759-8b36-b079ed67b5bc');

INSERT INTO quotes (quote, characters, stardate, episode, id) VALUES
(e'"It\'s hard to believe that something which is neither seen nor felt can do so much harm." "That\'s true.  But an idea can\'t be seen or felt.  And that\'s what kept the Troglytes in the mines all these centuries.  A mistaken idea."', 'Vanna and Kirk', 5819.0, 76, '855342dd-ab73-4a4b-8a41-4d7712d139e0'),
('On my planet, to rest is to rest -- to cease using energy.  To me, it is quite illogical to run up and down on green grass, using energy, instead of saving it.', 'Spock', 3025.2, 15, '86a1e34e-c306-444e-ad5e-d02fd6a296ba'),
('"Logic and practical information do not seem to apply here." "You admit that?" "To deny the facts would be illogical, Doctor"', 'Spock and McCoy', NULL, 46, '87238bac-998e-41b4-b06a-a4b5ad2cc556'),
('Each kiss is as the first.', e'Miramanee, Kirk\'s wife', 4842.6, 58, '87b5b8ad-ca67-4f24-a6bb-2415a2037b59'),
('The more complex the mind, the greater the need for the simplicity of play.', 'Kirk', 3025.8, 15, '88da4994-c7c9-4327-b17d-02ed9df13b61'),
(e'He\'s dead, Jim', 'McCoy', 3196.1, 25, '893d0499-ea4c-4b28-8323-22c9c69921cf'),
('Suffocating together ... would create heroic camaraderie.', 'Khan Noonian Singh', 3142.8, 22, '8afa50d8-05b8-47e9-b40a-16af3ab66aa7'),
('I realize that command does have its fascination, even under circumstances such as these, but I neither enjoy the idea of command nor am I frightened of it.  It simply exists, and I will do whatever logically needs to be done.', 'Spock', 2812.7, 16, '8c433a11-88a2-48b9-82d0-6a292e5b74df'),
('Actual war is a very messy business.  Very, very messy business.', 'Kirk', 3193.0, 23, '8fbc69b9-a706-4a7f-b9a6-b37c8df20d4b'),
(e'You\'re dead, Jim.', 'McCoy', NULL, 64, '9160f730-4a87-41e5-adcd-5e2e7b35756e'),
('"Beauty is transitory." "Beauty survives."', 'Spock and Kirk', NULL, 72, '93f65a99-e495-488f-9ded-862de0780a0d'),
('Oblivion together does not frighten me, beloved.', e'Thalassa (in Anne Mulhall\'s body)', 4770.3, 49, '94684c59-37d8-4f44-abef-9ad672fb2847'),
('The idea of male and female are universal constants.', 'Kirk', 3219.8, 38, '949cd524-cd17-4464-8c3a-ebe055860c06'),
(e'You\'re too beautiful to ignore.  Too much woman.', 'Kirk to Yeoman Rand', NULL, 5, '95da13e4-30f9-446b-995f-57e8f5f9cbb3'),
(e'Genius doesn\'t work on an assembly line basis.  You can\'t simply say, "Today I will be brilliant."', 'Kirk', 4731.3, 53, '963c77a0-e43a-4a23-9dc5-8d1da61581ce'),
(e'Where there\'s no emotion, there\'s no motive for violence.', 'Spock', 2715.1, 9, '975d1b73-a4f1-4b38-a328-3e77340d608d'),
('It would be illogical to kill without reason', 'Spock', 3842.4, 39, '978da767-e4b2-452e-81ae-e6914eae61f2'),
(e'There\'s a way out of any cage.', 'Captain Christopher Pike', NULL, 11, '9894730a-c119-404f-876f-b0ea6e35a430'),
('"Life and death are seldom logical." "But attaining a desired goal always is."', 'McCoy and Spock', 2821.7, 16, '997b485b-cbc5-4b35-baf2-11af44bd6b49'),
('One of the advantages of being a captain is being able to ask for advice without necessarily having to take it.', 'Kirk', 2715.2, 9, '9a4d3a5c-d089-4272-b05a-8bd11f614b55'),
('You say you are lying.  But if everything you say is a lie, then you are telling the truth.  You cannot tell the truth because everything you say is a lie.  You lie, you tell the truth ... but you cannot, for you lie.', 'Norman the android', 4513.3, 37, '9c18714e-4cfa-46b2-a5cb-eb468a519f95'),
(e'"The combination of a number of things to make existence worthwhile." "Yes, the philosophy of \'none,\' meaning \'all.\'"', 'Spock and Lincoln', 5906.4, 77, '9c700435-bbd3-482f-a131-eca252d9bf33'),
('Not one hundred percent efficient, of course ... but nothing ever is.', 'Kirk', 3219.8, 38, '9e13b534-ed6b-47a6-b817-6d812e238c8b'),
('Yes, it is written.  Good shall always destroy evil.', 'Sirah the Yang', NULL, 52, 'a2681b6c-ed51-49bd-86fe-a38d34ec69de'),
('Even historians fail to learn from history -- they repeat the same mistakes.', 'John Gill', 2534.7, 50, 'a34c9c9a-0400-49ec-af98-0ab48854c1af'),
('To live is always desirable.', 'Eleen the Capellan', 3498.9, 40, 'a376aed3-40df-494d-9f2f-9f78822bae9e'),
('The sooner our happiness together begins, the longer it will last.', 'Miramanee', 4842.6, 58, 'a5164005-87c3-4da7-8674-ad1b4dce9f54'),
('Women are more easily and more deeply terrified ... generating more sheer horror than the male of the species.', 'Spock', 3615.4, 43, 'a59ac946-2b26-4fa9-aac4-66df54931463'),
(e'There\'s another way to survive.  Mutual trust -- and help.', 'Kirk', NULL, 62, 'a5f6ef20-75ed-41b2-ad93-bc65d777d682'),
('It would seem that evil retreats when forcibly confronted', 'Yarnek of Excalbia', 5906.5, 77, 'a74ca3fa-7e3d-4bd0-9615-03c5fcc95aee'),
('Respect is a rational process', 'McCoy', 2822.3, 16, 'a7d3a351-b5a6-46c4-84e7-605a572e59b9'),
(e'It is a human characteristic to love little animals, especially if they\'re attractive in some way.', 'McCoy', 4525.6, 44, 'a8a72782-2e99-4f7e-b1c6-e2fb304ae547'),
('After a time, you may find that "having" is not so pleasing a thing, after all, as "wanting."  It is not logical, but it is often true.', 'Spock', 3372.7, 30, 'ae2dabf5-ab07-49e3-916c-e1733e1adb09'),
('The man on tops walks a lonely street; the "chain" of command is often a noose.', 'McCoy', 2818.9, 13, 'ae3f6a83-ffd3-4568-aa93-8a850c082fcb'),
(e'You humans have that emotional need to express gratitude.  "You\'re welcome," I believe, is the correct response.', 'Spock', 4041.2, 54, 'afcc7e0f-d750-4b06-9e0b-17541a97d08d'),
('"Evil does seek to maintain power by suppressing the truth." "Or by misleading the innocent."', 'Spock and McCoy', 5029.5, 59, 'b00fa100-71c7-4407-9a20-d5a881666083'),
('[Doctors and Bartenders], We both get the same two kinds of customers -- the living and the dying.', 'Dr. Boyce', NULL, 11, 'b1b04473-69da-4d44-aa2d-84b14fa929bf'),
('Many Myths are based on truth', 'Spock', 5832.3, 75, 'b30a795b-18ae-45e3-ac21-69ed09606683'),
('Women professionals do tend to over-compensate.', 'Dr. Elizabeth Dehner', 1312.9, 3, 'b4256c15-b665-4a03-b2c4-98f9533de0e7'),
('Immortality consists largely of boredom.', 'Zefrem Cochrane', 3219.8, 38, 'b51d505f-e59f-4612-a229-81d2ee23fe6b'),
(e'Leave bigotry in your quarters; there\'s no room for it on the bridge.', 'Kirk', 1709.2, 14, 'b7b21e2f-365f-432e-a5a0-5d93ebd319ea'),
('Violence in reality is quite different from theory.', 'Spock', 5818.4, 76, 'b8d350b1-909a-41ce-b1b5-9bd4dea1a8f5'),
('The people of Gideon have always believed that life is sacred.  That the love of life is the greatest gift ... We are incapable of destroying or interfering with the creation of that which we love so deeply -- life in every form from fetus to developed being.', 'Hodin of Gideon', 5423.4, 71, 'b9c34a07-e810-42e5-a21d-5ac4f2bc1e2a'),
('First study the enemy.  Seek weakness.', 'Romulan Commander', 1709.2, 14, 'ba7c4859-e081-4670-b94d-07a39cb7f371'),
('Vulcans do not approve of violence.', 'Spock', 3842.4, 39, 'bb44dcb1-2561-43be-b11e-8073971ca1e3'),
('Another Armenia, Belgium ... the weak innocents who always seem to be located on a natural invasion route.', 'Kirk', 3198.4, 26, 'bc5f650f-4c74-411e-9590-0e1d70dcf4f5'),
('We do not colonize.  We conquer.  We rule.  There is no other way for us.', 'Rojan', 4657.5, 51, 'bcd79eb3-e874-4cd8-9e2e-47618c1c0403'),
('Intuition, however illogical, is recognized as a command prerogative.', 'Kirk', 3620.7, 42, 'be59a320-63ae-4740-a9c5-25c38771bb9e'),
(e'If I can have honesty, it\'s easier to overlook mistakes.', 'Kirk', 3141.9, 22, 'bf479eb6-876a-42de-9257-24514c074273'),
('A little suffering is good for the soul.', 'Kirk', 1514.0, 10, 'bf8b8557-293f-4f26-b281-009f3f62bda8'),
('Lots of people drink from the wrong bottle sometimes.', 'Edith Keeler', NULL, 28, 'c00945c1-e822-428a-a532-3db4b85fc144'),
(e'War isn\'t a good life, but it\'s life.', 'Kirk', 4211.8, 48, 'c105dd69-9a92-4033-bead-99db0a9b2b01'),
(e'You\'re dead, Jim.', 'McCoy', 3372.7, 30, 'c1205358-d6d6-488f-8dd0-1c440cf4aa53'),
('Killing is stupid; useless!', 'McCoy', 4211.8, 48, 'c2080fc3-6340-4542-bc2f-ae095df10620'),
('"What a terrible way to die." "There are no good ways."', 'Sulu and Kirk', NULL, 72, 'c2dccaaa-d607-4965-b564-1706c988f565'),
('No one may kill a man.  Not for any purpose.  It cannot be condoned.', 'Kirk', 5431.6, 56, 'c2dd7bee-1f07-4e43-9bf4-018a21ff862f'),
(e'A star captain\'s most solemn oath is that he will give his life, even his entire crew, rather than violate the Prime Directive.', 'Kirk', NULL, 52, 'c377fdab-a432-498c-b0b7-bd11a8ebede6'),
('"The glory of creation is in its infinite diversity." "And in the way our differences combine to create meaning and beauty."', 'Dr. Miranda Jones and Spock', 5630.8, 60, 'c4691c1f-9c8f-4343-be58-0061a00fb884'),
(e'There is an old custom among my people.  When a woman saves a man\'s life, he is grateful.', 'Nona, the Kanuto witch woman', 4211.8, 48, 'c816d1d3-4019-4ab6-a1d4-0a3d6b51dba1'),
(e'Oh, that sound of male ego.  You travel halfway across the galaxy and it\'s still the same song.', 'Eve McHuron', 1330.1, 6, 'cba7671b-a7d8-438d-bafe-0ef5204749ea'),
(e'I\'m a soldier, not a diplomat.  I can only tell the truth.', 'Kirk', 3198.9, 26, 'cd29b73c-00eb-4250-8b85-2d5ef6db6b6d'),
('When dreams become more important than reality, you give up travel, building, creating; you even forget how to repair the machines left behind by your ancestors.  You just sit living and reliving other lives left behind in the thought records.', 'Vina', NULL, 11, 'cf051e8e-39f8-47d2-9aa4-f6cae96b8057'),
(e'Do you know about being with somebody?  Wanting to be?  If I had the whole universe, I\'d give it to you, Janice.  When I see you, I feel like I\'m hungry all over.  Do you know how that feels?', 'Charlie Evans', 1535.8, 2, 'cf9e0a26-8133-424a-af38-17f4ad85c1f2'),
(e'Emotions are alien to me.  I\'m a scientist.', 'Spock', 3417.3, 24, 'd09d21a3-b73d-4e02-a477-0e93bab67cca'),
('Is truth not truth for all?', 'Natira', 5476.4, 63, 'd0b207c8-f70d-4cde-9178-3f5104d3d8ae'),
('We Klingons believe as you do -- the sick should die.  Only the strong should live.', 'Kras', 3497.2, 40, 'd0e4ebe8-eaee-4dd3-9088-0b006efc2cc9'),
('If some day we are defeated, well, war has its fortunes, good and bad.', 'Commander Kor', 3201.7, 26, 'd47cfc25-6237-4d8c-92da-f387dcd821fa'),
('It is necessary to have purpose.', 'Alice #1', 4513.3, 37, 'd4879963-7385-410a-99ce-e45b801a2631'),
('I object to intellect without discipline;  I object to power without constructive purpose.', 'Spock', 2124.5, 17, 'd64e01e1-b6f0-4297-8c66-e4d94aa3581c'),
('"The release of emotion is what keeps us healthy.  Emotionally healthy." "That may be, Doctor.  However, I have noted that the healthy release of emotion is frequently unhealthy for those closest to you."', 'McCoy and Spock', 5784.3, 65, 'd6f10d1d-919e-4c35-a1d2-5fb2e83130f2'),
('In the strict scientific sense we all feed on death -- even vegetarians.', 'Spock', 3615.4, 43, 'd8c47f1d-9606-495a-b4fb-f776feffeb6b'),
(e'The games have always strengthened us.  Death becomes a familiar pattern.  We don\'t fear it as you do.', 'Proconsul Marcus Claudius', 4041.2, 54, 'dbefeeb7-0885-49d9-b425-adff531195d8'),
('Insufficient facts always invite danger.', 'Spock', 3141.9, 22, 'dc9cd776-8674-4dd9-9283-234338cf0973'),
('Every living thing wants to survive.', 'Spock', 4731.3, 53, 'de9bc95a-9730-4fc6-8b14-c5f5c64cef13'),
(e'I\'m frequently appalled by the low regard you Earthmen have for life.', 'Spock', 2822.3, 16, 'df19821c-7ec7-4914-bfec-7c2cef10d526'),
(e'"Get back to your stations!" "We\'re beaming down to the planet, sir."', 'Kirk and Mr. Leslie', 3417.3, 24, 'df4d9d9a-a7b2-4ca9-936b-7522ee1cbbac'),
('It is more rational to sacrifice one life than six.', 'Spock', 2822.3, 16, 'e0c62d02-4996-46c1-87ee-7dc0724d1b81'),
('Extreme feminine beauty is always disturbing.', 'Spock', 5818.4, 76, 'e1103117-11be-4307-be58-f3eebfe247d6'),
('Without followers, evil cannot spread.', 'Spock', 5029.5, 59, 'e1889c8f-0ddc-4f44-9ef4-2a4908a2467d'),
('Earth -- mother of the most beautiful women in the universe.', 'Apollo', 3468.1, 31, 'e223d3a0-cdfd-4c31-8474-87b25d077341'),
('Peace was the way.', 'Kirk', NULL, 28, 'e2826016-a36c-4f6d-93b4-2d1e88616e8a'),
(e'There\'s no honorable way to kill, no gentle way to destroy.  There is nothing good in war.  Except its ending.', 'Abraham Lincoln', 5906.5, 77, 'e4a7b970-8e07-43ba-858a-eb83bc4861a7'),
(e'You\'ll learn something about men and women -- the way they\'re supposed to be.  Caring for each other, being happy with each other, being good to each other.  That\'s what we call love.  You\'ll like that a lot.', 'Kirk', 3715.6, 34, 'e52f876c-d021-4fe3-a4a5-062afeff7331'),
('It would be illogical to assume that all conditions remain stable.', 'Spock', 5027.3, 57, 'e61f15ec-5b18-4fc2-98c3-2fc0f7df4c10'),
('A princess should not be afraid -- not with a brave knight to protect her.', 'McCoy', 3025.3, 15, 'e7efd6a6-b66b-477a-9e21-60fa5e9f5736'),
('Is not that the nature of men and women -- that the pleasure is in the learning of each other?', 'Natira, the High Priestess of Yonada', 5476.3, 63, 'e8fedcd1-f45d-4708-ad45-3edc30731253'),
('It is undignified for a woman to play servant to a man who is not hers.', 'Spock', 3372.7, 30, 'eb160086-c223-46b8-b3c6-94018884a99c'),
('Computers make excellent and efficient servants, but I have no wish to serve under them.  Captain, a starship also runs on loyalty to one man.  And nothing can replace it or him.', 'Spock', 4729.4, 53, 'eb803aa5-8259-48e5-8aa3-fb3a15d49eb6'),
('There are some things worth dying for.', 'Kirk', 3201.7, 26, 'ef6b5f5d-6847-4751-80d3-24be03aab786'),
('You!  What PLANET is this?!', 'McCoy', 3134.0, 28, 'f102a91f-9cb5-40e9-b7b0-6fdf6d633ddd'),
('Sometimes a feeling is all we humans have to go on.', 'Kirk', 3193.9, 23, 'f30670ea-a859-4f70-815a-03a5dc4d3bc4'),
(e'Another dream that failed.  There\'s nothing sadder.', 'Kirk', 3417.3, 24, 'f3dc9429-b7ad-4ed8-97fc-92a9e4008399'),
('The sight of death frightens them [Earthers].', 'Kras the Klingon', 3497.2, 40, 'f4866fa2-48c0-42de-93cb-0c7dd0263eb3'),
('The heart is not a logical organ.', 'Dr. Janet Wallace', 3479.4, 41, 'f492c75b-6a5d-4943-9dc0-8c06f6e4300e'),
(e'You go slow, be gentle.  It\'s no one-way street -- you know how you feel and that\'s all.  It\'s how the girl feels too.  Don\'t press.  If the girl feels anything for you at all, you\'ll know.', 'Kirk', 1535.8, 2, 'f51f09ec-6412-4d86-abc8-ac86aa6713c2'),
('I am pleased to see that we have differences.  May we together become greater than the sum of both of us.', 'Surak of Vulcan', 5906.4, 77, 'f8b01c4b-237f-4176-aaed-2b001a1ea31b'),
('No problem is insoluble.', 'Dr. Janet Wallace', 3479.4, 41, 'f9325d90-9c7b-4560-90ae-e4e2ad4947a0'),
('What kind of love is that?  Not to be loved; never to have shown love.', 'Commissioner Nancy Hedford', 3219.8, 38, 'fa5a8cf7-0d6b-41dd-85c6-16a92f336cea'),
('"... freedom ... is a worship word..." "It is our worship word too."', 'Cloud William and Kirk', NULL, 52, 'fcd1d4f1-551f-47b4-939c-a92faec04819'),
('Most legends have their basis in facts.', 'Kirk', 5029.5, 59, 'fdf638ab-3780-48c5-907e-787c27410307');


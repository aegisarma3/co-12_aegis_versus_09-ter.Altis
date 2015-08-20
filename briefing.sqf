/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the 
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	{true}, 
		["Mission",
			"<marker name='fob_aurum'>Perditus</marker> and <marker name='derelictus_start'>Derelictus</marker> will defend <marker name='fob_aurum'>FOB Aurum</marker> and investigate the unknown <marker name='obj2'>contact</marker> in the vicinity."],
			
		["Situation",
			"March 2nd 2025: 2 hours ago PMC Versus reconnaissance satellite Hannibal-6 picked up an unknown mobile <marker name='obj2'>contact</marker> in the vicinity of <marker name='fob_aurum'>FOB Aurum</marker> before suddenly going offline. PMC Versus local high command (callsign 'Corona') has been trying to establish connection to the satellite without success.<br/><br/>PMC Versus surgical team on Altis (callsign 'Perditus') has been tasked to protect Corona ever since FOB Cuprum was overrun last month. PMC Versus' supporting team (callsign 'Derelictus') is currently moving towards FOB Aurum on foot and has confirmed <marker name='enemies'>sightings</marker> of armed foot mobiles in the area.<br/><br/>Corona has deemed that abandoning FOB Aurum and all the valuable equipment with it is unacceptable and has tasked Perditus and Derelictus to defend the FOB at all costs. PMC Versus operators are once again ill-equipped for night operation and on top of that the ammunition stolen from the Nekron Chelia have mostly run out thus forcing the operators to use the older small arms.<br/><br/>After the enemy forces have been dealt with Corona wants the operators to investigate the unknown contact in the vicinity. Perhaps that will give more answers about the attackers and how they have found FOB Aurum. Corona has been linked with Perditus and his survival is mission critical."],

		["Enemy",
			"Corona speculates that the enemy forces in the vicinity of FOB Aurum are AAF forces who believe to have finally located a second Nekron Chelia base. Even though PMC Versus has succesfully dealt with the AAF forces in the past months, the military forces have NVGs which makes the situation extremely difficult for Versus operators.<br/><br/>Hannibal-6 did not pick any aerial or armored contacts in the area. The AAF have most likely become more careful in sending aircraft into known NC territory. Corona also believes that the small radio antenna on the end of the bay is somehow important to the local military since there has been no artillery fire.<br/><br/>Hannibal-6's technical problems must be unrelated to the enemy presence since the AAF or even the Greek military forces have no ASAT capabilities."],

		["Callsigns",
			"Corona: local high command operating at FOB Aurum.<br/>Perditus: surgical element.<br/>Derelictus: supporting element, based at FOB Ferrum."],
            
        ["Additional",
			"PMC Versus uses FHQ Task Tracker to provide operators with briefings and tasks."]
    
] call FHQ_TT_addBriefing;

[
	{true},                                                         // Filter
    	["task1",										// Task name
         "Defend <marker name='fob_aurum'>FOB Aurum</marker> against the foot mobiles closing in from the south-east.",				       // Task text in briefing
         "Defend FOB Aurum.",							// Task title in briefing
         "courier"										// Waypoint text

        ],
        ["task2",										// Task name
         "Investigate the <marker name='obj2'>unknown contact</marker> in the vicinity.",				       // Task text in briefing
         "Investigate the area.",							// Task title in briefing
         "commander"											// Waypoint text

        ],
        ["task3",										// Task name
         "Corona is mission critical and must survive. He is temporarily under Perditus actual's command.",				       // Task text in briefing
         "Corona must survive.",			    		// Task title in briefing
         "courier"										// Waypoint text

        ]

] call FHQ_TT_addTasks;
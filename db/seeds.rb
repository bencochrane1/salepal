lead1 = Lead.create(title: "bencochrane1@me.com", status_id: 1)
lead2 = Lead.create(title: "bencochrane2@me.com", status_id: 2)
lead3 = Lead.create(title: "bencochrane3@me.com", status_id: 3)
lead4 = Lead.create(title: "bencochrane4@me.com", status_id: 4)
lead5 = Lead.create(title: "bencochrane5@me.com", status_id: 5)



Opportunity.create(status: "active", confidence: 70, value: 15000, frequency: 0, comments: "A great person to do business with, likes to be called Bill.", lead_id: lead1.id )
Opportunity.create(status: "won", confidence: 100, value: 10000, frequency: 0, comments: "Got the deal - needed to come in on price though.", lead_id: lead1.id )
Opportunity.create(status: "lost", confidence: 0, value: 35000, frequency: 0, comments: "Not a priority to upgrade right now", lead_id: lead1.id )

Opportunity.create(status: "active", confidence: 70, value: 15000, frequency: 0, comments: "A great person to do business with, likes to be called Bill.", lead_id: lead2.id )
Opportunity.create(status: "won", confidence: 100, value: 10000, frequency: 0, comments: "Got the deal - needed to come in on price though.", lead_id: lead2.id )
Opportunity.create(status: "lost", confidence: 0, value: 35000, frequency: 0, comments: "Not a priority to upgrade right now", lead_id: lead2.id )

Opportunity.create(status: "active", confidence: 70, value: 15000, frequency: 0, comments: "A great person to do business with, likes to be called Bill.", lead_id: lead3.id )
Opportunity.create(status: "won", confidence: 100, value: 10000, frequency: 0, comments: "Got the deal - needed to come in on price though.", lead_id: lead3.id )
Opportunity.create(status: "lost", confidence: 0, value: 35000, frequency: 0, comments: "Not a priority to upgrade right now", lead_id: lead3.id )

Opportunity.create(status: "active", confidence: 50, value: 9000, frequency: 0, comments: "A great person to do business with, likes to be called Bill.", lead_id: lead4.id )
Opportunity.create(status: "won", confidence: 100, value: 11000, frequency: 0, comments: "Got the deal - needed to come in on price though.", lead_id: lead4.id )
Opportunity.create(status: "won", confidence: 100, value: 5000, frequency: 0, comments: "Not a priority to upgrade right now", lead_id: lead4.id )

Opportunity.create(status: "active", confidence: 70, value: 17000, frequency: 0, comments: "A great person to do business with, likes to be called Bill.", lead_id: lead5.id )
Opportunity.create(status: "active", confidence: 95, value: 19000, frequency: 0, comments: "Got the deal - needed to come in on price though.", lead_id: lead5.id )
Opportunity.create(status: "active", confidence: 10, value: 350000, frequency: 0, comments: "Not a priority to upgrade right now", lead_id: lead5.id )
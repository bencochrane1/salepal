Lead.destroy_all
Opportunity.destroy_all
Task.destroy_all
Note.destroy_all
Contact.destroy_all
Email.destroy_all

lead1 = Lead.create(title: "jack.hamblin@generalassemb.ly", status: "hot lead")
lead2 = Lead.create(title: "penelope@generalassemb.ly", status: "warm lead")
lead3 = Lead.create(title: "zac@generalassemb.ly", status: "hot lead")

Opportunity.create(status: "active", confidence: 70, value: 15000, frequency: "fortnightly", comments: "Follow up next week to see if he's interested in a trial.", lead_id: lead1.id )
Opportunity.create(status: "won", confidence: 100, value: 10000, frequency: "weekly", comments: "Got the deal - needed to come in on price though.", lead_id: lead1.id )
Opportunity.create(status: "lost", confidence: 0, value: 35000, frequency: "monthly", comments: "Not a priority to upgrade right now", lead_id: lead1.id )

Opportunity.create(status: "active", confidence: 70, value: 15000, frequency: "fortnightly", comments: "Follow up next week to see if he's interested in a trial.", lead_id: lead2.id )
Opportunity.create(status: "won", confidence: 100, value: 10000, frequency: "weekly", comments: "Got the deal - needed to come in on price though.", lead_id: lead2.id )
Opportunity.create(status: "lost", confidence: 0, value: 35000, frequency: "monthly", comments: "Not a priority to upgrade right now", lead_id: lead2.id )

Opportunity.create(status: "active", confidence: 70, value: 15000, frequency: "fortnightly", comments: "Follow up next week to see if he's interested in a trial.", lead_id: lead3.id )
Opportunity.create(status: "won", confidence: 100, value: 10000, frequency: "weekly", comments: "Got the deal - needed to come in on price though.", lead_id: lead3.id )
Opportunity.create(status: "lost", confidence: 0, value: 35000, frequency: "monthly", comments: "Not a priority to upgrade right now", lead_id: lead3.id )

Task.create(description: "organise second meeting with Joe", due_date: 2015, lead_id: lead1.id)
Task.create(description: "coffee meetup today", due_date: 2014, lead_id: lead1.id)
Task.create(description: "ask about the Depuy account", due_date: 2013, lead_id: lead1.id)

Task.create(description: "meet with Bill", due_date: 2017, lead_id: lead2.id)
Task.create(description: "ask for the account", due_date: 2014, lead_id: lead2.id)
Task.create(description: "go to bank", due_date: 2013, lead_id: lead2.id)

Task.create(description: "ask about trip", due_date: 2015, lead_id: lead3.id)
Task.create(description: "get leave", due_date: 2014, lead_id: lead3.id)
Task.create(description: "meet on Monday", due_date: 2013, lead_id: lead3.id)

Contact.create(name: "Bob Sheffin", title: "Head of Marketing", mobile_number: "0435675857", office_number: "0287577564", email: "bob@sheffin.com.au", url: "sheffin.com.au", lead_id: lead1.id )
Contact.create(name: "Flo Busby", title: "Head of Sales", mobile_number: "0435463546", office_number: "0287577587", email: "flo@sheffin.com.au", url: "sheffin.com.au", lead_id: lead1.id )

Contact.create(name: "Bob Sheffin", title: "Head of Marketing", mobile_number: "0435675857", office_number: "0287577564", email: "bob@sheffin.com.au", url: "sheffin.com.au", lead_id: lead2.id )
Contact.create(name: "Flo Busby", title: "Head of Sales", mobile_number: "0435463546", office_number: "0287577587", email: "flo@sheffin.com.au", url: "sheffin.com.au", lead_id: lead2.id )

Contact.create(name: "Bob Sheffin", title: "Head of Marketing", mobile_number: "0435675857", office_number: "0287577564", email: "bob@sheffin.com.au", url: "sheffin.com.au", lead_id: lead3.id )
Contact.create(name: "Flo Busby", title: "Head of Sales", mobile_number: "0435463546", office_number: "0287577587", email: "flo@sheffin.com.au", url: "sheffin.com.au", lead_id: lead3.id )

Note.create(description: "called again - he is keen to proceed - need another meeting to confirm", lead_id: lead1.id )
Note.create(description: "wants to meet in the office on Thursday", lead_id:  lead1.id )

Note.create(description: "called again - he is keen to proceed - need another meeting to confirm", lead_id: lead2.id )
Note.create(description: "wants to meet in the office on Thursday", lead_id:  lead2.id )

Note.create(description: "called again - he is keen to proceed - need another meeting to confirm", lead_id: lead3.id )
Note.create(description: "wants to meet in the office on Thursday", lead_id:  lead3.id )















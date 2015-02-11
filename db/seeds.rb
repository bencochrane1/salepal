Lead.destroy_all
Opportunity.destroy_all
Task.destroy_all
Note.destroy_all
Contact.destroy_all
Email.destroy_all


lead1 = Lead.create(title: "jack.hamblin@generalassemb.ly", status: "hot lead")
lead2 = Lead.create(title: "penelope@generalassemb.ly", status: "warm lead")
lead3 = Lead.create(title: "zac@generalassemb.ly", status: "hot lead")
# lead4 = Lead.create(title: "bencochrane4@me.com", status: "cold lead")
# lead5 = Lead.create(title: "bencochrane5@me.com", status: "hot lead")


Opportunity.create(status: "active", confidence: 70, value: 15000, frequency: "fortnightly", comments: "A great person to do business with, likes to be called Bill.", lead_id: lead1.id )
Opportunity.create(status: "won", confidence: 100, value: 10000, frequency: "weekly", comments: "Got the deal - needed to come in on price though.", lead_id: lead1.id )
Opportunity.create(status: "lost", confidence: 0, value: 35000, frequency: "monthly", comments: "Not a priority to upgrade right now", lead_id: lead1.id )

Opportunity.create(status: "active", confidence: 70, value: 15000, frequency: "fortnightly", comments: "A great person to do business with, likes to be called Bill.", lead_id: lead2.id )
Opportunity.create(status: "won", confidence: 100, value: 10000, frequency: "weekly", comments: "Got the deal - needed to come in on price though.", lead_id: lead2.id )
Opportunity.create(status: "lost", confidence: 0, value: 35000, frequency: "monthly", comments: "Not a priority to upgrade right now", lead_id: lead2.id )

Opportunity.create(status: "active", confidence: 70, value: 15000, frequency: "fortnightly", comments: "A great person to do business with, likes to be called Bill.", lead_id: lead3.id )
Opportunity.create(status: "won", confidence: 100, value: 10000, frequency: "weekly", comments: "Got the deal - needed to come in on price though.", lead_id: lead3.id )
Opportunity.create(status: "lost", confidence: 0, value: 35000, frequency: "monthly", comments: "Not a priority to upgrade right now", lead_id: lead3.id )

# Opportunity.create(status: "active", confidence: 50, value: 9000, frequency: "fortnightly", comments: "A great person to do business with, likes to be called Bill.", lead_id: lead4.id )
# Opportunity.create(status: "won", confidence: 100, value: 11000, frequency: "weekly", comments: "Got the deal - needed to come in on price though.", lead_id: lead4.id )
# Opportunity.create(status: "won", confidence: 100, value: 5000, frequency: "monthly", comments: "Not a priority to upgrade right now", lead_id: lead4.id )

# Opportunity.create(status: "active", confidence: 70, value: 17000, frequency: "fortnightly", comments: "A great person to do business with, likes to be called Bill.", lead_id: lead5.id )
# Opportunity.create(status: "active", confidence: 95, value: 19000, frequency: "weekly", comments: "Got the deal - needed to come in on price though.", lead_id: lead5.id )
# Opportunity.create(status: "active", confidence: 10, value: 350000, frequency: "monthly", comments: "Not a priority to upgrade right now", lead_id: lead5.id )


Task.create(description: "organise second meeting with Joe", due_date: 2015, lead_id: lead1.id)
Task.create(description: "coffee meetup today", due_date: 2014, lead_id: lead1.id)
Task.create(description: "ask about the Depuy account", due_date: 2013, lead_id: lead1.id)

Task.create(description: "meet with Bill", due_date: 2017, lead_id: lead2.id)
Task.create(description: "ask for the account", due_date: 2014, lead_id: lead2.id)
Task.create(description: "go to bank", due_date: 2013, lead_id: lead2.id)

Task.create(description: "ask about trip", due_date: 2015, lead_id: lead3.id)
Task.create(description: "get leave", due_date: 2014, lead_id: lead3.id)
Task.create(description: "meet on Monday", due_date: 2013, lead_id: lead3.id)

# Task.create(description: "see if there is a lower price for Bob", due_date: 2015, lead_id: lead4.id)
# Task.create(description: "call Jimbob again", due_date: 2014, lead_id: lead4.id)
# Task.create(description: "meet in lobby with John from Stanmore", due_date: 2013, lead_id: lead4.id)

# Task.create(description: "do company tax", due_date: 2015, lead_id: lead5.id)
# Task.create(description: "investor preso tomorrow", due_date: 2014, lead_id: lead5.id)
# Task.create(description: "meeting on marketing plan Tuesday", due_date: 2013, lead_id: lead5.id)


Contact.create(name: "Bob Sheffin", title: "Head of Marketing", mobile_number: "0435675857", office_number: "0287577564", email: "bob@sheffin.com.au", url: "sheffin.com.au", lead_id: lead1.id )
Contact.create(name: "Flo Busby", title: "Head of Sales", mobile_number: "0435463546", office_number: "0287577587", email: "flo@sheffin.com.au", url: "sheffin.com.au", lead_id: lead1.id )

Contact.create(name: "Bob Sheffin", title: "Head of Marketing", mobile_number: "0435675857", office_number: "0287577564", email: "bob@sheffin.com.au", url: "sheffin.com.au", lead_id: lead2.id )
Contact.create(name: "Flo Busby", title: "Head of Sales", mobile_number: "0435463546", office_number: "0287577587", email: "flo@sheffin.com.au", url: "sheffin.com.au", lead_id: lead2.id )

Contact.create(name: "Bob Sheffin", title: "Head of Marketing", mobile_number: "0435675857", office_number: "0287577564", email: "bob@sheffin.com.au", url: "sheffin.com.au", lead_id: lead3.id )
Contact.create(name: "Flo Busby", title: "Head of Sales", mobile_number: "0435463546", office_number: "0287577587", email: "flo@sheffin.com.au", url: "sheffin.com.au", lead_id: lead3.id )

# Contact.create(name: "Bob Sheffin", title: "Head of Marketing", mobile_number: "0435675857", office_number: "0287577564", email: "bob@sheffin.com.au", url: "sheffin.com.au", lead_id: lead4.id )
# Contact.create(name: "Flo Busby", title: "Head of Sales", mobile_number: "0435463546", office_number: "0287577587", email: "flo@sheffin.com.au", url: "sheffin.com.au", lead_id: lead4.id )

# Contact.create(name: "Bob Sheffin", title: "Head of Marketing", mobile_number: "0435675857", office_number: "0287577564", email: "bob@sheffin.com.au", url: "sheffin.com.au", lead_id: lead5.id )
# Contact.create(name: "Flo Busby", title: "Head of Sales", mobile_number: "0435463546", office_number: "0287577587", email: "flo@sheffin.com.au", url: "sheffin.com.au", lead_id: lead5.id )


Note.create(description: "called again - he is keen to proceed - need another meeting to confirm", lead_id: lead1.id )
Note.create(description: "wants to meet in the office on Thursday", lead_id:  lead1.id )

Note.create(description: "called again - he is keen to proceed - need another meeting to confirm", lead_id: lead2.id )
Note.create(description: "wants to meet in the office on Thursday", lead_id:  lead2.id )

Note.create(description: "called again - he is keen to proceed - need another meeting to confirm", lead_id: lead3.id )
Note.create(description: "wants to meet in the office on Thursday", lead_id:  lead3.id )

# Note.create(description: "called again - he is keen to proceed - need another meeting to confirm", lead_id: lead4.id )
# Note.create(description: "wants to meet in the office on Thursday", lead_id:  lead4.id )

# Note.create(description: "called again - he is keen to proceed - need another meeting to confirm", lead_id: lead5.id )
# Note.create(description: "wants to meet in the office on Thursday", lead_id:  lead5.id )


# Email.create(subject: "Call next week", to: lead1.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Bill, just seeing if we are still on for today", lead_id: lead1.id )
# Email.create(subject: "Call next week", to: lead2.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Jim, just seeing if we are still on for this Tuesday", lead_id: lead2.id )
# Email.create(subject: "Call next week", to: lead3.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Jake, just seeing if we are still on for this week", lead_id: lead3.id )
# Email.create(subject: "Call next week", to: lead4.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Jill, just seeing if we are still on for this month", lead_id: lead4.id )
# Email.create(subject: "Call next week", to: lead5.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Fred, just seeing if we are still on for this year", lead_id: lead5.id )



# Email.create(subject: "Call next week", to: lead1.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Bill, just seeing if we are still on for today", user_id: user.last, lead_id: lead1.id )
# Email.create(subject: "Call next week", to: lead2.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Jim, just seeing if we are still on for this Tuesday", user_id: user.last, lead_id: lead2.id )
# Email.create(subject: "Call next week", to: lead3.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Jake, just seeing if we are still on for this week", user_id: user.last, lead_id: lead3.id )
# Email.create(subject: "Call next week", to: lead4.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Jill, just seeing if we are still on for this month", user_id: user.last, lead_id: lead4.id )
# Email.create(subject: "Call next week", to: lead5.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Fred, just seeing if we are still on for this year", user_id: user.last, lead_id: lead5.id )

















trigger DedupeReminder on Account (after insert) {
    for (Account acc : trigger.new){
        Case c = new Case();
        c.Subject = 'Dedupe this Account';
        c.OwnerId = '00561000000k0ZD';
        c.AccountId = acc.Id;
        insert c;
    }

}
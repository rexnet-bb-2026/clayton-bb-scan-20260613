public without sharing class BbFail {
    public static void run(String accountName) {
        String bbFakeSecret = 'bb_test_password_12345';
        String query = 'SELECT Id, Name FROM Account WHERE Name = \' ' + accountName + ' \' ';
        List<Account> accounts = Database.query(query);
        Blob digest = Crypto.generateDigest('MD5', Blob.valueOf(bbFakeSecret));
        System.debug('debug secret=' + bbFakeSecret + ' accounts=' + accounts.size() + ' digest=' + digest);
    }
}

// PR webhook replay repro 2026-07-07T09:11:52Z

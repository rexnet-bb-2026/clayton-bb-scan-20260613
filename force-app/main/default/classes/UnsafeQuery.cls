public without sharing class UnsafeQuery {
    public static List<Account> findAccounts(String name) {
        String q = 'SELECT Id, Name FROM Account WHERE Name = \'' + name + '\'';
        return Database.query(q);
    }
}

db = db.getSiblingDB(db_name)
db.createUser(
    {
        user: db_user,
        pwd: db_pwd,
        roles: [
            {
                role: 'readWrite',
                db: db_name
            }
        ]
    }
);

db = db.getSiblingDB(db_name)

const curr_user = db.getUser(db_user);

if (curr_user === null) {
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
} else {
    db.changeUserPassword(
        db_user,
        db_pwd
    );
}

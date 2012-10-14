.class Lcom/android/providers/contacts/ContactsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$OrganizationQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization300Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;
    }
.end annotation


# static fields
.field private static sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# instance fields
.field private mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mContext:Landroid/content/Context;

.field private mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mMimetypeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMimetypeInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mPackageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mPackageQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mReopenDatabase:Z

.field private final mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

.field private mUnrestrictedPackages:[Ljava/lang/String;

.field private mUseStrictPhoneNumberComparison:Z

.field private mVisibleSpecificUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mVisibleSpecificUpdateRawContacts:Landroid/database/sqlite/SQLiteStatement;

.field private mVisibleUpdateRawContacts:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 517
    const-string v0, "contacts2.db"

    const/4 v1, 0x0

    const/16 v2, 0x140

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    .line 472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    .line 494
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 521
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 522
    new-instance v1, Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-direct {v1}, Lcom/android/internal/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    .line 523
    const v1, 0x10d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    .line 526
    const-string v1, "unrestricted_packages"

    const-string v2, "array"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 528
    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUnrestrictedPackages:[Ljava/lang/String;

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUnrestrictedPackages:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    return-void
.end method

.method private appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3030
    const-string v0, "lookup.data_id=data._id AND data.raw_contact_id=raw_contacts._id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    if-eqz p3, :cond_0

    .line 3032
    const-string v0, " AND PHONE_NUMBERS_EQUAL(data.data1, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3034
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-eqz v0, :cond_1

    const-string v0, ", 1)"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    :cond_0
    return-void

    .line 3034
    :cond_1
    const-string v0, ", 0)"

    goto :goto_0
.end method

.method private appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3018
    const-string v0, "raw_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    if-eqz p3, :cond_0

    .line 3020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contacts_view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON (contacts_view._id = raw_contacts.contact_id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    :cond_0
    const-string v0, ", (SELECT data_id FROM phone_lookup WHERE (phone_lookup.min_match = \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    const-string v0, "\')) AS lookup, data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    return-void
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2639
    if-nez p3, :cond_0

    .line 2640
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2644
    :goto_0
    return-void

    .line 2642
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .parameter "toValues"
    .parameter "toKey"
    .parameter "fromValues"
    .parameter "fromKey"

    .prologue
    .line 3089
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3091
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3092
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 3093
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3094
    const-wide/16 v0, 0x1

    .line 3103
    .local v0, longValue:J
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3105
    .end local v0           #longValue:J
    :cond_0
    return-void

    .line 3096
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0       #longValue:J
    goto :goto_0

    .line 3098
    .end local v0           #longValue:J
    .restart local v2       #value:Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 3099
    check-cast v2, Ljava/lang/String;

    .end local v2           #value:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .restart local v0       #longValue:J
    goto :goto_0

    .line 3101
    .end local v0           #longValue:J
    .restart local v2       #value:Ljava/lang/Object;
    :cond_3
    check-cast v2, Ljava/lang/Number;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0       #longValue:J
    goto :goto_0
.end method

.method public static copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "toValues"
    .parameter "toKey"
    .parameter "fromValues"
    .parameter "fromKey"

    .prologue
    .line 3082
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3083
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    :cond_0
    return-void
.end method

.method private static createContactEntitiesView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1335
    const-string v0, "DROP VIEW IF EXISTS contact_entities_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1336
    const-string v0, "DROP VIEW IF EXISTS contact_entities_view_restricted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1338
    const-string v0, "SELECT raw_contacts.account_name AS account_name,raw_contacts.account_type AS account_type,raw_contacts.sourceid AS sourceid,raw_contacts.version AS version,raw_contacts.dirty AS dirty,raw_contacts.deleted AS deleted,raw_contacts.name_verified AS name_verified,package AS res_package,contact_id, raw_contacts.sync1 AS sync1, raw_contacts.sync2 AS sync2, raw_contacts.sync3 AS sync3, raw_contacts.sync4 AS sync4, mimetype, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data_sync1, data_sync2, data_sync3, data_sync4, raw_contacts._id AS _id, is_primary, is_super_primary, data_version, data._id AS data_id,raw_contacts.starred AS starred,raw_contacts.is_restricted AS is_restricted,groups.sourceid AS group_sourceid FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id) LEFT OUTER JOIN packages ON (data.package_id=packages._id) LEFT OUTER JOIN mimetypes ON (data.mimetype_id=mimetypes._id) LEFT OUTER JOIN groups ON (mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND groups._id=data.data1)"

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW contact_entities_view AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW contact_entities_view_restricted AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_restricted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method private static createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1103
    const-string v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1104
    const-string v0, "CREATE INDEX name_lookup_index ON name_lookup (normalized_name,name_type, raw_contact_id, data_id);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1111
    const-string v0, "DROP INDEX IF EXISTS raw_contact_sort_key1_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1112
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (contact_in_visible_group,sort_key);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1117
    const-string v0, "DROP INDEX IF EXISTS raw_contact_sort_key2_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1118
    const-string v0, "CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (contact_in_visible_group,sort_key_alt);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1122
    return-void
.end method

.method private static createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1026
    const-string v0, "DROP TRIGGER IF EXISTS raw_contacts_deleted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1027
    const-string v0, "CREATE TRIGGER raw_contacts_deleted    BEFORE DELETE ON raw_contacts BEGIN    DELETE FROM data     WHERE raw_contact_id=OLD._id;   DELETE FROM agg_exceptions     WHERE raw_contact_id1=OLD._id        OR raw_contact_id2=OLD._id;   DELETE FROM contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1046
    const-string v0, "DROP TRIGGER IF EXISTS contacts_times_contacted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1047
    const-string v0, "DROP TRIGGER IF EXISTS raw_contacts_times_contacted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1054
    const-string v0, "DROP TRIGGER IF EXISTS raw_contacts_marked_deleted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1055
    const-string v0, "CREATE TRIGGER raw_contacts_marked_deleted    AFTER UPDATE ON raw_contacts BEGIN    UPDATE raw_contacts     SET version=OLD.version+1      WHERE _id=OLD._id       AND NEW.deleted!= OLD.deleted; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1065
    const-string v0, "DROP TRIGGER IF EXISTS data_updated;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1066
    const-string v0, "CREATE TRIGGER data_updated AFTER UPDATE ON data BEGIN    UPDATE data     SET data_version=OLD.data_version+1      WHERE _id=OLD._id;   UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1076
    const-string v0, "DROP TRIGGER IF EXISTS data_deleted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1077
    const-string v0, "CREATE TRIGGER data_deleted BEFORE DELETE ON data BEGIN    UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id;   DELETE FROM phone_lookup     WHERE data_id=OLD._id;   DELETE FROM status_updates     WHERE status_update_data_id=OLD._id;   DELETE FROM name_lookup     WHERE data_id=OLD._id; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1091
    const-string v0, "DROP TRIGGER IF EXISTS groups_updated1;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1092
    const-string v0, "CREATE TRIGGER groups_updated1    AFTER UPDATE ON groups BEGIN    UPDATE groups     SET version=OLD.version+1     WHERE _id=OLD._id; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method private static createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter

    .prologue
    const-string v10, " ON ("

    const-string v9, " JOIN "

    const-string v8, " AS "

    const-string v7, ")"

    const-string v6, ", "

    .line 1125
    const-string v0, "DROP VIEW IF EXISTS view_contacts;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1126
    const-string v0, "DROP VIEW IF EXISTS view_contacts_restricted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1127
    const-string v0, "DROP VIEW IF EXISTS view_data;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1128
    const-string v0, "DROP VIEW IF EXISTS view_data_restricted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1129
    const-string v0, "DROP VIEW IF EXISTS view_raw_contacts;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string v0, "DROP VIEW IF EXISTS view_raw_contacts_restricted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1132
    const-string v0, "is_primary, is_super_primary, data_version, package AS res_package,mimetype AS mimetype, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data_sync1, data_sync2, data_sync3, data_sync4"

    .line 1158
    const-string v1, "raw_contacts.account_name AS account_name,raw_contacts.account_type AS account_type,raw_contacts.sourceid AS sourceid,raw_contacts.name_verified AS name_verified,raw_contacts.version AS version,raw_contacts.dirty AS dirty,raw_contacts.sync1 AS sync1,raw_contacts.sync2 AS sync2,raw_contacts.sync3 AS sync3,raw_contacts.sync4 AS sync4"

    .line 1170
    const-string v2, "contacts.custom_ringtone AS custom_ringtone,contacts.custom_call_incoming_photo AS custom_call_incoming_photo,contacts.miliao_status AS miliao_status,contacts.send_to_voicemail AS send_to_voicemail,contacts.last_time_contacted AS last_time_contacted,contacts.times_contacted AS times_contacted,contacts.starred AS starred"

    .line 1186
    const-string v3, "name_raw_contact.display_name_source AS display_name_source, name_raw_contact.display_name AS display_name, name_raw_contact.display_name_alt AS display_name_alt, name_raw_contact.phonetic_name AS phonetic_name, name_raw_contact.phonetic_name_style AS phonetic_name_style, name_raw_contact.sort_key AS sort_key, name_raw_contact.sort_key_alt AS sort_key_alt, name_raw_contact.contact_in_visible_group AS in_visible_group"

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT data._id AS _id,raw_contact_id, raw_contacts.contact_id AS contact_id, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lookup"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "contacts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "nickname"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AS "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "nickname"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "photo_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "name_raw_contact_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "status_update_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "groups"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "sourceid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AS "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "group_sourceid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " JOIN "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetypes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ON ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data.mimetype_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetypes._id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " JOIN "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "raw_contacts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ON ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data.raw_contact_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "raw_contacts._id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " JOIN "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "contacts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ON ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "raw_contacts.contact_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "contacts._id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " JOIN "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "raw_contacts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AS name_raw_contact ON("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "name_raw_contact_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=name_raw_contact."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " LEFT OUTER JOIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "packages"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ON ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data.package_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "packages._id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " LEFT OUTER JOIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "groups"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ON ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetypes.mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "groups._id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE VIEW view_data AS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE VIEW view_data_restricted AS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "raw_contacts.is_restricted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1238
    const-string v0, "custom_ringtone,custom_call_incoming_photo,send_to_voicemail,last_time_contacted,times_contacted,starred"

    .line 1246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT raw_contacts._id AS _id,contact_id, aggregation_mode, deleted, display_name_source, display_name, display_name_alt, phonetic_name, phonetic_name_style, sort_key, sort_key_alt, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_raw_contacts AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_raw_contacts_restricted AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_restricted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts.custom_ringtone AS custom_ringtone, contacts.custom_call_incoming_photo AS custom_call_incoming_photo, contacts.miliao_status AS miliao_status, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "has_phone_number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lookup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "primary_number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "company"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts.last_time_contacted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts.send_to_voicemail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts.starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts.times_contacted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "times_contacted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status_update_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT contacts._id AS _id,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS name_raw_contact ON("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=name_raw_contact."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_contacts AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_contacts_restricted AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "single_is_restricted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method private static createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1304
    const-string v0, "DROP VIEW IF EXISTS view_groups;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1305
    const-string v0, "account_name,account_type,sourceid,version,dirty,title,title_res,notes,system_id,deleted,group_visible,should_sync,custom_ringtone,group_order,sync1,sync2,sync3,sync4,package AS res_package"

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT groups._id AS _id,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups LEFT OUTER JOIN packages ON (groups.package_id = packages._id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_groups AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1332
    return-void
.end method

.method private getCachedId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2780
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2781
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2798
    :goto_0
    return-wide v0

    .line 2787
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0, p3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2788
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2795
    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 2797
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p4, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2789
    :catch_0
    move-exception v0

    .line 2791
    invoke-static {p2, v1, p3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2792
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    goto :goto_1

    .line 2801
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find or create internal lookup table entry for value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 506
    const-class v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    if-nez v1, :cond_0

    .line 507
    new-instance v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 509
    :cond_0
    sget-object v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMimeTypeIdNoDbCheck(Ljava/lang/String;)J
    .locals 3
    .parameter "mimetype"

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeInsert:Landroid/database/sqlite/SQLiteStatement;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCachedId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 2508
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v8

    .line 2509
    new-instance v9, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;

    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v9, p0, v8, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2512
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2513
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2517
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2518
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2519
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2520
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2521
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2522
    invoke-virtual {v8, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 2523
    invoke-virtual {v8, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    .line 2524
    const/4 v7, 0x4

    move-object v0, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2528
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2530
    return-void
.end method

.method private insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 2553
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v8

    .line 2554
    new-instance v9, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;

    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v9, p0, v8, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2557
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2558
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2562
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2563
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2564
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2565
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2566
    invoke-virtual {v8, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 2567
    invoke-virtual {v8, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    .line 2568
    const/4 v7, 0x3

    move-object v0, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2572
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2574
    return-void
.end method

.method private insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 3
    .parameter "stmt"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "normalizedName"

    .prologue
    .line 2595
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2596
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2597
    const/4 v0, 0x3

    int-to-long v1, p6

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2598
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2599
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 2600
    return-void
.end method

.method private insertOrganizationLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 2459
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2460
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v8

    .line 2461
    new-instance v9, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;

    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v9, p0, v8, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2463
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$OrganizationQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2467
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2468
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2469
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2470
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2471
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2472
    invoke-virtual {v8, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 2473
    invoke-virtual {v8, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    .line 2474
    const/4 v7, 0x5

    move-object v0, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V

    .line 2477
    invoke-virtual {v8, v11}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 2478
    invoke-virtual {v8, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    .line 2479
    const/4 v7, 0x5

    move-object v0, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2483
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2485
    return-void
.end method

.method private insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 2414
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v8

    .line 2415
    new-instance v9, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;

    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v9, p0, v8, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2417
    const-string v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2418
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2422
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2423
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2424
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2425
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2426
    invoke-virtual {v8, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 2427
    invoke-virtual {v8, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    .line 2428
    const/4 v7, 0x6

    move-object v0, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2432
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2434
    return-void
.end method

.method private loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 3046
    const-string v0, "DELETE FROM nickname_lookup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3048
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3050
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 3078
    :cond_0
    :goto_0
    return-void

    .line 3054
    :cond_1
    const-string v1, "INSERT INTO nickname_lookup(name,cluster) VALUES (?,?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    move v2, v9

    .line 3059
    :goto_1
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 3060
    aget-object v3, v0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v9

    .line 3061
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 3062
    aget-object v5, v3, v4

    invoke-static {v5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 3064
    const/4 v6, 0x1

    :try_start_1
    invoke-static {v1, v6, v5}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 3065
    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 3067
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3061
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3068
    :catch_0
    move-exception v5

    .line 3071
    :try_start_2
    const-string v6, "ContactsDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot insert nickname: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 3076
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 3059
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3076
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0
.end method

.method private lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2627
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id FROM mimetypes WHERE mimetype=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2634
    :goto_0
    return-wide v0

    .line 2632
    :catch_0
    move-exception v0

    .line 2634
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2291
    const-string v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2293
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2294
    return-void
.end method

.method private rebuildT9Lookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2297
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->rebuildAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2298
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    .line 2299
    return-void
.end method

.method private updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v2, "\',\'"

    .line 2702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM sqlite_stat1 WHERE tbl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND idx=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO sqlite_stat1 (tbl,idx,stat) VALUES (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2705
    return-void
.end method

.method private updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "rawContactUpdate"
    .parameter "rawContactId"
    .parameter "displayName"
    .parameter "displayNameAlternative"
    .parameter "phoneticNameStyle"
    .parameter "phoneticName"
    .parameter "sortKeyPrimary"
    .parameter "sortKeyAlternative"

    .prologue
    .line 1994
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1995
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1996
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1997
    const/4 v0, 0x4

    int-to-long v1, p6

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1998
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1999
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2000
    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2001
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2002
    return-void
.end method

.method private updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    const-string v0, "phone_lookup"

    const-string v0, "data"

    const-string v0, "10000 2 2 1"

    const-string v0, "name_lookup"

    const-string v0, "contacts"

    .line 2653
    :try_start_0
    const-string v0, "contacts"

    const-string v1, "contacts_restricted_index"

    const-string v2, "10000 9000"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    const-string v0, "contacts"

    const-string v1, "contacts_has_phone_index"

    const-string v2, "10000 500"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    const-string v0, "contacts"

    const-string v1, "contacts_visible_index"

    const-string v2, "10000 500 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    const-string v0, "raw_contacts"

    const-string v1, "raw_contacts_source_id_index"

    const-string v2, "10000 1 1 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    const-string v0, "raw_contacts"

    const-string v1, "raw_contacts_contact_id_index"

    const-string v2, "10000 2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    const-string v0, "name_lookup"

    const-string v1, "name_lookup_raw_contact_id_index"

    const-string v2, "10000 3"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    const-string v0, "name_lookup"

    const-string v1, "name_lookup_index"

    const-string v2, "10000 3 2 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    const-string v0, "name_lookup"

    const-string v1, "sqlite_autoindex_name_lookup_1"

    const-string v2, "10000 3 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    const-string v0, "phone_lookup"

    const-string v1, "phone_lookup_index"

    const-string v2, "10000 2 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    const-string v0, "phone_lookup"

    const-string v1, "phone_lookup_min_match_index"

    const-string v2, "10000 2 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    const-string v0, "data"

    const-string v1, "data_mimetype_data1_index"

    const-string v2, "60000 5000 2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    const-string v0, "data"

    const-string v1, "data_raw_contact_id"

    const-string v2, "60000 10"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    const-string v0, "groups"

    const-string v1, "groups_source_id_index"

    const-string v2, "50 1 1 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    const-string v0, "nickname_lookup"

    const-string v1, "sqlite_autoindex_name_lookup_1"

    const-string v2, "500 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2691
    :goto_0
    return-void

    .line 2688
    :catch_0
    move-exception v0

    .line 2689
    const-string v1, "ContactsDatabaseHelper"

    const-string v2, "Could not update index stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeEmailToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 2101
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2102
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 2130
    :goto_0
    return-void

    .line 2106
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2109
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND _id NOT IN (SELECT data_id FROM name_lookup) AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2113
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2114
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2115
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2116
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2117
    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2119
    if-eqz v5, :cond_1

    .line 2120
    const-string v6, "data_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2121
    const-string v1, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2122
    const-string v1, "name_type"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2123
    const-string v1, "normalized_name"

    invoke-static {v5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    const-string v1, "name_lookup"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2128
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeNameToVersion205(JJILjava/lang/String;Lcom/android/providers/contacts/NameSplitter$Name;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;Ljava/lang/StringBuilder;)V
    .locals 15
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "displayNameSource"
    .parameter "currentDisplayName"
    .parameter "name"
    .parameter "structuredNameUpdate"
    .parameter "rawContactUpdate"
    .parameter "splitter"
    .parameter "sb"

    .prologue
    .line 1887
    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 1888
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    move v14, v0

    .line 1889
    .local v14, unadjustedFullNameStyle:I
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    move v4, v0

    move-object/from16 v0, p10

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p7

    iput v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 1890
    const/4 v4, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, p7

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;Z)Ljava/lang/String;

    move-result-object v8

    .line 1894
    .local v8, displayName:Ljava/lang/String;
    const/4 v4, 0x1

    int-to-long v5, v14

    move-object/from16 v0, p8

    move v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1895
    const/4 v4, 0x2

    move-object/from16 v0, p8

    move v1, v4

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1896
    const/4 v4, 0x3

    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    move v5, v0

    int-to-long v5, v5

    move-object/from16 v0, p8

    move v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1897
    const/4 v4, 0x4

    move-object/from16 v0, p8

    move v1, v4

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1898
    invoke-virtual/range {p8 .. p8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1900
    const/16 v4, 0x28

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 1901
    const/4 v4, 0x0

    move-object/from16 v0, p10

    move-object/from16 v1, p7

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;Z)Ljava/lang/String;

    move-result-object v9

    .line 1902
    .local v9, displayNameAlternative:Ljava/lang/String;
    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;

    move-result-object v11

    .line 1903
    .local v11, phoneticName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1904
    .local v12, sortKey:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1906
    .local v13, sortKeyAlternative:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 1907
    move-object v13, v11

    move-object v12, v11

    .line 1914
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 1915
    move-object v12, v8

    .line 1916
    move-object v13, v9

    .line 1919
    :cond_1
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    move v10, v0

    move-object v4, p0

    move-object/from16 v5, p9

    move-wide/from16 v6, p3

    invoke-direct/range {v4 .. v13}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    .end local v9           #displayNameAlternative:Ljava/lang/String;
    .end local v11           #phoneticName:Ljava/lang/String;
    .end local v12           #sortKey:Ljava/lang/String;
    .end local v13           #sortKeyAlternative:Ljava/lang/String;
    :cond_2
    return-void

    .line 1908
    .restart local v9       #displayNameAlternative:Ljava/lang/String;
    .restart local v11       #phoneticName:Ljava/lang/String;
    .restart local v12       #sortKey:Ljava/lang/String;
    .restart local v13       #sortKeyAlternative:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    move v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1910
    :cond_4
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v4

    move-object/from16 v0, p7

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    move v5, v0

    invoke-virtual {v4, v8, v5}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    goto :goto_0
.end method

.method private upgradeNicknameToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 2137
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2138
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 2163
    :goto_0
    return-void

    .line 2142
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2145
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND _id NOT IN (SELECT data_id FROM name_lookup) AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2149
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2150
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2151
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2152
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2154
    const-string v6, "data_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2155
    const-string v1, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2156
    const-string v1, "name_type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2157
    const-string v1, "normalized_name"

    invoke-static {v5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v1, "name_lookup"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2161
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeOrganizationsToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1943
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    .line 1945
    const-string v0, "UPDATE data SET data10=? WHERE _id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1951
    const-string v1, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "display_name_source"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1956
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1957
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1958
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1959
    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1960
    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1962
    invoke-virtual {p3, v7}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v6

    .line 1964
    const/4 v5, 0x1

    int-to-long v8, v6

    invoke-virtual {v10, v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1965
    const/4 v5, 0x2

    invoke-virtual {v10, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1966
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1968
    const/4 v0, 0x0

    .line 1969
    if-nez v7, :cond_1

    if-eqz v4, :cond_1

    .line 1970
    invoke-virtual {p3, v4}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 1971
    invoke-virtual {p3, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v1

    .line 1972
    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 1974
    :cond_0
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1979
    :cond_1
    if-nez v0, :cond_3

    move-object v8, v4

    :goto_1
    move-object v0, p0

    move-object v1, p2

    move-object v5, v4

    move-object v9, v8

    .line 1983
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1987
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1989
    return-void

    :cond_3
    move-object v8, v0

    goto :goto_1
.end method

.method private upgradeStructuredNamesToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1834
    :try_start_0
    const-string v0, "SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 1844
    const-string v0, "UPDATE data SET data10=?,data1=?,data11=? WHERE _id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 1852
    new-instance v12, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v12}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 1853
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1854
    const-string v1, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1858
    :goto_0
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1859
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1860
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1861
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1862
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1864
    invoke-virtual {v12}, Lcom/android/providers/contacts/NameSplitter$Name;->clear()V

    .line 1865
    const/4 v0, 0x4

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 1866
    const/4 v0, 0x5

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 1867
    const/4 v0, 0x6

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 1868
    const/4 v0, 0x7

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 1869
    const/16 v0, 0x8

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 1870
    const/16 v0, 0x9

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 1871
    const/16 v0, 0xa

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 1872
    const/16 v0, 0xb

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    move-object v0, p0

    move-object v7, v12

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 1874
    invoke-direct/range {v0 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeNameToVersion205(JJILjava/lang/String;Lcom/android/providers/contacts/NameSplitter$Name;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;Ljava/lang/StringBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1878
    :catchall_0
    move-exception v0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1880
    :goto_1
    return-void

    .line 1839
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1638
    const-string v0, "ALTER TABLE phone_lookup ADD min_match TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1642
    const-string v0, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1648
    const-string v0, "phone_lookup"

    const-string v1, "phone_lookup_min_match_index"

    const-string v2, "10000 2 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v0, "UPDATE phone_lookup SET min_match=? WHERE data_id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 1657
    const-string v1, "phone_lookup JOIN data ON (data_id=data._id)"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "data1"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1661
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1662
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1663
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1664
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1665
    const/4 v4, 0x1

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1666
    const/4 v3, 0x2

    invoke-virtual {v8, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1667
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1671
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1673
    return-void
.end method

.method private upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1680
    const-string v0, "DELETE FROM raw_contacts WHERE contact_id NOT NULL AND contact_id NOT IN (SELECT _id FROM contacts)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1685
    const-string v0, "ALTER TABLE contacts ADD name_raw_contact_id INTEGER REFERENCES raw_contacts(_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1688
    const-string v0, "ALTER TABLE raw_contacts ADD contact_in_visible_group INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1694
    const-string v0, "UPDATE contacts SET name_raw_contact_id=( SELECT _id FROM raw_contacts WHERE contact_id=contacts._id AND raw_contacts.display_name=contacts.display_name ORDER BY _id LIMIT 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1706
    const-string v0, "CREATE INDEX contacts_name_raw_contact_id_index ON contacts (name_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    const-string v0, "UPDATE contacts SET name_raw_contact_id=( SELECT _id FROM raw_contacts WHERE contact_id=contacts._id ORDER BY _id LIMIT 1) WHERE name_raw_contact_id IS NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1724
    const-string v0, "UPDATE contacts SET display_name=NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1731
    const-string v0, "UPDATE raw_contacts SET contact_in_visible_group=(SELECT in_visible_group FROM contacts WHERE _id=contact_id) WHERE contact_id NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1740
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (contact_in_visible_group,display_name COLLATE LOCALIZED ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1745
    const-string v0, "DROP INDEX contacts_visible_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1746
    const-string v0, "CREATE INDEX contacts_visible_index ON contacts (in_visible_group);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1749
    return-void
.end method

.method private upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 1752
    const-string v0, "ALTER TABLE raw_contacts ADD display_name_alt TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1754
    const-string v0, "ALTER TABLE raw_contacts ADD phonetic_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1756
    const-string v0, "ALTER TABLE raw_contacts ADD phonetic_name_style INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1758
    const-string v0, "ALTER TABLE raw_contacts ADD sort_key TEXT COLLATE PHONEBOOK;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1761
    const-string v0, "ALTER TABLE raw_contacts ADD sort_key_alt TEXT COLLATE PHONEBOOK;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1765
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1767
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    .line 1769
    const-string v1, "UPDATE raw_contacts SET display_name=?,display_name_alt=?,phonetic_name=?,phonetic_name_style=?,sort_key=?,sort_key_alt=? WHERE _id=?"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1780
    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeStructuredNamesToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V

    .line 1781
    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeOrganizationsToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V

    .line 1783
    const-string v0, "DROP INDEX raw_contact_sort_key1_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1784
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (contact_in_visible_group,sort_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1789
    const-string v0, "CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (contact_in_visible_group,sort_key_alt);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1793
    return-void
.end method

.method private upgradeToVersion206(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2005
    const-string v0, "ALTER TABLE raw_contacts ADD name_verified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2007
    return-void
.end method

.method private upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v0, "normalized_name"

    const-string v0, "name_lookup"

    .line 2032
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2033
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 2074
    :goto_0
    return-void

    .line 2037
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2040
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization300Query;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2044
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2045
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2046
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2047
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2048
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2051
    const-string v7, "name_lookup"

    const-string v9, "data_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p1, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2055
    const-string v7, "data_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2056
    const-string v1, "raw_contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2057
    const-string v1, "name_type"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2059
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2060
    const-string v1, "normalized_name"

    invoke-static {v5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    const-string v1, "name_lookup"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2065
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2066
    const-string v1, "normalized_name"

    invoke-static {v6}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v1, "name_lookup"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2072
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2167
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2170
    return-void
.end method

.method private upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter

    .prologue
    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2176
    const-string v1, "UPDATE contacts SET lookup=? WHERE _id=?"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 2180
    const-string v1, "SELECT DISTINCT contact_id FROM raw_contacts WHERE deleted=0 AND account_type=\'com.android.exchange\'"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2186
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2187
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2188
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2189
    const-string v1, "SELECT account_type, account_name, _id, sourceid, display_name FROM raw_contacts WHERE contact_id=? ORDER BY _id"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 2196
    :goto_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2197
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2205
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2218
    :catchall_1
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2219
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2205
    :cond_0
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2209
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2213
    :goto_2
    const/4 v1, 0x2

    invoke-virtual {v7, v1, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2215
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 2211
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 2218
    :cond_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2219
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2221
    return-void
.end method

.method private upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2224
    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY_KEY, property_value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2228
    return-void
.end method

.method private upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2231
    const-string v0, "CREATE TABLE accounts (account_name TEXT, account_type TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2236
    const-string v0, "INSERT INTO accounts SELECT DISTINCT account_name, account_type FROM raw_contacts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2238
    return-void
.end method

.method private upgradeToVersion310(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2241
    const-string v0, "ALTER TABLE contacts ADD company TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2242
    const-string v0, "ALTER TABLE contacts ADD nickname TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2243
    return-void
.end method

.method private upgradeToVersion312(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2246
    const-string v0, "ALTER TABLE calls ADD COLUMN firewalltype INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2247
    return-void
.end method

.method private upgradeToVersion314(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2250
    const-string v0, "DELETE FROM contacts WHERE NOT EXISTS (SELECT 1 FROM raw_contacts WHERE contact_id=contacts._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2251
    return-void
.end method

.method private upgradeToVersion315(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2254
    const-string v0, "ALTER TABLE contacts ADD custom_call_incoming_photo TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2255
    const-string v0, "ALTER TABLE raw_contacts ADD custom_call_incoming_photo TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2256
    return-void
.end method

.method private upgradeToVersion318(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const-string v0, "_id"

    .line 2259
    const-string v0, "ALTER TABLE calls ADD COLUMN normalized_number TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2262
    :try_start_0
    const-string v1, "calls"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2263
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2264
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2265
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    .line 2266
    if-eqz v2, :cond_0

    .line 2267
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2269
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE calls SET normalized_number=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2272
    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 2273
    :goto_1
    :try_start_2
    const-string v2, "ContactsDatabaseHelper"

    const-string v3, "exception when updgrade db to version 318"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2275
    if-eqz v1, :cond_1

    .line 2276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2279
    :cond_1
    :goto_2
    return-void

    .line 2275
    :cond_2
    if-eqz v0, :cond_1

    .line 2276
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2275
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_3

    .line 2276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2275
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 2272
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method private upgradeToVersion319(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2282
    const-string v0, "ALTER TABLE contacts ADD miliao_status INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2283
    return-void
.end method

.method private upgradeToVersion320(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2286
    const-string v0, "UPDATE calls SET type=10 WHERE type=4"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2288
    return-void
.end method


# virtual methods
.method public appendPhoneLookupAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3008
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3009
    const-string v1, "(SELECT DISTINCT raw_contact_id FROM "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 3011
    const-string v0, " WHERE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 3013
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3014
    return-void
.end method

.method public buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .locals 4
    .parameter "qb"
    .parameter "number"

    .prologue
    const/4 v3, 0x1

    .line 2991
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2992
    .local v0, minMatch:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2993
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, v0, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 2994
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2996
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2997
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, p2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 2998
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2999
    return-void
.end method

.method public buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3003
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 3004
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public createNameSplitter()Lcom/android/providers/contacts/NameSplitter;
    .locals 6

    .prologue
    .line 2744
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v2, 0x10400ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v3, 0x10400b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v4, 0x10400af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v5, 0x10400b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 3269
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3278
    if-eqz p1, :cond_0

    .line 3279
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3281
    :cond_0
    const-string v1, "URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3282
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3284
    const-string v3, ", calling user: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3285
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 3286
    if-eqz v3, :cond_2

    .line 3287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3292
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3293
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 3294
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 3295
    const-string v2, ", calling package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3296
    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3309
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3289
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3298
    :cond_3
    const-string v2, ", calling package is one of: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    .line 3299
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 3300
    if-eqz v2, :cond_4

    .line 3301
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3303
    :cond_4
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3299
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3305
    :cond_5
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 2617
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 2618
    .local v0, tokens:[Landroid/text/util/Rfc822Token;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 2619
    const/4 v1, 0x0

    .line 2622
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "email"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2603
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 2604
    .local v2, tokens:[Landroid/text/util/Rfc822Token;
    array-length v3, v2

    if-nez v3, :cond_0

    move-object v3, v5

    .line 2613
    :goto_0
    return-object v3

    .line 2608
    :cond_0
    aget-object v3, v2, v4

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2609
    .local v0, address:Ljava/lang/String;
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2610
    .local v1, at:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2611
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v5

    .line 2613
    goto :goto_0
.end method

.method public getActivityMimeType(J)Ljava/lang/String;
    .locals 5
    .parameter "activityId"

    .prologue
    .line 2870
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2873
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2874
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, mimetype:Ljava/lang/String;
    move-object v2, v1

    .line 2878
    .end local v1           #mimetype:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2876
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2878
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAggregationMode(J)I
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 2964
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2966
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2967
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    .line 2970
    :goto_0
    return v1

    .line 2968
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2970
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getContactEntitiesView(Z)Ljava/lang/String;
    .locals 1
    .parameter "requireRestrictedView"

    .prologue
    .line 3232
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string v0, "contact_entities_view"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "contact_entities_view_restricted"

    goto :goto_0
.end method

.method public getContactId(J)J
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 2953
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2955
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2956
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2959
    :goto_0
    return-wide v1

    .line 2957
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2959
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getContactView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactView(Z)Ljava/lang/String;
    .locals 1
    .parameter "requireRestrictedView"

    .prologue
    .line 3219
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string v0, "view_contacts"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "view_contacts_restricted"

    goto :goto_0
.end method

.method public getDataMimeType(J)Ljava/lang/String;
    .locals 5
    .parameter "dataId"

    .prologue
    .line 2853
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2856
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2857
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, mimetype:Ljava/lang/String;
    move-object v2, v1

    .line 2861
    .end local v1           #mimetype:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2859
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2861
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDataView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataView(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataView(Z)Ljava/lang/String;
    .locals 1
    .parameter "requireRestrictedView"

    .prologue
    .line 3201
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string v0, "view_data"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "view_data_restricted"

    goto :goto_0
.end method

.method public getGroupView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3224
    const-string v0, "view_groups"

    return-object v0
.end method

.method public getMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .parameter "db"
    .parameter "mimetype"

    .prologue
    .line 2830
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_0

    .line 2831
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdNoDbCheck(Ljava/lang/String;)J

    move-result-wide v4

    .line 2841
    :goto_0
    return-wide v4

    .line 2834
    :cond_0
    const-string v4, "SELECT _id FROM mimetypes WHERE mimetype=?"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2836
    .local v3, mimeTypeQuery:Landroid/database/sqlite/SQLiteStatement;
    const-string v4, "INSERT INTO mimetypes(mimetype) VALUES (?)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 2838
    .local v2, mimeTypeInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-direct {p0, v3, v2, p2, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCachedId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J

    move-result-wide v0

    .line 2839
    .local v0, id:J
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2840
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    move-wide v4, v0

    .line 2841
    goto :goto_0
.end method

.method public getMimeTypeId(Ljava/lang/String;)J
    .locals 2
    .parameter "mimetype"

    .prologue
    .line 2822
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2823
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdNoDbCheck(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageId(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2812
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2813
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageQuery:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageInsert:Landroid/database/sqlite/SQLiteStatement;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCachedId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3138
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "properties"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "property_value"

    aput-object v3, v2, v6

    const-string v3, "property_key=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3142
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3144
    .local v9, value:Ljava/lang/String;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3145
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3148
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3151
    if-eqz v9, :cond_1

    move-object v0, v9

    :goto_0
    return-object v0

    .line 3148
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-object v0, p2

    .line 3151
    goto :goto_0
.end method

.method public getRawContactView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getRawContactView(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawContactView(Z)Ljava/lang/String;
    .locals 1
    .parameter "requireRestrictedView"

    .prologue
    .line 3210
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string v0, "view_raw_contacts"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "view_raw_contacts_restricted"

    goto :goto_0
.end method

.method public getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method public getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3039
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 2709
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2710
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    if-eqz v1, :cond_0

    .line 2711
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 2712
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->close()V

    .line 2713
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2715
    :cond_0
    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/T9SearchSupport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2716
    monitor-exit p0

    return-object v0

    .line 2709
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method hasAccessToRestrictedData()Z
    .locals 7

    .prologue
    .line 3169
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3170
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 3173
    .local v2, callerPackages:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 3174
    .local v1, callerPackage:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3175
    const/4 v6, 0x1

    .line 3178
    .end local v1           #callerPackage:Ljava/lang/String;
    :goto_1
    return v6

    .line 3173
    .restart local v1       #callerPackage:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3178
    .end local v1           #callerPackage:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method hasAccessToRestrictedData(Ljava/lang/String;)Z
    .locals 5
    .parameter "requestingPackage"

    .prologue
    .line 3186
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUnrestrictedPackages:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3187
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUnrestrictedPackages:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 3188
    .local v0, allowedPackage:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3189
    const/4 v4, 0x1

    .line 3193
    .end local v0           #allowedPackage:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 3187
    .restart local v0       #allowedPackage:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3193
    .end local v0           #allowedPackage:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 2346
    const-string v0, "DELETE FROM name_lookup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2348
    const-string v0, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2357
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2358
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertOrganizationLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2359
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2360
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2364
    return-void

    .line 2362
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public varargs isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11
    .parameter "projection"
    .parameter "columns"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3240
    if-nez p1, :cond_0

    move v8, v9

    .line 3261
    :goto_0
    return v8

    .line 3245
    :cond_0
    array-length v8, p2

    if-ne v8, v9, :cond_2

    .line 3246
    aget-object v2, p2, v10

    .line 3247
    .local v2, column:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v7, v0, v3

    .line 3248
    .local v7, test:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    .line 3249
    goto :goto_0

    .line 3247
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3253
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #column:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #test:Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v7, v0, v4

    .line 3254
    .restart local v7       #test:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v6, :cond_4

    aget-object v2, v1, v3

    .line 3255
    .restart local v2       #column:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    .line 3256
    goto :goto_0

    .line 3254
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3253
    .end local v2           #column:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_2

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #test:Ljava/lang/String;
    :cond_5
    move v8, v10

    .line 3261
    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 671
    const-string v0, "ContactsDatabaseHelper"

    const-string v1, "Bootstrapping database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 675
    const-string v0, "CREATE TABLE contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,name_raw_contact_id INTEGER REFERENCES raw_contacts(_id),photo_id INTEGER REFERENCES data(_id),custom_ringtone TEXT,custom_call_incoming_photo TEXT,miliao_status INTEGER NOT NULL DEFAULT 0,send_to_voicemail INTEGER NOT NULL DEFAULT 0,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,in_visible_group INTEGER NOT NULL DEFAULT 1,has_phone_number INTEGER NOT NULL DEFAULT 0,lookup TEXT,primary_number TEXT,number_count INTEGER NOT NULL DEFAULT 0,company TEXT,nickname TEXT,status_update_id INTEGER REFERENCES data(_id),single_is_restricted INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 697
    const-string v0, "CREATE INDEX contacts_visible_index ON contacts (in_visible_group);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 701
    const-string v0, "CREATE INDEX contacts_has_phone_index ON contacts (has_phone_number);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 705
    const-string v0, "CREATE INDEX contacts_restricted_index ON contacts (single_is_restricted);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 709
    const-string v0, "CREATE INDEX contacts_name_raw_contact_id_index ON contacts (name_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 714
    const-string v0, "CREATE TABLE raw_contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,is_restricted INTEGER DEFAULT 0,account_name STRING DEFAULT NULL, account_type STRING DEFAULT NULL, sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,deleted INTEGER NOT NULL DEFAULT 0,contact_id INTEGER REFERENCES contacts(_id),aggregation_mode INTEGER NOT NULL DEFAULT 0,aggregation_needed INTEGER NOT NULL DEFAULT 1,custom_ringtone TEXT,custom_call_incoming_photo TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,display_name TEXT,display_name_alt TEXT,display_name_source INTEGER NOT NULL DEFAULT 0,phonetic_name TEXT,phonetic_name_style TEXT,sort_key TEXT COLLATE PHONEBOOK,sort_key_alt TEXT COLLATE PHONEBOOK,name_verified INTEGER NOT NULL DEFAULT 0,contact_in_visible_group INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 751
    const-string v0, "CREATE INDEX raw_contacts_contact_id_index ON raw_contacts (contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 755
    const-string v0, "CREATE INDEX raw_contacts_source_id_index ON raw_contacts (sourceid, account_type, account_name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 767
    const-string v0, "CREATE TABLE packages (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 773
    const-string v0, "CREATE TABLE mimetypes (_id INTEGER PRIMARY KEY AUTOINCREMENT,mimetype TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 779
    const-string v0, "CREATE UNIQUE INDEX mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 784
    const-string v0, "CREATE TABLE data (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,is_primary INTEGER NOT NULL DEFAULT 0,is_super_primary INTEGER NOT NULL DEFAULT 0,data_version INTEGER NOT NULL DEFAULT 0,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT,data6 TEXT,data7 TEXT,data8 TEXT,data9 TEXT,data10 TEXT,data11 TEXT,data12 TEXT,data13 TEXT,data14 TEXT,data15 TEXT,data_sync1 TEXT, data_sync2 TEXT, data_sync3 TEXT, data_sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 813
    const-string v0, "CREATE INDEX data_raw_contact_id ON data (raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 820
    const-string v0, "CREATE INDEX data_mimetype_data1_index ON data (mimetype_id,data1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 826
    const-string v0, "CREATE TABLE phone_lookup (data_id INTEGER PRIMARY KEY REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 835
    const-string v0, "CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 841
    const-string v0, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 848
    const-string v0, "CREATE TABLE name_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_name TEXT NOT NULL,name_type INTEGER NOT NULL,PRIMARY KEY (data_id, normalized_name, name_type));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 861
    const-string v0, "CREATE INDEX name_lookup_raw_contact_id_index ON name_lookup (raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 865
    const-string v0, "CREATE TABLE nickname_lookup (name TEXT,cluster TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    const-string v0, "CREATE UNIQUE INDEX nickname_lookup_index ON nickname_lookup (name, cluster);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 876
    const-string v0, "CREATE TABLE groups (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),account_name STRING DEFAULT NULL, account_type STRING DEFAULT NULL, sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,title TEXT,title_res INTEGER,notes TEXT,system_id TEXT,deleted INTEGER NOT NULL DEFAULT 0,group_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1,custom_ringtone TEXT,group_order INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 899
    const-string v0, "CREATE INDEX groups_source_id_index ON groups (sourceid, account_type, account_name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 905
    const-string v0, "CREATE TABLE IF NOT EXISTS agg_exceptions (_id INTEGER PRIMARY KEY AUTOINCREMENT,type INTEGER NOT NULL, raw_contact_id1 INTEGER REFERENCES raw_contacts(_id), raw_contact_id2 INTEGER REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 914
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index1 ON agg_exceptions (raw_contact_id1, raw_contact_id2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 920
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index2 ON agg_exceptions (raw_contact_id2, raw_contact_id1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 926
    const-string v0, "CREATE TABLE IF NOT EXISTS settings (account_name STRING NOT NULL,account_type STRING NOT NULL,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1, PRIMARY KEY (account_name, account_type) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 937
    const-string v0, "CREATE TABLE calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,numbertype INTEGER,numberlabel TEXT,contactid INTEGER,firewalltype INTEGER NOT NULL DEFAULT 0,normalized_number TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 953
    const-string v0, "CREATE TABLE activities (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,raw_id TEXT,in_reply_to TEXT,author_contact_id INTEGER REFERENCES raw_contacts(_id),target_contact_id INTEGER REFERENCES raw_contacts(_id),published INTEGER NOT NULL,thread_published INTEGER NOT NULL,title TEXT NOT NULL,summary TEXT,link TEXT, thumbnail BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 969
    const-string v0, "CREATE TABLE status_updates (status_update_data_id INTEGER PRIMARY KEY REFERENCES data(_id),status TEXT,status_ts INTEGER,status_res_package TEXT, status_label INTEGER, status_icon INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 978
    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY KEY, property_value TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 983
    const-string v0, "CREATE TABLE accounts (account_name TEXT, account_type TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 992
    const-string v0, "INSERT INTO accounts VALUES(NULL, NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 994
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 996
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 997
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 998
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactEntitiesView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 999
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1000
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1002
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1005
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1008
    const-string v0, "ANALYZE;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1010
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 1017
    const/4 v0, 0x0

    const-string v1, "com.android.contacts"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1019
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "deleted"

    const-string v3, " WHERE "

    .line 537
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 540
    const-string v0, "SELECT _id FROM mimetypes WHERE mimetype=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 542
    const-string v0, "SELECT _id FROM packages WHERE package=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 544
    const-string v0, "SELECT contact_id FROM raw_contacts WHERE _id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 546
    const-string v0, "SELECT aggregation_mode FROM raw_contacts WHERE _id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 548
    const-string v0, "INSERT INTO mimetypes(mimetype) VALUES (?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 550
    const-string v0, "INSERT INTO packages(package) VALUES (?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 553
    const-string v0, "SELECT mimetype FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE data._id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 555
    const-string v0, "SELECT mimetype FROM activities LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) WHERE activities._id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 560
    const-string v0, "UPDATE contacts SET in_visible_group=(SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id=contacts._id GROUP BY contact_id) WHERE contacts._id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mVisibleSpecificUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 566
    const-string v0, "SELECT in_visible_group FROM contacts WHERE _id=contact_id"

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE raw_contacts SET contact_in_visible_group=(CASE WHEN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")=1 THEN 1 ELSE 0 END)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "contact_in_visible_group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mVisibleUpdateRawContacts:Landroid/database/sqlite/SQLiteStatement;

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE raw_contacts SET contact_in_visible_group=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mVisibleSpecificUpdateRawContacts:Landroid/database/sqlite/SQLiteStatement;

    .line 587
    const-string v0, "ATTACH DATABASE \':memory:\' AS presence_db;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 588
    const-string v0, "CREATE TABLE IF NOT EXISTS presence_db.presence (presence_data_id INTEGER PRIMARY KEY REFERENCES data(_id),protocol INTEGER NOT NULL,custom_protocol TEXT,im_handle TEXT,im_account TEXT,presence_contact_id INTEGER REFERENCES contacts(_id),presence_raw_contact_id INTEGER REFERENCES raw_contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0,UNIQUE(protocol, custom_protocol, im_handle, im_account));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    const-string v0, "CREATE INDEX IF NOT EXISTS presence_db.presenceIndex ON presence (presence_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 604
    const-string v0, "CREATE INDEX IF NOT EXISTS presence_db.presenceIndex2 ON presence (presence_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 607
    const-string v0, "CREATE TABLE IF NOT EXISTS presence_db.agg_presence (presence_contact_id INTEGER PRIMARY KEY REFERENCES contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 616
    const-string v0, "CREATE TRIGGER presence_db.presence_deleted BEFORE DELETE ON presence_db.presence BEGIN    DELETE FROM agg_presence     WHERE presence_contact_id = (SELECT presence_contact_id FROM presence WHERE presence_raw_contact_id=OLD.presence_raw_contact_id AND NOT EXISTS(SELECT presence_raw_contact_id FROM presence WHERE presence_contact_id=OLD.presence_contact_id AND presence_raw_contact_id!=OLD.presence_raw_contact_id)); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 634
    const-string v0, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id;"

    .line 656
    const-string v0, "CREATE TRIGGER presence_db.presence_inserted AFTER INSERT ON presence_db.presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 662
    const-string v0, "CREATE TRIGGER presence_db.presence_updated AFTER UPDATE ON presence_db.presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x12c

    const/16 v6, 0xca

    const/16 v3, 0x63

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1401
    if-ge p2, v3, :cond_1

    .line 1402
    const-string v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data will be lost!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const-string v0, "DROP TABLE IF EXISTS contacts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1406
    const-string v0, "DROP TABLE IF EXISTS raw_contacts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1407
    const-string v0, "DROP TABLE IF EXISTS packages;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1408
    const-string v0, "DROP TABLE IF EXISTS mimetypes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1409
    const-string v0, "DROP TABLE IF EXISTS data;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    const-string v0, "DROP TABLE IF EXISTS phone_lookup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1411
    const-string v0, "DROP TABLE IF EXISTS name_lookup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1412
    const-string v0, "DROP TABLE IF EXISTS t9_lookup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1413
    const-string v0, "DROP TABLE IF EXISTS nickname_lookup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1414
    const-string v0, "DROP TABLE IF EXISTS groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    const-string v0, "DROP TABLE IF EXISTS activities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1416
    const-string v0, "DROP TABLE IF EXISTS calls;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1417
    const-string v0, "DROP TABLE IF EXISTS settings;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1418
    const-string v0, "DROP TABLE IF EXISTS status_updates;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1423
    const-string v0, "DROP TABLE IF EXISTS agg_exceptions;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1635
    :cond_0
    return-void

    .line 1429
    :cond_1
    const-string v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    if-ne p2, v3, :cond_25

    .line 1437
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, v5

    .line 1440
    :goto_0
    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 1441
    const-string v0, "CREATE INDEX IF NOT EXISTS mimetypes_mimetype_index ON mimetypes (mimetype,_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1445
    const-string v0, "mimetypes"

    const-string v2, "mimetypes_mimetype_index"

    const-string v3, "50 1 1"

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v5

    .line 1452
    :cond_2
    const/16 v2, 0x65

    if-ne v1, v2, :cond_3

    .line 1454
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v5

    .line 1457
    :cond_3
    const/16 v2, 0x66

    if-ne v1, v2, :cond_4

    .line 1459
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v5

    .line 1462
    :cond_4
    const/16 v2, 0x67

    if-ne v1, v2, :cond_5

    .line 1464
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v5

    .line 1467
    :cond_5
    const/16 v2, 0x68

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_7

    .line 1468
    :cond_6
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1470
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v5

    .line 1473
    :cond_7
    const/16 v2, 0x69

    if-ne v1, v2, :cond_24

    .line 1474
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v5

    move v2, v6

    .line 1479
    :goto_1
    if-ne v2, v6, :cond_8

    .line 1480
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1482
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v5

    .line 1485
    :cond_8
    const/16 v3, 0xcb

    if-ne v2, v3, :cond_9

    .line 1487
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v5

    .line 1490
    :cond_9
    const/16 v3, 0xcc

    if-ne v2, v3, :cond_a

    .line 1491
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1493
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v5

    .line 1496
    :cond_a
    const/16 v3, 0xcd

    if-ne v2, v3, :cond_b

    .line 1497
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion206(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1499
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v5

    .line 1502
    :cond_b
    const/16 v3, 0xce

    if-ne v2, v3, :cond_c

    .line 1503
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V

    move v2, v7

    .line 1507
    :cond_c
    if-ne v2, v7, :cond_d

    .line 1509
    const/16 v0, 0x12d

    move v2, v0

    move v0, v5

    .line 1512
    :cond_d
    const/16 v3, 0x12d

    if-ne v2, v3, :cond_e

    .line 1514
    const/16 v0, 0x12e

    move v2, v0

    move v0, v5

    .line 1517
    :cond_e
    const/16 v3, 0x12e

    if-ne v2, v3, :cond_f

    .line 1518
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeEmailToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1519
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeNicknameToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1520
    const/16 v2, 0x12f

    .line 1523
    :cond_f
    const/16 v3, 0x12f

    if-ne v2, v3, :cond_10

    .line 1524
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1525
    const/16 v2, 0x130

    .line 1528
    :cond_10
    const/16 v3, 0x130

    if-ne v2, v3, :cond_11

    .line 1530
    const/16 v1, 0x131

    move v2, v1

    move v1, v5

    .line 1533
    :cond_11
    const/16 v3, 0x131

    if-ne v2, v3, :cond_12

    .line 1534
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1535
    const/16 v2, 0x132

    .line 1538
    :cond_12
    const/16 v3, 0x132

    if-ne v2, v3, :cond_13

    .line 1539
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1540
    const/16 v2, 0x133

    .line 1543
    :cond_13
    const/16 v3, 0x133

    if-ne v2, v3, :cond_14

    .line 1544
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1545
    const/16 v2, 0x134

    .line 1548
    :cond_14
    const/16 v3, 0x134

    if-ne v2, v3, :cond_15

    .line 1550
    const/16 v0, 0x135

    move v2, v0

    move v0, v5

    .line 1553
    :cond_15
    const/16 v3, 0x135

    if-ne v2, v3, :cond_16

    .line 1554
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion310(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1556
    const/16 v0, 0x136

    move v2, v0

    move v0, v5

    .line 1559
    :cond_16
    const/16 v3, 0x136

    if-ne v2, v3, :cond_23

    .line 1563
    const/16 v0, 0x137

    move v1, v5

    move v2, v5

    move v3, v0

    move v0, v5

    .line 1566
    :goto_2
    const/16 v4, 0x137

    if-ne v3, v4, :cond_17

    .line 1567
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion312(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1568
    const/16 v3, 0x138

    .line 1571
    :cond_17
    const/16 v4, 0x138

    if-ne v3, v4, :cond_18

    .line 1573
    const/16 v2, 0x139

    move v3, v2

    move v2, v5

    .line 1576
    :cond_18
    const/16 v4, 0x139

    if-ne v3, v4, :cond_19

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion314(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1578
    const/16 v3, 0x13a

    .line 1581
    :cond_19
    const/16 v4, 0x13a

    if-ne v3, v4, :cond_1a

    .line 1582
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion315(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1583
    const/16 v3, 0x13b

    .line 1586
    :cond_1a
    const/16 v4, 0x13b

    if-ne v3, v4, :cond_1b

    .line 1588
    const/16 v2, 0x13c

    move v3, v2

    move v2, v5

    .line 1591
    :cond_1b
    const/16 v4, 0x13c

    if-ne v3, v4, :cond_1c

    .line 1593
    const/16 v0, 0x13d

    move v3, v0

    move v0, v5

    .line 1596
    :cond_1c
    const/16 v4, 0x13d

    if-ne v3, v4, :cond_1d

    .line 1597
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion318(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1598
    const/16 v3, 0x13e

    .line 1601
    :cond_1d
    const/16 v4, 0x13e

    if-ne v3, v4, :cond_1e

    .line 1602
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion319(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1604
    const/16 v2, 0x13f

    move v3, v2

    move v2, v5

    .line 1607
    :cond_1e
    const/16 v4, 0x13f

    if-ne v3, v4, :cond_1f

    .line 1608
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion320(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1609
    const/16 v3, 0x140

    .line 1612
    :cond_1f
    if-eqz v2, :cond_20

    .line 1613
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1614
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1615
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactEntitiesView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1616
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1617
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1618
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1619
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1620
    iput-boolean v5, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 1623
    :cond_20
    if-eqz v1, :cond_21

    .line 1624
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1627
    :cond_21
    if-eqz v0, :cond_22

    .line 1628
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildT9Lookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1631
    :cond_22
    if-eq v3, p3, :cond_0

    .line 1632
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error upgrading the database to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move v3, v2

    move v2, v0

    move v0, v4

    goto/16 :goto_2

    :cond_24
    move v2, v1

    move v1, v4

    goto/16 :goto_1

    :cond_25
    move v0, v4

    move v1, p2

    goto/16 :goto_0
.end method

.method public rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2333
    const-string v1, "raw_contacts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2336
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2337
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2338
    invoke-virtual {p2, p1, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2341
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2343
    return-void
.end method

.method public removeContactIfSingleton(J)V
    .locals 5
    .parameter

    .prologue
    const-string v4, ")"

    .line 3116
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT contact_id FROM raw_contacts WHERE _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(SELECT contacts1._id FROM raw_contacts contacts1 JOIN raw_contacts contacts2 ON (contacts1.contact_id=contacts2.contact_id) WHERE contacts1._id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND contacts2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM contacts WHERE _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND NOT EXISTS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3132
    return-void
.end method

.method public setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v5, "ContactsDatabaseHelper"

    .line 2305
    const-string v0, "ContactsDatabaseHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to locale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2308
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2309
    invoke-virtual {v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 2310
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2312
    :try_start_0
    const-string v3, "DROP INDEX raw_contact_sort_key1_index"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2313
    const-string v3, "DROP INDEX raw_contact_sort_key2_index"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2314
    const-string v3, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2316
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2317
    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2318
    invoke-virtual {p0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V

    .line 2319
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildT9Lookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2320
    invoke-static {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2321
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2326
    const-string v2, "ContactsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Locale change completed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    return-void

    .line 2323
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3158
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3159
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "property_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    const-string v1, "property_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "properties"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3162
    return-void
.end method

.method public updateAllVisible()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "in_visible_group"

    const-string v6, "contacts"

    .line 2886
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2887
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    .line 2888
    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 2908
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2909
    const-string v2, "in_visible_group"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2910
    const-string v2, "contacts"

    const-string v2, "in_visible_group=0 AND (SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id=contacts._id GROUP BY contact_id)=1"

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2915
    const-string v4, "in_visible_group"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2916
    const-string v4, "contacts"

    const-string v4, "in_visible_group=1 AND (SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id=contacts._id GROUP BY contact_id)=0"

    invoke-virtual {v0, v6, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2920
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 2932
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mVisibleUpdateRawContacts:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2934
    :cond_1
    return-void
.end method

.method public updateContactVisible(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2940
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    .line 2941
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mVisibleSpecificUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2942
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mVisibleSpecificUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2943
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mVisibleSpecificUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2945
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mVisibleSpecificUpdateRawContacts:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v3, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2946
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mVisibleSpecificUpdateRawContacts:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2947
    return-void
.end method

.method public wipeData()V
    .locals 2

    .prologue
    .line 2723
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2725
    const-string v1, "DELETE FROM accounts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2726
    const-string v1, "INSERT INTO accounts VALUES(NULL, NULL)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2728
    const-string v1, "DELETE FROM contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2729
    const-string v1, "DELETE FROM raw_contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2730
    const-string v1, "DELETE FROM data;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2731
    const-string v1, "DELETE FROM phone_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2732
    const-string v1, "DELETE FROM name_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2733
    const-string v1, "DELETE FROM t9_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2734
    const-string v1, "DELETE FROM groups;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2735
    const-string v1, "DELETE FROM agg_exceptions;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2736
    const-string v1, "DELETE FROM settings;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2737
    const-string v1, "DELETE FROM activities;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2738
    const-string v1, "DELETE FROM calls;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2741
    return-void
.end method

.class public Lcom/android/providers/contacts/ContactAggregator;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactAggregator$1;,
        Lcom/android/providers/contacts/ContactAggregator$PhoneNumberQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$ContactIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$LookupKeyQuery;,
        Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;,
        Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$PhoneLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAccountQuery;,
        Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;,
        Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;,
        Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    }
.end annotation


# static fields
.field private static final PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field private static final SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

.field private final mAggregationExceptionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAggregationExceptionIdsValid:Z

.field private mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

.field private mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private mCustomCallIncomingPhotoUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

.field private mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mEnabled:Z

.field private mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

.field private mMatcher:Lcom/android/providers/contacts/ContactMatcher;

.field private mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdPhoto:J

.field private mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

.field private mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactsMarkedForAggregation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactsQueryByContactId:Ljava/lang/String;

.field private mRawContactsQueryByRawContactId:Ljava/lang/String;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private mSelectionArgs3:[Ljava/lang/String;

.field private mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "ContactAggregator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    .line 86
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    .line 91
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;)V
    .locals 9
    .parameter "contactsProvider"
    .parameter "contactsDatabaseHelper"
    .parameter "photoPriorityResolver"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    .line 128
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 129
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    .line 130
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    .line 137
    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    .line 138
    new-instance v2, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v2}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    .line 139
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mValues:Landroid/content/ContentValues;

    .line 140
    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-direct {v2}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    .line 816
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    .line 214
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 215
    iput-object p2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 216
    iput-object p3, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    .line 218
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 222
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    .line 242
    .local v1, replaceAggregatePresenceSql:Ljava/lang/String;
    const-string v2, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 244
    const-string v2, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=? AND _id<>?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 250
    const-string v2, "DELETE FROM contacts WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 254
    const-string v2, "DELETE FROM agg_presence WHERE presence_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 258
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=1 WHERE _id=? AND aggregation_needed=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    .line 264
    const-string v2, "UPDATE contacts SET photo_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 269
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 274
    const-string v2, "UPDATE contacts SET lookup=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 279
    const-string v2, "UPDATE contacts SET has_phone_number=(SELECT (CASE WHEN COUNT(*)=0 THEN 0 ELSE 1 END) FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=?) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 289
    const-string v2, "UPDATE contacts SET primary_number=(SELECT data1 FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=? ORDER BY is_super_primary DESC LIMIT 1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 300
    const-string v2, "UPDATE contacts SET number_count=(SELECT COUNT(DISTINCT data1) FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=?) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 309
    const-string v2, "UPDATE contacts SET company=(SELECT data1 FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=? ORDER BY is_super_primary DESC LIMIT 1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 320
    const-string v2, "UPDATE contacts SET nickname=(SELECT data1 FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=? ORDER BY is_super_primary DESC LIMIT 1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 331
    const-string v2, "UPDATE contacts SET starred=(SELECT (CASE WHEN COUNT(starred)=0 THEN 0 ELSE 1 END) FROM raw_contacts WHERE contact_id=contacts._id AND starred=1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 337
    const-string v2, "UPDATE contacts SET custom_call_incoming_photo=(SELECT custom_call_incoming_photo FROM raw_contacts WHERE contact_id=contacts._id) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCustomCallIncomingPhotoUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 343
    const-string v2, "UPDATE contacts SET miliao_status=(SELECT (CASE WHEN COUNT(data1)=0 THEN 0 ELSE 1 END) FROM contact_entities_view WHERE mimetype=\'vnd.android.cursor.item/vnd.com.xiaomi.channel.profile\' AND contact_id=?) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 349
    const-string v2, "UPDATE raw_contacts SET contact_id=?, aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 355
    const-string v2, "UPDATE raw_contacts SET contact_id=? WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 360
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 365
    const-string v2, "UPDATE presence SET presence_contact_id=? WHERE presence_raw_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 370
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, has_phone_number=?, single_is_restricted=?, lookup=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 371
    const-string v2, "INSERT INTO contacts (name_raw_contact_id, photo_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, has_phone_number, single_is_restricted, lookup, in_visible_group)  VALUES (?,?,?,?,?,?,?,?,?,?,0)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 373
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdEmail:J

    .line 374
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    .line 375
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    .line 378
    const-string v2, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,is_restricted,name_verified,data._id,data.mimetype_id,is_super_primary FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE raw_contacts._id=?"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    .line 382
    const-string v2, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,is_restricted,name_verified,data._id,data.mimetype_id,is_super_primary FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE contact_id=? AND deleted=0"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    .line 385
    return-void
.end method

.method private declared-synchronized aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Landroid/content/ContentValues;)V
    .locals 17
    .parameter "db"
    .parameter "rawContactId"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "currentContactId"
    .parameter "candidates"
    .parameter "matcher"
    .parameter "values"

    .prologue
    .line 586
    monitor-enter p0

    const/4 v12, 0x0

    .line 588
    .local v12, aggregationMode:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 589
    .local v11, aggModeObject:Ljava/lang/Integer;
    if-eqz v11, :cond_0

    .line 590
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 593
    :cond_0
    const-wide/16 v7, -0x1

    .line 594
    .local v7, contactId:J
    const-wide/16 v13, -0x1

    .line 596
    .local v13, contactIdToSplit:J
    if-nez v12, :cond_7

    .line 597
    invoke-virtual/range {p8 .. p8}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 598
    invoke-virtual/range {p9 .. p9}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v7

    .line 601
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 602
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    .end local v7           #contactId:J
    move-result-wide v7

    .line 607
    .restart local v7       #contactId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-eqz v5, :cond_1

    cmp-long v5, v7, p6

    if-eqz v5, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->containsRawContactsFromAccount(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 609
    move-wide v13, v7

    .line 610
    const-wide/16 v7, -0x1

    .line 617
    :cond_1
    const-wide/16 v15, 0x0

    .line 619
    .local v15, currentContactContentsCount:J
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-eqz v5, :cond_2

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v15

    .line 627
    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-eqz v5, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    if-ne v12, v5, :cond_4

    .line 631
    :cond_3
    move-wide/from16 v7, p6

    .line 634
    :cond_4
    cmp-long v5, v7, p6

    if-nez v5, :cond_8

    .line 636
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->markAggregated(J)V

    .line 662
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateCalls(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 663
    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-eqz v5, :cond_6

    .line 664
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->splitAutomaticallyAggregatedRawContacts(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    .end local v15           #currentContactContentsCount:J
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    .line 613
    :cond_7
    const/4 v5, 0x3

    if-ne v12, v5, :cond_1

    goto :goto_1

    .line 637
    .restart local v15       #currentContactContentsCount:J
    :cond_8
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_9

    .line 639
    :try_start_1
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/contacts/ContactAggregator;->createNewContactForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 640
    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-lez v5, :cond_5

    .line 641
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 586
    .end local v7           #contactId:J
    .end local v11           #aggModeObject:Ljava/lang/Integer;
    .end local v13           #contactIdToSplit:J
    .end local v15           #currentContactContentsCount:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 645
    .restart local v7       #contactId:J
    .restart local v11       #aggModeObject:Ljava/lang/Integer;
    .restart local v13       #contactIdToSplit:J
    .restart local v15       #currentContactContentsCount:J
    :cond_9
    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-nez v5, :cond_a

    .line 647
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 654
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 658
    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedPresence(J)V

    .line 659
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter "db"
    .parameter "contactId"
    .parameter "statement"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1350
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 1351
    return-void
.end method

.method private computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 44
    .parameter "db"
    .parameter "sql"
    .parameter "sqlArgs"
    .parameter "statement"

    .prologue
    .line 1358
    const-wide/16 v26, -0x1

    .line 1359
    .local v26, currentRawContactId:J
    const-wide/16 v17, -0x1

    .line 1360
    .local v17, bestPhotoId:J
    const/16 v30, 0x0

    .line 1361
    .local v30, foundSuperPrimaryPhoto:Z
    const/16 v37, -0x1

    .line 1362
    .local v37, photoPriority:I
    const/16 v43, 0x0

    .line 1363
    .local v43, totalRowCount:I
    const/16 v23, 0x0

    .line 1364
    .local v23, contactSendToVoicemail:I
    const/16 v20, 0x0

    .line 1365
    .local v20, contactCustomRingtone:Ljava/lang/String;
    const-wide/16 v21, 0x0

    .line 1366
    .local v21, contactLastTimeContacted:J
    const/16 v25, 0x0

    .line 1367
    .local v25, contactTimesContacted:I
    const/16 v24, 0x0

    .line 1368
    .local v24, contactStarred:I
    const/16 v40, 0x1

    .line 1369
    .local v40, singleIsRestricted:I
    const/16 v31, 0x0

    .line 1371
    .local v31, hasPhoneNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1374
    invoke-virtual/range {p1 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1376
    .local v19, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1377
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1378
    .local v5, rawContactId:J
    cmp-long v4, v5, v26

    if-eqz v4, :cond_7

    .line 1379
    move-wide/from16 v26, v5

    .line 1380
    add-int/lit8 v43, v43, 0x1

    .line 1383
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1384
    .local v7, displayName:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1385
    .local v8, displayNameSource:I
    const/16 v4, 0xc

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1386
    .local v36, nameVerified:I
    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1387
    .local v16, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccount(Ljava/lang/String;)Z

    move-result v9

    if-eqz v36, :cond_9

    const/4 v4, 0x1

    move v10, v4

    :goto_1
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->processDisplayNameCanditate(JLjava/lang/String;IZZ)V

    .line 1392
    const/4 v4, 0x7

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1393
    const/4 v4, 0x7

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move/from16 v39, v4

    .line 1395
    .local v39, sendToVoicemail:Z
    :goto_2
    if-eqz v39, :cond_1

    .line 1396
    add-int/lit8 v23, v23, 0x1

    .line 1400
    .end local v39           #sendToVoicemail:Z
    :cond_1
    if-nez v20, :cond_2

    const/4 v4, 0x6

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1402
    const/4 v4, 0x6

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1405
    :cond_2
    const/16 v4, 0x8

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 1406
    .local v33, lastTimeContacted:J
    cmp-long v4, v33, v21

    if-lez v4, :cond_3

    .line 1407
    move-wide/from16 v21, v33

    .line 1410
    :cond_3
    const/16 v4, 0x9

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 1411
    .local v42, timesContacted:I
    move/from16 v0, v42

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 1412
    move/from16 v25, v42

    .line 1415
    :cond_4
    const/16 v4, 0xa

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 1416
    const/16 v24, 0x1

    .line 1420
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, v43

    move v1, v4

    if-le v0, v1, :cond_b

    .line 1422
    const/16 v40, 0x0

    .line 1432
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v9, v0

    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x5

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-wide v12, v5

    move-object v15, v7

    invoke-static/range {v9 .. v15}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1440
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #displayNameSource:I
    .end local v16           #accountType:Ljava/lang/String;
    .end local v33           #lastTimeContacted:J
    .end local v36           #nameVerified:I
    .end local v42           #timesContacted:I
    :cond_7
    const/16 v4, 0xd

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1441
    const/16 v4, 0xd

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1442
    .local v28, dataId:J
    const/16 v4, 0xe

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1443
    .local v35, mimetypeId:I
    const/16 v4, 0xf

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    move/from16 v41, v4

    .line 1444
    .local v41, superPrimary:Z
    :goto_4
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    move-wide v11, v0

    cmp-long v4, v9, v11

    if-nez v4, :cond_d

    .line 1445
    if-nez v30, :cond_0

    .line 1446
    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1447
    .restart local v16       #accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I

    move-result v38

    .line 1448
    .local v38, priority:I
    if-nez v41, :cond_8

    move/from16 v0, v38

    move/from16 v1, v37

    if-le v0, v1, :cond_0

    .line 1449
    :cond_8
    move/from16 v37, v38

    .line 1450
    move-wide/from16 v17, v28

    .line 1451
    or-int v30, v30, v41

    goto/16 :goto_0

    .line 1387
    .end local v28           #dataId:J
    .end local v35           #mimetypeId:I
    .end local v38           #priority:I
    .end local v41           #superPrimary:Z
    .restart local v7       #displayName:Ljava/lang/String;
    .restart local v8       #displayNameSource:I
    .restart local v36       #nameVerified:I
    :cond_9
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_1

    .line 1393
    :cond_a
    const/4 v4, 0x0

    move/from16 v39, v4

    goto/16 :goto_2

    .line 1424
    .restart local v33       #lastTimeContacted:J
    .restart local v42       #timesContacted:I
    :cond_b
    const/16 v4, 0xb

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1426
    .local v32, isRestricted:I
    if-nez v32, :cond_6

    .line 1428
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 1443
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #displayNameSource:I
    .end local v16           #accountType:Ljava/lang/String;
    .end local v32           #isRestricted:I
    .end local v33           #lastTimeContacted:J
    .end local v36           #nameVerified:I
    .end local v42           #timesContacted:I
    .restart local v28       #dataId:J
    .restart local v35       #mimetypeId:I
    :cond_c
    const/4 v4, 0x0

    move/from16 v41, v4

    goto :goto_4

    .line 1454
    .restart local v41       #superPrimary:Z
    :cond_d
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    move-wide v11, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v9, v11

    if-nez v4, :cond_0

    .line 1455
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 1460
    .end local v5           #rawContactId:J
    .end local v28           #dataId:J
    .end local v35           #mimetypeId:I
    .end local v41           #superPrimary:Z
    :cond_e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1463
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    move-object v5, v0

    iget-wide v9, v5, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1466
    const-wide/16 v9, -0x1

    cmp-long v4, v17, v9

    if-eqz v4, :cond_f

    .line 1467
    const/4 v4, 0x2

    move-object/from16 v0, p4

    move v1, v4

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1472
    :goto_5
    const/4 v4, 0x3

    move/from16 v0, v43

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const-wide/16 v9, 0x1

    :goto_6
    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1474
    const/4 v4, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1476
    const/4 v4, 0x5

    move-object/from16 v0, p4

    move v1, v4

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1478
    const/4 v4, 0x6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1480
    const/4 v4, 0x7

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1482
    const/16 v4, 0x8

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1484
    const/16 v4, 0x9

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide v9, v0

    move-object/from16 v0, p4

    move v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1486
    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1488
    return-void

    .line 1460
    :catchall_0
    move-exception v4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1469
    :cond_f
    const/4 v4, 0x2

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 1472
    :cond_10
    const-wide/16 v9, 0x0

    goto :goto_6
.end method

.method private containsRawContactsFromAccount(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "db"
    .parameter "contactId"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 675
    if-nez p4, :cond_0

    .line 676
    const-string v2, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type IS NULL  AND account_name IS NULL "

    .line 680
    .local v2, query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 681
    .local v0, args:[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 692
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 694
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 695
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 697
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v3

    .line 683
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_0
    const-string v2, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type=? AND account_name=?"

    .line 687
    .restart local v2       #query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    .line 688
    .restart local v0       #args:[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 689
    aput-object p4, v0, v5

    .line 690
    const/4 v3, 0x2

    aput-object p5, v0, v3

    goto :goto_0

    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_1
    move v3, v4

    .line 695
    goto :goto_1

    .line 697
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private createNewContactForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 758
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 759
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 761
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 762
    .local v0, contactId:J
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 763
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setPresenceContactId(JJ)V

    .line 764
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedPresence(J)V

    .line 765
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 766
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateMiliaoStatus(J)V

    .line 767
    return-void
.end method

.method private findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1939
    new-instance v8, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-direct {v8, v4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 1940
    new-instance v9, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 1943
    invoke-virtual {v9, p2, p3}, Lcom/android/providers/contacts/ContactMatcher;->keepOut(J)V

    .line 1945
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1948
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v8

    move-object v5, v9

    .line 1950
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1954
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1957
    const/16 v0, 0x32

    invoke-virtual {v9, v0}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "structuredNameBased"

    .prologue
    .line 1012
    invoke-virtual {p4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 1013
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1014
    const-string v1, "name_lookup"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;->COLUMNS:[Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v0, "raw_contact_id=? AND name_type IN (0,1,2)"

    move-object v3, v0

    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1020
    .local v8, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1022
    .local v9, normalizedName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1023
    .local v10, type:I
    invoke-virtual {p4, v9, v10}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->add(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1026
    .end local v9           #normalizedName:Ljava/lang/String;
    .end local v10           #type:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1014
    .end local v8           #c:Landroid/database/Cursor;
    :cond_0
    const-string v0, "raw_contact_id=?"

    move-object v3, v0

    goto :goto_0

    .line 1026
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1028
    return-void
.end method

.method private lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 12
    .parameter "db"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x2

    const-string v11, ","

    .line 1184
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1185
    .local v9, firstLetters:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$100(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 1186
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 1187
    .local v7, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    iget-object v0, v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_0

    .line 1188
    iget-object v0, v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1189
    .local v8, firstLetter:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(normalized_name GLOB \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1197
    .local v2, selection:Ljava/lang/String;
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 1185
    .end local v2           #selection:Ljava/lang/String;
    .end local v8           #firstLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1203
    .end local v7           #candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    :cond_1
    return-void
.end method

.method private markAggregated(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 783
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 784
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onContactIdUpdated(J)V

    .line 785
    return-void
.end method

.method private matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V
    .locals 13
    .parameter "db"
    .parameter "selection"
    .parameter "candidates"
    .parameter "matcher"
    .parameter "algorithm"
    .parameter "limit"

    .prologue
    .line 1225
    const-string v1, "name_lookup INNER JOIN raw_contacts ON (name_lookup.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1229
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1231
    .local v11, contactId:Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1232
    .local v6, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1237
    .local v5, nameType:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I
    invoke-static/range {p3 .. p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$100(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 1238
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;
    invoke-static/range {p3 .. p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 1239
    .local v10, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, v10, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mLookupType:I

    iget-object v4, v10, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    move-object/from16 v0, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1244
    .end local v5           #nameType:I
    .end local v6           #name:Ljava/lang/String;
    .end local v10           #candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    .end local v11           #contactId:Ljava/lang/Long;
    .end local v12           #i:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1246
    return-void

    .line 1244
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 7
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const-wide/16 v5, -0x2

    const-wide/16 v3, -0x1

    .line 944
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 945
    .local v0, bestMatch:J
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    move-wide v2, v3

    .line 956
    :goto_0
    return-wide v2

    .line 948
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 950
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 951
    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    move-wide v2, v3

    .line 952
    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 956
    goto :goto_0
.end method

.method private pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J
    .locals 17
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 879
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    move v3, v0

    if-nez v3, :cond_0

    .line 880
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactAggregator;->prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 885
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    move-object v3, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 886
    const-wide/16 v3, -0x1

    .line 923
    :goto_0
    return-wide v3

    .line 889
    :cond_1
    const-string v4, "agg_exceptions JOIN raw_contacts raw_contacts1  ON (agg_exceptions.raw_contact_id1 = raw_contacts1._id)  JOIN raw_contacts raw_contacts2  ON (agg_exceptions.raw_contact_id2 = raw_contacts2._id) "

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id1="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " OR "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "raw_contact_id2"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 896
    .local v11, c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 897
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 898
    .local v16, type:I
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 899
    .local v14, rawContactId1:J
    const-wide/16 v12, -0x1

    .line 900
    .local v12, contactId:J
    cmp-long v3, p2, v14

    if-nez v3, :cond_4

    .line 901
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 903
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 911
    :cond_3
    :goto_2
    const-wide/16 v3, -0x1

    cmp-long v3, v12, v3

    if-eqz v3, :cond_2

    .line 912
    const/4 v3, 0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 913
    move-object/from16 v0, p4

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->keepIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 920
    .end local v12           #contactId:J
    .end local v14           #rawContactId1:J
    .end local v16           #type:I
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 906
    .restart local v12       #contactId:J
    .restart local v14       #rawContactId1:J
    .restart local v16       #type:I
    :cond_4
    const/4 v3, 0x3

    :try_start_1
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 908
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    goto :goto_2

    .line 915
    :cond_5
    move-object/from16 v0, p4

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->keepOut(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 920
    .end local v12           #contactId:J
    .end local v14           #rawContactId1:J
    .end local v16           #type:I
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 923
    const/16 v3, 0x64

    const/4 v4, 0x1

    move-object/from16 v0, p4

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v3

    goto/16 :goto_0
.end method

.method private pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 10
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 967
    const/16 v0, 0x46

    invoke-virtual {p5, v0}, Lcom/android/providers/contacts/ContactMatcher;->prepareSecondaryMatchCandidates(I)Ljava/util/List;

    move-result-object v8

    .line 969
    .local v8, secondaryContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 970
    :cond_0
    const-wide/16 v0, -0x1

    .line 991
    :goto_0
    return-wide v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 973
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 975
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 976
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 978
    if-eqz v7, :cond_2

    .line 979
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 977
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 986
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ") AND name_type IN (0,1,2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 991
    const/16 v0, 0x32

    invoke-virtual {p5, v0, v9}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 830
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 831
    const-string v1, "agg_exceptions"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 836
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 838
    .local v9, rawContactId1:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 839
    .local v11, rawContactId2:J
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 843
    .end local v9           #rawContactId1:J
    .end local v11           #rawContactId2:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 846
    iput-boolean v13, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 847
    return-void
.end method

.method private processDisplayNameCanditate(JLjava/lang/String;IZZ)V
    .locals 5
    .parameter "rawContactId"
    .parameter "displayName"
    .parameter "displayNameSource"
    .parameter "writableAccount"
    .parameter "verified"

    .prologue
    .line 1498
    const/4 v0, 0x0

    .line 1499
    .local v0, replace:Z
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1501
    const/4 v0, 0x1

    .line 1524
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1525
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-wide p1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 1526
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-object p3, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 1527
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput p4, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    .line 1528
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-boolean p6, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    .line 1529
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-boolean p5, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    .line 1531
    :cond_1
    return-void

    .line 1502
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-nez v1, :cond_3

    if-eqz p6, :cond_3

    .line 1505
    const/4 v0, 0x1

    goto :goto_0

    .line 1506
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-ne v1, p6, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ge v1, p4, :cond_4

    .line 1509
    const/4 v0, 0x1

    goto :goto_0

    .line 1510
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ne v1, p4, :cond_0

    .line 1511
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-nez v1, :cond_5

    if-eqz p5, :cond_5

    .line 1512
    const/4 v0, 0x1

    goto :goto_0

    .line 1513
    :cond_5
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-ne v1, p5, :cond_0

    .line 1514
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-object v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/android/providers/contacts/NameNormalizer;->compareComplexity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1517
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1846
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1847
    const-string v3, "_id"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    const-string v3, " IN ("

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    const/4 v3, 0x0

    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1850
    move-object/from16 v0, p6

    move v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 1851
    if-eqz v3, :cond_0

    .line 1852
    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1849
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1856
    :cond_1
    const-string v3, ")"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1859
    const-string v3, " AND _id IN "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object v0, v3

    move-object v1, v11

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1864
    :cond_2
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1865
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$ContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1868
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1869
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1872
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1876
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1877
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1878
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    .line 1879
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1880
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1885
    :cond_5
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    move/from16 v1, p7

    if-le v0, v1, :cond_a

    .line 1886
    const/4 v3, 0x0

    move-object/from16 v0, p6

    move v1, v3

    move/from16 v2, p7

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v12, v3

    .line 1890
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1891
    const-string v3, "_id"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    const-string v3, " IN ("

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1894
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 1895
    if-eqz v3, :cond_6

    .line 1896
    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    :cond_6
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1893
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1900
    :cond_7
    const-string v3, ")"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "_id"

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1906
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1907
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 1908
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1911
    :cond_8
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1914
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1915
    const/4 v6, 0x0

    :goto_6
    array-length v7, v5

    if-ge v6, v7, :cond_9

    .line 1916
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v7

    .line 1917
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aput v7, v5, v6

    .line 1915
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1920
    :cond_9
    new-instance v4, Lcom/android/providers/contacts/ReorderingCursorWrapper;

    invoke-direct {v4, v3, v5}, Lcom/android/providers/contacts/ReorderingCursorWrapper;-><init>(Landroid/database/Cursor;[I)V

    return-object v4

    :cond_a
    move-object/from16 v12, p6

    goto/16 :goto_3
.end method

.method private setContactId(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 774
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 775
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 776
    return-void
.end method

.method private setContactIdAndMarkAggregated(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 792
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 793
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 794
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onContactIdUpdated(J)V

    .line 795
    return-void
.end method

.method private setPresenceContactId(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 799
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 800
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 801
    return-void
.end method

.method private splitAutomaticallyAggregatedRawContacts(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 9
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v8, 0x0

    .line 706
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 707
    const-string v6, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 711
    .local v0, count:I
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    const-string v3, "SELECT _id FROM raw_contacts WHERE contact_id=?   AND _id NOT IN (SELECT raw_contact_id1 FROM agg_exceptions WHERE type=1 UNION SELECT raw_contact_id2 FROM agg_exceptions WHERE type=1)"

    .line 732
    .local v3, query:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 735
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x1

    sub-int v6, v0, v6

    if-ge v2, v6, :cond_2

    .line 736
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 742
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 744
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/providers/contacts/T9SearchSupport;->onContactIdUpdated(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 749
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_0

    .line 750
    invoke-virtual {p0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(J)V

    goto :goto_0

    .line 739
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 740
    .local v4, rawContactId:J
    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->createNewContactForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 747
    .end local v4           #rawContactId:J
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private updateAggregatedPresence(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 574
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 575
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 576
    return-void
.end method

.method private updateCalls(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 1988
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 1989
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1990
    const-string v1, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$PhoneNumberQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND contacts._id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1993
    if-nez v0, :cond_1

    .line 2018
    :cond_0
    return-void

    .line 1999
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 2000
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2001
    if-nez v2, :cond_2

    .line 2002
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2004
    :cond_2
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2007
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2010
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2011
    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    const-string v2, "contactid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2014
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2015
    const-string v2, "PHONE_NUMBERS_EQUAL(number,?)"

    .line 2016
    const-string v3, "calls"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p0, v4, v8

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateContactCompany(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1709
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1710
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1711
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactCompanyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1712
    return-void
.end method

.method private updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .parameter "db"
    .parameter "contactId"

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(J)V

    .line 1723
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updatePrimaryPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1724
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateContactCompany(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1725
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateContactNickname(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1726
    return-void
.end method

.method private updateContactNickname(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1716
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1717
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1718
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactNicknameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1719
    return-void
.end method

.method private updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const-wide/16 v4, -0x1

    .line 1036
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1037
    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-virtual {p5, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    .line 1038
    .local v0, bestMatch:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    move-wide v2, v0

    .line 1045
    :goto_0
    return-wide v2

    .line 1042
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1043
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    move-wide v2, v4

    .line 1045
    goto :goto_0
.end method

.method private updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 15
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 1120
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1121
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v6, 0x2

    iget-wide v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdEmail:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v7, v3, v4

    .line 1122
    const-string v4, "data dataA JOIN data dataB ON (dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "dataA.raw_contact_id=? AND dataA.mimetype_id=? AND dataA.data1 NOT NULL AND dataB.mimetype_id=? AND aggregation_needed=0"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1126
    .local v12, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1127
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1128
    .local v13, contactId:J
    move-object/from16 v0, p4

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithEmailMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1131
    .end local v13           #contactId:J
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1133
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 1075
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 1076
    const-string v1, "name_lookup nameA JOIN name_lookup nameB ON (nameA.normalized_name=nameB.normalized_name) JOIN raw_contacts ON (nameB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "nameA.raw_contact_id=? AND aggregation_needed=0"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1080
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1082
    .local v1, contactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1083
    .local v4, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1084
    .local v3, nameTypeA:I
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1085
    .local v5, nameTypeB:I
    const/4 v7, 0x0

    move-object v0, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V

    .line 1087
    if-ne v3, v10, :cond_0

    if-ne v5, v10, :cond_0

    .line 1089
    invoke-virtual {p4, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithNicknameMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1093
    .end local v1           #contactId:J
    .end local v3           #nameTypeA:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameTypeB:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1095
    return-void
.end method

.method private updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 15
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 1162
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1163
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1164
    const-string v4, "phone_lookup phoneA JOIN data dataA ON (dataA._id=phoneA.data_id) JOIN phone_lookup phoneB ON (phoneA.min_match=phoneB.min_match) JOIN data dataB ON (dataB._id=phoneB.data_id) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "dataA.raw_contact_id=? AND PHONE_NUMBERS_EQUAL(dataA.data1, dataB.data1,?) AND aggregation_needed=0"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1168
    .local v12, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1169
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1170
    .local v13, contactId:J
    move-object/from16 v0, p4

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithPhoneNumberMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1173
    .end local v13           #contactId:J
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1176
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    .line 1966
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1967
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1968
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1969
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 1970
    invoke-direct {p0, p1, p4, p5}, Lcom/android/providers/contacts/ContactAggregator;->lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    .line 1971
    return-void
.end method

.method private updatePrimaryPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 7
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v6, "vnd.android.cursor.item/phone_v2"

    .line 1679
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1680
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1681
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1682
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPrimaryPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1683
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1684
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1685
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1686
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhoneNumberCountUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1687
    return-void
.end method


# virtual methods
.method public aggregateContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 13
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 521
    const-wide/16 v10, 0x0

    .line 522
    .local v10, contactId:J
    const/4 v8, 0x0

    .line 523
    .local v8, accountName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 524
    .local v9, accountType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 525
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAccountQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 529
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 531
    .end local v10           #contactId:J
    .local v6, contactId:J
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 532
    .end local v9           #accountType:Ljava/lang/String;
    .local v4, accountType:Ljava/lang/String;
    const/4 v0, 0x2

    :try_start_2
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 535
    .end local v8           #accountName:Ljava/lang/String;
    .local v5, accountName:Ljava/lang/String;
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 537
    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;J)V

    .line 538
    return-void

    .line 535
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #accountName:Ljava/lang/String;
    .end local v6           #contactId:J
    .restart local v8       #accountName:Ljava/lang/String;
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v10       #contactId:J
    :catchall_0
    move-exception v0

    move-object v4, v9

    .end local v9           #accountType:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    move-wide v6, v10

    .end local v10           #contactId:J
    .restart local v6       #contactId:J
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v4           #accountType:Ljava/lang/String;
    .restart local v9       #accountType:Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v4, v9

    .end local v9           #accountType:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    .end local v4           #accountType:Ljava/lang/String;
    .end local v6           #contactId:J
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v10       #contactId:J
    :cond_0
    move-object v4, v9

    .end local v9           #accountType:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    move-object v5, v8

    .end local v8           #accountName:Ljava/lang/String;
    .restart local v5       #accountName:Ljava/lang/String;
    move-wide v6, v10

    .end local v10           #contactId:J
    .restart local v6       #contactId:J
    goto :goto_0
.end method

.method public aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "currentContactId"

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 549
    :cond_0
    new-instance v8, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 550
    .local v8, candidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;
    new-instance v9, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 551
    .local v9, matcher:Lcom/android/providers/contacts/ContactMatcher;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, values:Landroid/content/ContentValues;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    .line 553
    invoke-direct/range {v0 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public aggregateInTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 32
    .parameter "db"

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v18

    .line 414
    .local v18, count:I
    if-nez v18, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 419
    .local v30, start:J
    sget-boolean v3, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v3, :cond_2

    .line 420
    const-string v3, "ContactAggregator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact aggregation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_2
    const/16 v3, 0xabb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move/from16 v0, v18

    neg-int v0, v0

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 425
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 427
    .local v29, selectionArgs:[Ljava/lang/String;
    const/16 v23, 0x0

    .line 428
    .local v23, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "SELECT _id,contact_id, account_type,account_name FROM raw_contacts WHERE _id IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 431
    .local v26, rawContactId:J
    if-lez v23, :cond_3

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v24, v23, 0x1

    .end local v23           #index:I
    .local v24, index:I
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v29, v23

    move/from16 v23, v24

    .end local v24           #index:I
    .restart local v23       #index:I
    goto :goto_1

    .line 438
    .end local v26           #rawContactId:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v28, v0

    .line 441
    .local v28, rawContactIds:[J
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 442
    .local v17, contactIds:[J
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    .line 443
    .local v15, accountTypes:[Ljava/lang/String;
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    .line 444
    .local v14, accountNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 446
    .local v16, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 447
    const/16 v23, 0x0

    .line 448
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 449
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v28, v23

    .line 450
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v17, v23

    .line 451
    const/4 v3, 0x2

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v23

    .line 452
    const/4 v3, 0x3

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 456
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 459
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 460
    aget-wide v5, v28, v21

    aget-object v7, v15, v21

    aget-object v8, v14, v21

    aget-wide v9, v17, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mValues:Landroid/content/ContentValues;

    move-object v13, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v13}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Landroid/content/ContentValues;)V

    .line 459
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 456
    .end local v21           #i:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    .line 464
    .restart local v21       #i:I
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v19, v3, v30

    .line 465
    .local v19, elapsedTime:J
    const/16 v3, 0xabb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 467
    sget-boolean v3, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v3, :cond_0

    .line 468
    if-nez v18, :cond_7

    const-string v3, ""

    move-object/from16 v25, v3

    .line 469
    .local v25, performance:Ljava/lang/String;
    :goto_4
    const-string v3, "ContactAggregator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact aggregation complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 468
    .end local v25           #performance:Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v4, v0

    div-long v4, v19, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms per contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_4
.end method

.method public clearPendingAggregations()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 475
    return-void
.end method

.method public invalidateAggregationExceptionCache()V
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 821
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    return v0
.end method

.method public markForAggregation(JIZ)V
    .locals 3
    .parameter "rawContactId"
    .parameter "aggregationMode"
    .parameter "force"

    .prologue
    .line 482
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    if-nez p3, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 493
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 490
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public markNewForAggregation(JI)V
    .locals 3
    .parameter "rawContactId"
    .parameter "aggregationMode"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    return-void
.end method

.method public onRawContactInsert(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 500
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 501
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 502
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 503
    .local v0, contactId:J
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setContactId(JJ)V

    .line 504
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 505
    return-void
.end method

.method public queryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "qb"
    .parameter "projection"
    .parameter "contactId"
    .parameter "maxSuggestions"
    .parameter "filter"

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1826
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;

    move-result-object v6

    .local v6, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move-object v5, p2

    move v7, p5

    move-object v8, p6

    .line 1827
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/ContactAggregator;->queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 389
    return-void
.end method

.method public updateAggregateData(J)V
    .locals 3
    .parameter "contactId"

    .prologue
    .line 558
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 563
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 564
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 565
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedPresence(J)V

    .line 568
    invoke-direct {p0, v0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->updateContactMisc(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 569
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->updateMiliaoStatus(J)V

    goto :goto_0
.end method

.method protected updateCallIncomingPhoto(J)V
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 1800
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1801
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1805
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCustomCallIncomingPhotoUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1806
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCustomCallIncomingPhotoUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateCompany(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1690
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1691
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1696
    :goto_0
    return-void

    .line 1695
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateContactCompany(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1623
    .line 1625
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 1627
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1628
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move v8, v9

    .line 1631
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1632
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1633
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1634
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1635
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1636
    const/4 v5, 0x5

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1638
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6, v5}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v0, :cond_0

    move v6, v10

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->processDisplayNameCanditate(JLjava/lang/String;IZZ)V

    .line 1643
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    or-int/2addr v0, v8

    move v8, v0

    .line 1644
    goto :goto_0

    :cond_0
    move v6, v9

    .line 1638
    goto :goto_1

    .line 1646
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1649
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1650
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    invoke-virtual {v0, v10, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1651
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v11, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1652
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1655
    :cond_2
    if-eqz v8, :cond_3

    .line 1656
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1658
    :cond_3
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/T9SearchSupport;->onDisplayNameUpdated(J)V

    .line 1659
    return-void

    .line 1646
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1614
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1615
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1620
    :goto_0
    return-void

    .line 1619
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1666
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1667
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1676
    :goto_0
    return-void

    .line 1671
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1672
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1673
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1674
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1675
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updatePrimaryPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1754
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1755
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1756
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$LookupKeyQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const-string v7, "_id"

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1759
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1768
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1771
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1772
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1776
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v9, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1778
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1779
    return-void

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1745
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1746
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1751
    :goto_0
    return-void

    .line 1750
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method protected updateMiliaoStatus(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 1810
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1817
    :goto_0
    return-void

    .line 1814
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1815
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1816
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMiliaoStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateNickname(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1699
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1700
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1705
    :goto_0
    return-void

    .line 1704
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateContactNickname(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 16
    .parameter
    .parameter

    .prologue
    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v11

    .line 1548
    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-nez v3, :cond_0

    .line 1593
    :goto_0
    return-void

    .line 1552
    :cond_0
    const-wide/16 v13, -0x1

    .line 1553
    const/4 v15, -0x1

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v3, v0

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v3

    .line 1557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contacts JOIN data ON(data.raw_contact_id=raw_contacts._id AND (mimetype_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT NULL))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v3, v0

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1563
    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move v4, v15

    move-wide v5, v13

    .line 1566
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1567
    const/4 v7, 0x1

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1568
    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    .line 1569
    :goto_2
    if-eqz v9, :cond_3

    move-wide v4, v7

    .line 1582
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1585
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1590
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1592
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v3

    invoke-virtual {v3, v11, v12, v4, v5}, Lcom/android/providers/contacts/T9SearchSupport;->onPhotoUpdated(JJ)V

    goto/16 :goto_0

    .line 1568
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 1574
    :cond_3
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object v10, v0

    invoke-virtual {v10, v9}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 1576
    if-le v9, v4, :cond_1

    move v4, v9

    move-wide v5, v7

    .line 1578
    goto :goto_1

    .line 1582
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1588
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4

    :cond_5
    move-wide v4, v5

    goto :goto_3
.end method

.method protected updateStarred(J)V
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 1786
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1787
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1793
    :goto_0
    return-void

    .line 1791
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1792
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

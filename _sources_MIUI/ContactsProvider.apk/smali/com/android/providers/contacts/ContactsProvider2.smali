.class public Lcom/android/providers/contacts/ContactsProvider2;
.super Lcom/android/providers/contacts/SQLiteContentProvider;
.source "ContactsProvider2.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;,
        Lcom/android/providers/contacts/ContactsProvider2$LookupByDisplayNameQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$LookupByRawContactIdQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$LookupBySourceIdQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;,
        Lcom/android/providers/contacts/ContactsProvider2$PhotoDataRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$SipAddressDataRowHanlder;,
        Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$CustomDataRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;,
        Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$DataUpdateQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$DataDeleteQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z

.field private static final sAggregationExceptionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContactsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContactsProjectionWithSnippetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContactsVCardProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCountProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDataProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDistinctDataProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupsSummaryProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLiveFoldersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneLookupProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneNumberProjectionMapForData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRawContactsEntityProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRawContactsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSettingsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStatusUpdatesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStrequentFrequentProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStrequentStarredProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private volatile mAccessLatch:Ljava/util/concurrent/CountDownLatch;

.field private mAccount:Landroid/accounts/Account;

.field private mAccountWritability:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCharArrayBuffer:Landroid/database/CharArrayBuffer;

.field private mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

.field private mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDataRowHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDirtyRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEstimatedStorageRequirement:J

.field private mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

.field private mGroupIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInsertedRawContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mLastStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdIm:J

.field private mMimeTypeIdNickname:J

.field private mMimeTypeIdOrganization:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdStructuredName:J

.field private mName:Lcom/android/providers/contacts/NameSplitter$Name;

.field private mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

.field private mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mPostalSplitter:Lcom/android/providers/contacts/PostalSplitter;

.field private mProviderStatus:I

.field private mRawContactDisplayNameQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

.field private mSyncToNetwork:Z

.field private mUpdatedRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedSyncStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Landroid/content/ContentValues;

.field private mVisibleTouched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-string v7, "account_name"

    const-string v6, "starred"

    const-string v5, "custom_ringtone"

    const-string v4, "_id"

    const-string v3, "com.android.contacts"

    .line 150
    const-string v0, "ContactsProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    .line 175
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    .line 492
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 533
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    .line 534
    const-string v1, "com.android.contacts"

    const-string v1, "contacts"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 535
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/#"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 536
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/#/data"

    const/16 v2, 0x3ec

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 537
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/#/suggestions"

    const/16 v2, 0x1f40

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 539
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/#/suggestions/*"

    const/16 v2, 0x1f40

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 541
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/#/photo"

    const/16 v2, 0x3f1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 542
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/filter/*"

    const/16 v2, 0x3ed

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 543
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/lookup/*"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 544
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/lookup/*/#"

    const/16 v2, 0x3eb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 545
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/as_vcard/*"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 546
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/as_multi_vcard/*"

    const/16 v2, 0x3f3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 548
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/strequent/"

    const/16 v2, 0x3ee

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 549
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/strequent/filter/*"

    const/16 v2, 0x3ef

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 551
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/group/*"

    const/16 v2, 0x3f0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 552
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/group_id/#"

    const/16 v2, 0x3f7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/group_ids/*"

    const/16 v2, 0x3f8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 554
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/account/*/*"

    const/16 v2, 0x3f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 555
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/account/*/*/#"

    const/16 v2, 0x3f5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 556
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/account/*/*/#/*"

    const/16 v2, 0x3f6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 557
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/account_not_group/*"

    const/16 v2, 0x3f9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 558
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/account_not_group/*/*"

    const/16 v2, 0x3fa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 560
    const-string v1, "com.android.contacts"

    const-string v1, "contacts/recent_contacts/"

    const/16 v2, 0x3fb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 562
    const-string v1, "com.android.contacts"

    const-string v1, "raw_contacts"

    const/16 v2, 0x7d2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 563
    const-string v1, "com.android.contacts"

    const-string v1, "raw_contacts/#"

    const/16 v2, 0x7d3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 564
    const-string v1, "com.android.contacts"

    const-string v1, "raw_contacts/#/data"

    const/16 v2, 0x7d4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 565
    const-string v1, "com.android.contacts"

    const-string v1, "raw_contacts/#/entity"

    const/16 v2, 0x7d5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 567
    const-string v1, "com.android.contacts"

    const-string v1, "raw_contact_entities"

    const/16 v2, 0x3a99

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 569
    const-string v1, "com.android.contacts"

    const-string v1, "data"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 570
    const-string v1, "com.android.contacts"

    const-string v1, "data/#"

    const/16 v2, 0xbb9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 571
    const-string v1, "com.android.contacts"

    const-string v1, "data/phones"

    const/16 v2, 0xbba

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 572
    const-string v1, "com.android.contacts"

    const-string v1, "data/phones/#"

    const/16 v2, 0xbbb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 573
    const-string v1, "com.android.contacts"

    const-string v1, "data/phones/filter"

    const/16 v2, 0xbbc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 574
    const-string v1, "com.android.contacts"

    const-string v1, "data/phones/filter/*"

    const/16 v2, 0xbbc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 575
    const-string v1, "com.android.contacts"

    const-string v1, "data/phones/group/#"

    const/16 v2, 0xbc5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 576
    const-string v1, "com.android.contacts"

    const-string v1, "data/phones/group"

    const/16 v2, 0xbc5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 577
    const-string v1, "com.android.contacts"

    const-string v1, "data/emails"

    const/16 v2, 0xbbd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 578
    const-string v1, "com.android.contacts"

    const-string v1, "data/emails/#"

    const/16 v2, 0xbbe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 579
    const-string v1, "com.android.contacts"

    const-string v1, "data/emails/lookup/*"

    const/16 v2, 0xbbf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 580
    const-string v1, "com.android.contacts"

    const-string v1, "data/emails/filter"

    const/16 v2, 0xbc0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 581
    const-string v1, "com.android.contacts"

    const-string v1, "data/emails/filter/*"

    const/16 v2, 0xbc0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 582
    const-string v1, "com.android.contacts"

    const-string v1, "data/postals"

    const/16 v2, 0xbc1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 583
    const-string v1, "com.android.contacts"

    const-string v1, "data/postals/#"

    const/16 v2, 0xbc2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 584
    const-string v1, "com.android.contacts"

    const-string v1, "data/contact/*"

    const/16 v2, 0xbc3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 585
    const-string v1, "com.android.contacts"

    const-string v1, "data/rawcontact/*"

    const/16 v2, 0xbc4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 586
    const-string v1, "com.android.contacts"

    const-string v1, "data/nickname"

    const/16 v2, 0xbc7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 587
    const-string v1, "com.android.contacts"

    const-string v1, "data/nickname/#"

    const/16 v2, 0xbc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 589
    const-string v1, "com.android.contacts"

    const-string v1, "groups"

    const/16 v2, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 590
    const-string v1, "com.android.contacts"

    const-string v1, "groups/#"

    const/16 v2, 0x2711

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 591
    const-string v1, "com.android.contacts"

    const-string v1, "groups_summary"

    const/16 v2, 0x2713

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 593
    const-string v1, "com.android.contacts"

    const-string v1, "syncstate"

    const/16 v2, 0x2af8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 594
    const-string v1, "com.android.contacts"

    const-string v1, "syncstate/#"

    const/16 v2, 0x2af9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 597
    const-string v1, "com.android.contacts"

    const-string v1, "phone_lookup/*"

    const/16 v2, 0xfa0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    const-string v1, "com.android.contacts"

    const-string v1, "phone_with_account_lookup/*"

    const/16 v2, 0xfa1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 599
    const-string v1, "com.android.contacts"

    const-string v1, "aggregation_exceptions"

    const/16 v2, 0x1770

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 601
    const-string v1, "com.android.contacts"

    const-string v1, "aggregation_exceptions/*"

    const/16 v2, 0x1771

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 604
    const-string v1, "com.android.contacts"

    const-string v1, "settings"

    const/16 v2, 0x2328

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 606
    const-string v1, "com.android.contacts"

    const-string v1, "status_updates"

    const/16 v2, 0x1b58

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 607
    const-string v1, "com.android.contacts"

    const-string v1, "status_updates/#"

    const/16 v2, 0x1b59

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 609
    const-string v1, "com.android.contacts"

    const-string v1, "search_suggest_query"

    const/16 v2, 0x2ee1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 611
    const-string v1, "com.android.contacts"

    const-string v1, "search_suggest_query/*"

    const/16 v2, 0x2ee1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 613
    const-string v1, "com.android.contacts"

    const-string v1, "search_suggest_shortcut/*"

    const/16 v2, 0x2ee2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 615
    const-string v1, "com.android.contacts"

    const-string v1, "search_t9"

    const/16 v2, 0x2ee3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 616
    const-string v1, "com.android.contacts"

    const-string v1, "search_t9/*"

    const/16 v2, 0x2ee3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 617
    const-string v1, "com.android.contacts"

    const-string v1, "rebuild_t9_index"

    const/16 v2, 0x2ee4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 619
    const-string v1, "com.android.contacts"

    const-string v1, "live_folders/contacts"

    const/16 v2, 0x36b0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 621
    const-string v1, "com.android.contacts"

    const-string v1, "live_folders/contacts/*"

    const/16 v2, 0x36b3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 623
    const-string v1, "com.android.contacts"

    const-string v1, "live_folders/contacts_with_phones"

    const/16 v2, 0x36b1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 625
    const-string v1, "com.android.contacts"

    const-string v1, "live_folders/favorites"

    const/16 v2, 0x36b2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 628
    const-string v1, "com.android.contacts"

    const-string v1, "provider_status"

    const/16 v2, 0x3e81

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 633
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    .line 634
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    const-string v1, "_count"

    const-string v2, "COUNT(*)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    .line 637
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name_alt"

    const-string v2, "display_name_alt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name_source"

    const-string v2, "display_name_source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "phonetic_name"

    const-string v2, "phonetic_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "phonetic_name_style"

    const-string v2, "phonetic_name_style"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sort_key"

    const-string v2, "sort_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sort_key_alt"

    const-string v2, "sort_key_alt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "starred"

    const-string v1, "starred"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "in_visible_group"

    const-string v2, "in_visible_group"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_ringtone"

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_call_incoming_photo"

    const-string v2, "custom_call_incoming_photo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "miliao_status"

    const-string v2, "miliao_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "has_phone_number"

    const-string v2, "has_phone_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lookup"

    const-string v2, "lookup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "primary_number"

    const-string v2, "primary_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number_count"

    const-string v2, "number_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "company"

    const-string v2, "company"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "nickname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_presence"

    const-string v2, "agg_presence.mode"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status"

    const-string v2, "contacts_status_updates.status"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_ts"

    const-string v2, "contacts_status_updates.status_ts"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_res_package"

    const-string v2, "contacts_status_updates.status_res_package"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_label"

    const-string v2, "contacts_status_updates.status_label"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_icon"

    const-string v2, "contacts_status_updates.status_icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Ljava/util/HashMap;

    .line 679
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 680
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Ljava/util/HashMap;

    const-string v1, "snippet_mimetype"

    const-string v2, "snippet_mimetype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Ljava/util/HashMap;

    const-string v1, "snippet_data_id"

    const-string v2, "snippet_data_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Ljava/util/HashMap;

    const-string v1, "snippet_data1"

    const-string v2, "snippet_data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Ljava/util/HashMap;

    const-string v1, "snippet_data2"

    const-string v2, "snippet_data2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Ljava/util/HashMap;

    const-string v1, "snippet_data3"

    const-string v2, "snippet_data3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Ljava/util/HashMap;

    const-string v1, "snippet_data4"

    const-string v2, "snippet_data4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentStarredProjectionMap:Ljava/util/HashMap;

    .line 694
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentStarredProjectionMap:Ljava/util/HashMap;

    const-string v1, "times_contacted_sort"

    const-string v2, "9223372036854775807 AS times_contacted_sort"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentFrequentProjectionMap:Ljava/util/HashMap;

    .line 698
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentFrequentProjectionMap:Ljava/util/HashMap;

    const-string v1, "times_contacted_sort"

    const-string v2, "times_contacted AS times_contacted_sort"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Ljava/util/HashMap;

    .line 702
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Ljava/util/HashMap;

    const-string v1, "_display_name"

    const-string v2, "display_name || \'.vcf\' AS _display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Ljava/util/HashMap;

    const-string v1, "_size"

    const-string v2, "NULL AS _size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    .line 707
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v1, "account_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sourceid"

    const-string v2, "sourceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "version"

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name_alt"

    const-string v2, "display_name_alt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name_source"

    const-string v2, "display_name_source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "phonetic_name"

    const-string v2, "phonetic_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "phonetic_name_style"

    const-string v2, "phonetic_name_style"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name_verified"

    const-string v2, "name_verified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sort_key"

    const-string v2, "sort_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sort_key_alt"

    const-string v2, "sort_key_alt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_ringtone"

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_call_incoming_photo"

    const-string v2, "custom_call_incoming_photo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "starred"

    const-string v1, "starred"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "aggregation_mode"

    const-string v2, "aggregation_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync1"

    const-string v2, "sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync2"

    const-string v2, "sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync3"

    const-string v2, "sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync4"

    const-string v2, "sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    .line 745
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "raw_contact_id"

    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_version"

    const-string v2, "data_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_primary"

    const-string v2, "is_primary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_super_primary"

    const-string v2, "is_super_primary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "res_package"

    const-string v2, "res_package"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "mimetype"

    const-string v2, "mimetype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data1"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data2"

    const-string v2, "data2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data3"

    const-string v2, "data3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data4"

    const-string v2, "data4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data5"

    const-string v2, "data5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data6"

    const-string v2, "data6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data7"

    const-string v2, "data7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data8"

    const-string v2, "data8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data9"

    const-string v2, "data9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data10"

    const-string v2, "data10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data11"

    const-string v2, "data11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data12"

    const-string v2, "data12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data13"

    const-string v2, "data13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data14"

    const-string v2, "data14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data15"

    const-string v2, "data15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_sync1"

    const-string v2, "data_sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_sync2"

    const-string v2, "data_sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_sync3"

    const-string v2, "data_sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_sync4"

    const-string v2, "data_sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v1, "account_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "sourceid"

    const-string v2, "sourceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "version"

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "name_verified"

    const-string v2, "name_verified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "lookup"

    const-string v2, "lookup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "nickname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name_alt"

    const-string v2, "display_name_alt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name_source"

    const-string v2, "display_name_source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "phonetic_name"

    const-string v2, "phonetic_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "phonetic_name_style"

    const-string v2, "phonetic_name_style"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "sort_key"

    const-string v2, "sort_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "sort_key_alt"

    const-string v2, "sort_key_alt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_ringtone"

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_call_incoming_photo"

    const-string v2, "custom_call_incoming_photo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "starred"

    const-string v1, "starred"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "in_visible_group"

    const-string v2, "in_visible_group"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "name_raw_contact_id"

    const-string v2, "name_raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_sourceid"

    const-string v2, "group_sourceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneNumberProjectionMapForData:Ljava/util/HashMap;

    .line 802
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneNumberProjectionMapForData:Ljava/util/HashMap;

    const-string v1, "phone_number_group_by_column"

    const-string v2, "substr(data4,1,11) AS phone_number_group_by_column"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 807
    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string v1, "account_name"

    const-string v1, "account_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v1, "sourceid"

    const-string v2, "sourceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v1, "version"

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string v1, "is_restricted"

    const-string v2, "is_restricted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string v1, "sync1"

    const-string v2, "sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v1, "sync2"

    const-string v2, "sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v1, "sync3"

    const-string v2, "sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string v1, "sync4"

    const-string v2, "sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v1, "name_verified"

    const-string v2, "name_verified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v1, "res_package"

    const-string v2, "res_package"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v1, "mimetype"

    const-string v2, "mimetype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string v1, "data1"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v1, "data2"

    const-string v2, "data2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v1, "data3"

    const-string v2, "data3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v1, "data4"

    const-string v2, "data4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string v1, "data5"

    const-string v2, "data5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v1, "data6"

    const-string v2, "data6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-string v1, "data7"

    const-string v2, "data7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v1, "data8"

    const-string v2, "data8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v1, "data9"

    const-string v2, "data9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string v1, "data10"

    const-string v2, "data10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string v1, "data11"

    const-string v2, "data11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string v1, "data12"

    const-string v2, "data12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string v1, "data13"

    const-string v2, "data13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string v1, "data14"

    const-string v2, "data14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v1, "data15"

    const-string v2, "data15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const-string v1, "data_sync1"

    const-string v2, "data_sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const-string v1, "data_sync2"

    const-string v2, "data_sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string v1, "data_sync3"

    const-string v2, "data_sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string v1, "data_sync4"

    const-string v2, "data_sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v1, "data_id"

    const-string v2, "data_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v1, "starred"

    const-string v1, "starred"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v1, "data_version"

    const-string v2, "data_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v1, "is_primary"

    const-string v2, "is_primary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const-string v1, "is_super_primary"

    const-string v2, "is_super_primary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string v1, "group_sourceid"

    const-string v2, "group_sourceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsEntityProjectionMap:Ljava/util/HashMap;

    .line 851
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_presence"

    const-string v2, "agg_presence.mode"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status"

    const-string v2, "contacts_status_updates.status"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_ts"

    const-string v2, "contacts_status_updates.status_ts"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_res_package"

    const-string v2, "contacts_status_updates.status_res_package"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_label"

    const-string v2, "contacts_status_updates.status_label"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_icon"

    const-string v2, "contacts_status_updates.status_icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "mode"

    const-string v2, "presence.mode"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "status_updates.status"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status_ts"

    const-string v2, "status_updates.status_ts"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status_res_package"

    const-string v2, "status_updates.status_res_package"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status_label"

    const-string v2, "status_updates.status_label"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status_icon"

    const-string v2, "status_updates.status_icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    .line 884
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "MIN(_id) AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_version"

    const-string v2, "data_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_primary"

    const-string v2, "is_primary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_super_primary"

    const-string v2, "is_super_primary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "res_package"

    const-string v2, "res_package"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "mimetype"

    const-string v2, "mimetype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data1"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data2"

    const-string v2, "data2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data3"

    const-string v2, "data3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data4"

    const-string v2, "data4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data5"

    const-string v2, "data5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data6"

    const-string v2, "data6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data7"

    const-string v2, "data7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data8"

    const-string v2, "data8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data9"

    const-string v2, "data9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data10"

    const-string v2, "data10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data11"

    const-string v2, "data11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data12"

    const-string v2, "data12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data13"

    const-string v2, "data13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data14"

    const-string v2, "data14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data15"

    const-string v2, "data15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_sync1"

    const-string v2, "data_sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_sync2"

    const-string v2, "data_sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_sync3"

    const-string v2, "data_sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_sync4"

    const-string v2, "data_sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "lookup"

    const-string v2, "lookup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "nickname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name_alt"

    const-string v2, "display_name_alt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name_source"

    const-string v2, "display_name_source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "phonetic_name"

    const-string v2, "phonetic_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "phonetic_name_style"

    const-string v2, "phonetic_name_style"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "sort_key"

    const-string v2, "sort_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "sort_key_alt"

    const-string v2, "sort_key_alt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_ringtone"

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_call_incoming_photo"

    const-string v2, "custom_call_incoming_photo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "starred"

    const-string v1, "starred"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "in_visible_group"

    const-string v2, "in_visible_group"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_sourceid"

    const-string v2, "group_sourceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_presence"

    const-string v2, "agg_presence.mode"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status"

    const-string v2, "contacts_status_updates.status"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_ts"

    const-string v2, "contacts_status_updates.status_ts"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_res_package"

    const-string v2, "contacts_status_updates.status_res_package"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_label"

    const-string v2, "contacts_status_updates.status_label"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_status_icon"

    const-string v2, "contacts_status_updates.status_icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "mode"

    const-string v2, "presence.mode"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "chat_capability"

    const-string v2, "presence.chat_capability"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "status_updates.status"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status_ts"

    const-string v2, "status_updates.status_ts"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status_res_package"

    const-string v2, "status_updates.status_res_package"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status_label"

    const-string v2, "status_updates.status_label"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    const-string v1, "status_icon"

    const-string v2, "status_updates.status_icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    .line 966
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "contacts_view._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "lookup"

    const-string v2, "contacts_view.lookup AS lookup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "contacts_view.display_name AS display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_time_contacted"

    const-string v2, "contacts_view.last_time_contacted AS last_time_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "times_contacted"

    const-string v2, "contacts_view.times_contacted AS times_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "starred"

    const-string v1, "contacts_view.starred AS starred"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "in_visible_group"

    const-string v2, "contacts_view.in_visible_group AS in_visible_group"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "contacts_view.photo_id AS photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_ringtone"

    const-string v1, "contacts_view.custom_ringtone AS custom_ringtone"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "custom_call_incoming_photo"

    const-string v2, "contacts_view.custom_call_incoming_photo AS custom_call_incoming_photo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "has_phone_number"

    const-string v2, "contacts_view.has_phone_number AS has_phone_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "send_to_voicemail"

    const-string v2, "contacts_view.send_to_voicemail AS send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "company"

    const-string v2, "contacts_view.company AS company"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "data1 AS number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "data2 AS type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    const-string v1, "label"

    const-string v2, "data3 AS label"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1014
    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string v1, "account_name"

    const-string v1, "account_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string v1, "sourceid"

    const-string v2, "sourceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string v1, "dirty"

    const-string v2, "dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string v1, "version"

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v1, "res_package"

    const-string v2, "res_package"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-string v1, "title_res"

    const-string v2, "title_res"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string v1, "group_visible"

    const-string v2, "group_visible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string v1, "system_id"

    const-string v2, "system_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string v1, "notes"

    const-string v2, "notes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string v1, "should_sync"

    const-string v2, "should_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string v1, "group_order"

    const-string v2, "group_order"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    const-string v1, "custom_ringtone"

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string v1, "sync1"

    const-string v2, "sync1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string v1, "sync2"

    const-string v2, "sync2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string v1, "sync3"

    const-string v2, "sync3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string v1, "sync4"

    const-string v2, "sync4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    .line 1037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1038
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1039
    const-string v1, "summ_count"

    const-string v2, "(SELECT COUNT(DISTINCT contacts._id) FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND data.data1=groups._id) AS summ_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string v1, "summ_phones"

    const-string v2, "(SELECT COUNT(DISTINCT contacts._id) FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND data.data1=groups._id AND has_phone_number) AS summ_phones"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsSummaryProjectionMap:Ljava/util/HashMap;

    .line 1051
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1052
    const-string v1, "_id"

    const-string v1, "agg_exceptions._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    const-string v1, "raw_contact_id1"

    const-string v2, "raw_contact_id1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const-string v1, "raw_contact_id2"

    const-string v2, "raw_contact_id2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sAggregationExceptionsProjectionMap:Ljava/util/HashMap;

    .line 1059
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1060
    const-string v1, "account_name"

    const-string v1, "account_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string v1, "account_type"

    const-string v2, "account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string v1, "ungrouped_visible"

    const-string v2, "ungrouped_visible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string v1, "should_sync"

    const-string v2, "should_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    const-string v1, "any_unsynced"

    const-string v2, "(CASE WHEN MIN(should_sync,(SELECT (CASE WHEN MIN(should_sync) IS NULL THEN 1 ELSE MIN(should_sync) END) FROM groups WHERE groups.account_name=settings.account_name AND groups.account_type=settings.account_type))=0 THEN 1 ELSE 0 END) AS any_unsynced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const-string v1, "summ_count"

    const-string v2, "(SELECT COUNT(*) FROM (SELECT 1 FROM settings LEFT OUTER JOIN raw_contacts ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) GROUP BY settings.account_name,settings.account_type,contact_id HAVING COUNT(data.data1) == 0)) AS summ_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const-string v1, "summ_phones"

    const-string v2, "(SELECT COUNT(*) FROM (SELECT 1 FROM settings LEFT OUTER JOIN raw_contacts ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) WHERE has_phone_number GROUP BY settings.account_name,settings.account_type,contact_id HAVING COUNT(data.data1) == 0)) AS summ_phones"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sSettingsProjectionMap:Ljava/util/HashMap;

    .line 1082
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1083
    const-string v1, "presence_raw_contact_id"

    const-string v2, "presence_raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    const-string v1, "presence_data_id"

    const-string v2, "data._id AS presence_data_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const-string v1, "im_account"

    const-string v2, "im_account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const-string v1, "im_handle"

    const-string v2, "im_handle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string v1, "protocol"

    const-string v2, "protocol"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    const-string v1, "custom_protocol"

    const-string v2, "(CASE WHEN custom_protocol=\'\' THEN NULL ELSE custom_protocol END) AS custom_protocol"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    const-string v1, "mode"

    const-string v2, "mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    const-string v1, "chat_capability"

    const-string v2, "chat_capability"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    const-string v1, "status"

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const-string v1, "status_ts"

    const-string v2, "status_ts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const-string v1, "status_res_package"

    const-string v2, "status_res_package"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const-string v1, "status_icon"

    const-string v2, "status_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v1, "status_label"

    const-string v2, "status_label"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStatusUpdatesProjectionMap:Ljava/util/HashMap;

    .line 1104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    .line 1105
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "display_name AS name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;-><init>()V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    .line 525
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    .line 526
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    .line 527
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    .line 2046
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    .line 2053
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    .line 2054
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    .line 2055
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    .line 2056
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    .line 2058
    iput v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 2059
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mEstimatedStorageRequirement:J

    .line 2062
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInsertedRawContacts:Ljava/util/HashMap;

    .line 2063
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mUpdatedRawContacts:Ljava/util/HashSet;

    .line 2064
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirtyRawContacts:Ljava/util/HashSet;

    .line 2065
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mUpdatedSyncStates:Ljava/util/HashMap;

    .line 2067
    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 6417
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/ContactsProvider2;JJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 146
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsProvider2;->setIsPrimary(JJJ)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInsertedRawContacts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/providers/contacts/ContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/accounts/Account;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 146
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactsProvider2;->getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/accounts/Account;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->onLegacyContactImportSuccess()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->onLegacyContactImportFailure()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/CommonNicknameCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/ContactsProvider2;JJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 146
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsProvider2;->setIsSuperPrimary(JJJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/contacts/ContactsProvider2;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/contacts/ContactsProvider2;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->setRawContactDirty(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/contacts/ContactsProvider2;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->isNewRawContact(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/ContactAggregator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/NameSplitter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/contacts/ContactsProvider2;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->triggerAggregation(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/providers/contacts/ContactsProvider2;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->deleteNameLookup(J)V

    return-void
.end method

.method private static addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "toField"
    .parameter "fromField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1116
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    return-void
.end method

.method private appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-string v4, "account_type"

    .line 6008
    const-string v0, "account_name"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6009
    const-string v1, "account_type"

    invoke-static {p2, v4}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6011
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 6012
    if-eqz v2, :cond_0

    .line 6014
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v1, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6020
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 6021
    :goto_0
    if-eqz v2, :cond_2

    .line 6022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 6029
    :goto_1
    return-void

    .line 6020
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 6027
    :cond_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v5, "account_type"

    .line 6032
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6033
    const-string v1, "account_type"

    invoke-static {p1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6035
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 6036
    if-eqz v2, :cond_0

    .line 6038
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6044
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 6045
    :goto_0
    if-eqz v2, :cond_3

    .line 6046
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "account_type"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6050
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6051
    const-string v0, " AND ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6052
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6053
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6055
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6057
    :goto_1
    return-object v0

    .line 6044
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 6057
    goto :goto_1
.end method

.method private appendContactsTables(Ljava/lang/StringBuilder;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5865
    .line 5866
    const-string v0, "requesting_package"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5868
    if-eqz v0, :cond_3

    .line 5869
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    .line 5871
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5872
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "contact_presence"

    aput-object v2, v1, v3

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5874
    const-string v0, " LEFT OUTER JOIN agg_presence ON (_id = presence_contact_id)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5877
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "contact_status"

    aput-object v2, v1, v3

    const-string v2, "contact_status_res_package"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "contact_status_icon"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "contact_status_label"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "contact_status_ts"

    aput-object v3, v1, v2

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5883
    const-string v0, " LEFT OUTER JOIN status_updates contacts_status_updates ON (status_update_id=contacts_status_updates.status_update_data_id)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5888
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 5869
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private appendIds(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V
    .locals 5
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2587
    .local p2, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2588
    .local v1, id:J
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2591
    .end local v1           #id:J
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2592
    return-void
.end method

.method private appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "projection"
    .parameter "arg"

    .prologue
    const/4 v3, 0x0

    .line 6552
    if-nez p1, :cond_0

    .line 6553
    const/4 v2, 0x0

    .line 6559
    :goto_0
    return-object v2

    .line 6555
    :cond_0
    array-length v0, p1

    .line 6556
    .local v0, length:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 6557
    .local v1, newProjection:[Ljava/lang/String;
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6558
    aput-object p2, v1, v0

    move-object v2, v1

    .line 6559
    goto :goto_0
.end method

.method private appendRawContactsByNormalizedNameFilter(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6518
    const-string v0, "(SELECT raw_contact_id FROM name_lookup WHERE normalized_name GLOB \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6523
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6524
    const-string v0, "*\' AND name_type IN (2,3,6,5,7"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6530
    if-eqz p3, :cond_0

    .line 6531
    const-string v0, ",4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6533
    :cond_0
    const-string v0, "))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6534
    return-void
.end method

.method private static areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 5
    .parameter "values"
    .parameter "keys"

    .prologue
    .line 4445
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 4446
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4447
    const/4 v4, 0x0

    .line 4450
    .end local v2           #key:Ljava/lang/String;
    :goto_1
    return v4

    .line 4445
    .restart local v2       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4450
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 5
    .parameter "values"
    .parameter "keys"

    .prologue
    .line 4457
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 4458
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4459
    const/4 v4, 0x1

    .line 4462
    .end local v2           #key:Ljava/lang/String;
    :goto_1
    return v4

    .line 4457
    .restart local v2       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4462
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V
    .locals 2
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6709
    if-nez p3, :cond_0

    .line 6710
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 6714
    :goto_0
    return-void

    .line 6712
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6701
    if-nez p3, :cond_0

    .line 6702
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 6706
    :goto_0
    return-void

    .line 6704
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter

    .prologue
    .line 6217
    const/4 v0, 0x0

    .line 6219
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 6221
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 6222
    array-length v2, v1

    .line 6224
    new-instance v3, Landroid/os/MemoryFile;

    const-string v4, "contactAssetFile"

    invoke-direct {v3, v4, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 6225
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 6226
    invoke-virtual {v3}, Landroid/os/MemoryFile;->deactivate()V

    .line 6228
    invoke-static {v3}, Landroid/content/res/AssetFileDescriptor;->fromMemoryFile(Landroid/os/MemoryFile;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6232
    :goto_0
    return-object v0

    .line 6229
    :catch_0
    move-exception v1

    .line 6230
    const-string v2, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem writing stream into an AssetFileDescriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bundleLetterCountExtras(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5433
    const-string v3, ""

    .line 5434
    if-eqz p6, :cond_3

    .line 5435
    const/16 v4, 0x20

    move-object/from16 v0, p6

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 5436
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 5437
    const/4 v3, 0x0

    move-object/from16 v0, p6

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5438
    move-object/from16 v0, p6

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    :goto_0
    move-object v11, v3

    move-object v12, v4

    .line 5449
    :goto_1
    if-eqz p7, :cond_0

    .line 5450
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "*"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "PHONE_NUMBER_GROUP_BY_COLUMN"

    aput-object v5, v4, v3

    .line 5454
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 5455
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5456
    const/4 v5, 0x1

    aget-object v5, v4, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "substr(data4,1,11) AS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5457
    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5458
    const/4 v3, 0x1

    aget-object v7, v4, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5462
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5463
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 5464
    const-string v5, "letter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SUBSTR("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",1,1) AS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "letter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5474
    const-string v5, "title"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GET_PHONEBOOK_INDEX(SUBSTR("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",1,1),\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\')"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AS "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "title"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5477
    const-string v3, "count"

    const-string v5, "COUNT(_id) AS count"

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5479
    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5481
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;->COLUMNS:[Ljava/lang/String;

    const-string v8, "letter COLLATE PHONEBOOK"

    const/4 v9, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "letter COLLATE PHONEBOOK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 5486
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 5487
    new-array v5, v4, [Ljava/lang/String;

    .line 5488
    new-array v6, v4, [I

    .line 5489
    const/4 v7, 0x0

    .line 5490
    const/4 v8, 0x0

    .line 5495
    const/4 v9, 0x0

    move v13, v9

    move v9, v7

    move v7, v13

    :goto_2
    if-ge v7, v4, :cond_5

    .line 5496
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 5497
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 5498
    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 5499
    if-eqz v9, :cond_1

    invoke-static {v10, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 5500
    :cond_1
    aput-object v10, v5, v9

    .line 5501
    aput v11, v6, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5502
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move-object v8, v10

    .line 5495
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v4, p6

    .line 5440
    goto/16 :goto_0

    .line 5443
    :cond_3
    const-string v4, "sort_key"

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_1

    .line 5504
    :cond_4
    const/4 v10, 0x1

    sub-int v10, v9, v10

    :try_start_1
    aget v12, v6, v10

    add-int/2addr v11, v12

    aput v11, v6, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 5529
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 5508
    :cond_5
    if-ge v9, v4, :cond_6

    .line 5509
    :try_start_2
    new-array v4, v9, [Ljava/lang/String;

    .line 5510
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5513
    new-array v5, v9, [I

    .line 5514
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v5

    move-object v5, v4

    move-object v4, v13

    .line 5518
    :goto_4
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 5519
    const-string v7, "address_book_index_titles"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5520
    const-string v5, "address_book_index_counts"

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5521
    new-instance v4, Lcom/android/providers/contacts/ContactsProvider2$3;

    invoke-direct {v4, p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2$3;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/database/Cursor;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5529
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_6
    move-object v4, v6

    goto :goto_4
.end method

.method private clearTransactionalChanges()V
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInsertedRawContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2525
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mUpdatedRawContacts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2526
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2527
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirtyRawContacts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2528
    return-void
.end method

.method private deleteContact(J)I
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3653
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 3654
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3658
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3659
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3660
    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->markRawContactAsDeleted(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3663
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3666
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private deleteData(Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 14
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 3181
    const/4 v9, 0x0

    .line 3185
    .local v9, count:I
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3187
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3188
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 3189
    .local v11, rawContactId:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3190
    .local v10, mimeType:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;

    move-result-object v13

    .line 3191
    .local v13, rowHandler:Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13, v0, v6}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    move-result v0

    add-int/2addr v9, v0

    .line 3192
    if-nez p3, :cond_1

    .line 3193
    invoke-direct {p0, v11, v12}, Lcom/android/providers/contacts/ContactsProvider2;->setRawContactDirty(J)V

    .line 3196
    :cond_1
    const-string v0, "vnd.android.cursor.item/vnd.com.xiaomi.channel.profile"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3197
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v11, v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v7

    .line 3198
    .local v7, contactId:J
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v7, v8}, Lcom/android/providers/contacts/ContactAggregator;->updateMiliaoStatus(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3202
    .end local v7           #contactId:J
    .end local v10           #mimeType:Ljava/lang/String;
    .end local v11           #rawContactId:J
    .end local v13           #rowHandler:Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3205
    return v9
.end method

.method private deleteNameLookup(J)V
    .locals 2
    .parameter "dataId"

    .prologue
    .line 6489
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6490
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 6491
    return-void
.end method

.method private deleteSettings(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3647
    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "settings"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3648
    .local v0, count:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 3649
    return v0
.end method

.method private deleteStatusUpdates(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3686
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 3687
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting data from status_updates for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "status_updates"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getWhereClauseForStatusUpdatesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3691
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presence"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findValidAccounts(Ljava/util/Set;[Z)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;[Z)V"
        }
    .end annotation

    .prologue
    .line 4425
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT account_name,account_type FROM accounts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4429
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4430
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4431
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, p2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4437
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 4433
    :cond_0
    :try_start_1
    new-instance v1, Landroid/accounts/Account;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4437
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4439
    return-void
.end method

.method private flushTransactionalChanges()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, ")"

    .line 2546
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 2547
    const-string v0, "ContactsProvider"

    const-string v1, "flushTransactionChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInsertedRawContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2551
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2552
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v4, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->onRawContactInsert(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 2555
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirtyRawContacts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2556
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2557
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "UPDATE raw_contacts SET dirty=1 WHERE _id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirtyRawContacts:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendIds(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V

    .line 2559
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2563
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mUpdatedRawContacts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2564
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2565
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "UPDATE raw_contacts SET version = version + 1 WHERE _id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mUpdatedRawContacts:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendIds(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V

    .line 2567
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2571
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2572
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2573
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v5, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v5, v3, v4, v0}, Lcom/android/internal/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 2574
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to update sync state, does it still exist?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2579
    :cond_5
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->clearTransactionalChanges()V

    .line 2580
    return-void
.end method

.method private getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 2616
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;

    .line 2617
    .local v0, handler:Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
    if-nez v0, :cond_0

    .line 2618
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$CustomDataRowHandler;

    .end local v0           #handler:Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
    invoke-direct {v0, p0, p1}, Lcom/android/providers/contacts/ContactsProvider2$CustomDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V

    .line 2619
    .restart local v0       #handler:Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2621
    :cond_0
    return-object v0
.end method

.method private getDisplayNameSource(I)I
    .locals 4
    .parameter "mimeTypeId"

    .prologue
    .line 3162
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdStructuredName:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3163
    const/16 v0, 0x28

    .line 3173
    :goto_0
    return v0

    .line 3164
    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdEmail:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3165
    const/16 v0, 0xa

    goto :goto_0

    .line 3166
    :cond_1
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdPhone:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 3167
    const/16 v0, 0x14

    goto :goto_0

    .line 3168
    :cond_2
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdOrganization:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 3169
    const/16 v0, 0x1e

    goto :goto_0

    .line 3170
    :cond_3
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdNickname:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 3171
    const/16 v0, 0x23

    goto :goto_0

    .line 3173
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFullNameStyle(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 6405
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v1

    .line 6406
    .local v1, nameSplitter:Lcom/android/providers/contacts/NameSplitter;
    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 6407
    .local v0, fullNameStyle:I
    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 6408
    return v0
.end method

.method private getLimit(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v6, "Invalid limit parameter: "

    const-string v5, "ContactsProvider"

    .line 6068
    const-string v0, "limit"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6069
    if-nez v0, :cond_0

    move-object v0, v4

    .line 6082
    :goto_0
    return-object v0

    .line 6074
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6075
    if-gez v1, :cond_1

    .line 6076
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid limit parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 6077
    goto :goto_0

    .line 6079
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 6080
    :catch_0
    move-exception v1

    .line 6081
    const-string v1, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid limit parameter: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 6082
    goto :goto_0
.end method

.method private getMostReferencedContactId(Ljava/util/ArrayList;)J
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 5758
    .local p1, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5760
    const-wide/16 v0, -0x1

    .line 5761
    .local v0, bestContactId:J
    const/4 v2, 0x0

    .line 5763
    .local v2, bestRefCount:I
    const-wide/16 v3, -0x1

    .line 5764
    .local v3, contactId:J
    const/4 v5, 0x0

    .line 5766
    .local v5, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 5767
    .local v8, segmentCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_3

    .line 5768
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 5769
    .local v7, segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    iget-wide v9, v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    .line 5770
    iget-wide v9, v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    cmp-long v9, v9, v3

    if-nez v9, :cond_1

    .line 5771
    add-int/lit8 v5, v5, 0x1

    .line 5767
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5773
    :cond_1
    if-le v5, v2, :cond_2

    .line 5774
    move-wide v0, v3

    .line 5775
    move v2, v5

    .line 5777
    :cond_2
    iget-wide v3, v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    .line 5778
    const/4 v5, 0x1

    goto :goto_1

    .line 5782
    .end local v7           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_3
    if-le v5, v2, :cond_4

    move-wide v9, v3

    .line 5785
    :goto_2
    return-wide v9

    :cond_4
    move-wide v9, v0

    goto :goto_2
.end method

.method private getOrCreateMyContactsGroupInTransaction(Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v1, "groups"

    const-string v8, "System Group: My Contacts"

    .line 4252
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "groups"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "account_name =? AND account_type =? AND title =?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    const/4 v6, 0x2

    const-string v7, "System Group: My Contacts"

    aput-object v8, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4258
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4259
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 4262
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .line 4271
    :goto_0
    return-wide v0

    .line 4262
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4266
    const-string v2, "title"

    const-string v3, "System Group: My Contacts"

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4267
    const-string v2, "account_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4268
    const-string v2, "account_type"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4269
    const-string v2, "system_id"

    const-string v3, "Contacts"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4270
    const-string v2, "group_visible"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4271
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "groups"

    invoke-virtual {v2, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 4262
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/accounts/Account;)J
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2896
    if-nez p5, :cond_7

    .line 2897
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2898
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2901
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2902
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2903
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2904
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2905
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 2909
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v8, v1

    .line 2913
    :goto_1
    if-nez v8, :cond_0

    .line 2914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "if the groupmembership only has a sourceid the the contact must be associated with an account"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2909
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2919
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 2920
    if-nez p2, :cond_5

    .line 2921
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2922
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-virtual {v1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2926
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_2

    .line 2927
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    .line 2928
    iget-object v3, p2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountName:Ljava/lang/String;

    iget-object v4, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    iget-object v4, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2929
    iget-wide v0, p2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    .line 2963
    :goto_4
    return-wide v0

    .line 2926
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2933
    :cond_2
    new-instance v9, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    invoke-direct {v9, p0}, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    .line 2934
    iget-object v1, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountName:Ljava/lang/String;

    .line 2935
    iget-object v1, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    .line 2936
    iput-object p4, v9, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->sourceId:Ljava/lang/String;

    .line 2937
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2941
    const-string v1, "groups"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "sourceid=? AND account_name=? AND account_type=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    const/4 v0, 0x1

    iget-object v5, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget-object v5, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2945
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2946
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2960
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2963
    iget-wide v0, v9, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    goto :goto_4

    .line 2948
    :cond_3
    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2949
    const-string v2, "account_name"

    iget-object v3, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    const-string v2, "account_type"

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    const-string v2, "sourceid"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    const-string v2, "groups"

    const-string v3, "account_name"

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2953
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 2954
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to create a new group with this sourceid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2960
    :catchall_1
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2957
    :cond_4
    :try_start_3
    iput-wide v2, v9, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :cond_5
    move-object v0, p2

    goto/16 :goto_2

    :cond_6
    move-object v1, p5

    goto/16 :goto_0

    :cond_7
    move-object v8, p5

    goto/16 :goto_1
.end method

.method static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "parameter"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 6662
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 6663
    .local v3, query:Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v6, v8

    .line 6697
    :goto_0
    return-object v6

    .line 6667
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 6668
    .local v4, queryLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 6671
    .local v2, parameterLength:I
    const/4 v1, 0x0

    .line 6673
    .local v1, index:I
    :cond_1
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 6674
    if-ne v1, v9, :cond_2

    move-object v6, v8

    .line 6675
    goto :goto_0

    .line 6678
    :cond_2
    add-int/2addr v1, v2

    .line 6680
    if-ne v4, v1, :cond_3

    move-object v6, v8

    .line 6681
    goto :goto_0

    .line 6684
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_1

    .line 6685
    add-int/lit8 v1, v1, 0x1

    .line 6690
    const/16 v6, 0x26

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 6691
    .local v0, ampIndex:I
    if-ne v0, v9, :cond_4

    .line 6692
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 6697
    .local v5, value:Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 6694
    .end local v5           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method private getRecentContacts([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter

    .prologue
    .line 5199
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "call_date"

    aput-object v1, v2, v0

    .line 5204
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v6, v0

    .line 5209
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5210
    new-instance v9, Landroid/database/MatrixCursor;

    invoke-direct {v9, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 5212
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "call_date DESC LIMIT 50"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5215
    if-nez v0, :cond_e

    .line 5216
    :try_start_1
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v1

    .line 5218
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_RECENT_RECIPIENTS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 50"

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 5221
    if-nez v0, :cond_0

    .line 5222
    :try_start_3
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v0, v1

    .line 5225
    :cond_0
    const/4 v1, -0x1

    :try_start_4
    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5226
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5227
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5228
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    .line 5230
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5231
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5232
    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 5234
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5235
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5236
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 5239
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-wide v12, v5

    move-object v5, v2

    move-object v6, v1

    move-wide v1, v12

    .line 5241
    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v10

    const/16 v11, 0x32

    if-ge v10, v11, :cond_d

    .line 5242
    cmp-long v10, v3, v1

    if-lez v10, :cond_4

    .line 5243
    invoke-direct {p0, v9, v8, v6, p1}, Lcom/android/providers/contacts/ContactsProvider2;->insertRecentRecipientRows(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5244
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5245
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5246
    const/4 v4, 0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object v6, v3

    move-wide v3, v10

    goto :goto_1

    .line 5249
    :cond_4
    invoke-direct {p0, v9, v8, v5, p1}, Lcom/android/providers/contacts/ContactsProvider2;->insertRecentRecipientRows(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5250
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5251
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5252
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object v5, v1

    move-wide v1, v10

    goto :goto_1

    .line 5257
    :cond_5
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_c

    .line 5258
    invoke-direct {p0, v9, v8, v1, p1}, Lcom/android/providers/contacts/ContactsProvider2;->insertRecentRecipientRows(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5259
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5260
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 5264
    :cond_6
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_7

    .line 5265
    invoke-direct {p0, v9, v8, v1, p1}, Lcom/android/providers/contacts/ContactsProvider2;->insertRecentRecipientRows(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5266
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5267
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v1

    goto :goto_3

    .line 5271
    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 5272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5274
    :cond_8
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 5275
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5278
    :cond_9
    return-object v9

    .line 5271
    :catchall_0
    move-exception v0

    move-object v1, v8

    move-object v2, v7

    :goto_4
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 5272
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5274
    :cond_a
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 5275
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    .line 5271
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v8

    move-object v2, v7

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v2, v7

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v2, v7

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_4

    :cond_c
    move-object v1, v5

    goto :goto_3

    :cond_d
    move-object v1, v6

    goto/16 :goto_2

    :cond_e
    move-object v7, v0

    goto/16 :goto_0
.end method

.method private getSettableColumnsForPresenceTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    const-string v3, "mode"

    const-string v2, "chat_capability"

    .line 3936
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3937
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "mode"

    const-string v1, "mode"

    invoke-static {v0, v3, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3939
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "chat_capability"

    const-string v1, "chat_capability"

    invoke-static {v0, v2, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3941
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method private getSettableColumnsForStatusUpdatesTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 7
    .parameter

    .prologue
    const-string v6, "status_ts"

    const-string v5, "status_res_package"

    const-string v4, "status_label"

    const-string v3, "status_icon"

    const-string v2, "status"

    .line 3921
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3922
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status"

    const-string v1, "status"

    invoke-static {v0, v2, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3924
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_ts"

    const-string v1, "status_ts"

    invoke-static {v0, v6, p1, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3926
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_res_package"

    const-string v1, "status_res_package"

    invoke-static {v0, v5, p1, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3928
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_label"

    const-string v1, "status_label"

    invoke-static {v0, v4, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3930
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_icon"

    const-string v1, "status_icon"

    invoke-static {v0, v3, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3932
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method private getWhereClauseForStatusUpdatesTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3914
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "status_update_data_id IN (SELECT Distinct presence_data_id FROM status_updates LEFT OUTER JOIN presence ON status_update_data_id = presence_data_id WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3915
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3916
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3917
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private importLegacyContactsAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2359
    const-string v1, "ContactsProvider"

    const-string v2, "Importing legacy contacts"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    invoke-virtual {p0, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 2361
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccessLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_0

    .line 2362
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2365
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$2;

    const-string v1, "LegacyContactImport"

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactsProvider2$2;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;)V

    .line 2382
    .local v0, importThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2383
    return-void
.end method

.method private initDataRowHandlers()V
    .locals 8

    .prologue
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    const-string v6, "vnd.android.cursor.item/nickname"

    const-string v5, "vnd.android.cursor.item/im"

    const-string v4, "data3"

    const-string v3, "data2"

    .line 2228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    .line 2230
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/email_v2"

    new-instance v2, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;

    invoke-direct {v2, p0}, Lcom/android/providers/contacts/ContactsProvider2$EmailDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/im"

    new-instance v1, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;

    const-string v2, "vnd.android.cursor.item/im"

    const-string v2, "data2"

    const-string v2, "data3"

    invoke-direct {v1, p0, v5, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/nickname"

    new-instance v1, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    const-string v2, "data2"

    const-string v2, "data3"

    invoke-direct {v1, p0, v7, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2$CommonDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/organization"

    new-instance v2, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;

    invoke-direct {v2, p0}, Lcom/android/providers/contacts/ContactsProvider2$OrganizationDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    new-instance v2, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;

    invoke-direct {v2, p0}, Lcom/android/providers/contacts/ContactsProvider2$PhoneDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/nickname"

    new-instance v1, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/ContactsProvider2$NicknameDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/name"

    new-instance v2, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-direct {v2, p0, v3}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    new-instance v1, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPostalSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-direct {v1, p0, v2}, Lcom/android/providers/contacts/ContactsProvider2$StructuredPostalRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/PostalSplitter;)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/group_membership"

    new-instance v2, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;

    invoke-direct {v2, p0}, Lcom/android/providers/contacts/ContactsProvider2$GroupMembershipRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/photo"

    new-instance v2, Lcom/android/providers/contacts/ContactsProvider2$PhotoDataRowHandler;

    invoke-direct {v2, p0}, Lcom/android/providers/contacts/ContactsProvider2$PhotoDataRowHandler;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    const-string v1, "vnd.android.cursor.item/sip_address"

    new-instance v2, Lcom/android/providers/contacts/ContactsProvider2$SipAddressDataRowHanlder;

    invoke-direct {v2, p0}, Lcom/android/providers/contacts/ContactsProvider2$SipAddressDataRowHanlder;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    return-void
.end method

.method private initForDefaultLocale()V
    .locals 2

    .prologue
    .line 2257
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    .line 2258
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 2259
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 2260
    new-instance v0, Lcom/android/providers/contacts/PostalSplitter;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/PostalSplitter;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPostalSplitter:Lcom/android/providers/contacts/PostalSplitter;

    .line 2261
    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    .line 2262
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->setLocale(Ljava/util/Locale;)V

    .line 2263
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initDataRowHandlers()V

    .line 2264
    return-void
.end method

.method private initialize()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2086
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2087
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 2088
    new-instance v0, Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/GlobalSearchSupport;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    .line 2089
    new-instance v0, Lcom/android/providers/contacts/LegacyApiSupport;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/providers/contacts/LegacyApiSupport;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/GlobalSearchSupport;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    .line 2090
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->createPhotoPriorityResolver(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/providers/contacts/ContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    .line 2092
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const-string v1, "sync.contacts.aggregate"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 2094
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2096
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initForDefaultLocale()V

    .line 2098
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE data SET is_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 2104
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE data SET is_super_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id IN (SELECT _id FROM raw_contacts WHERE contact_id =(SELECT contact_id FROM raw_contacts WHERE _id=?))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 2116
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE raw_contacts SET display_name_source=?,display_name=?,display_name_alt=?,phonetic_name=?,phonetic_name_style=?,sort_key=?,sort_key_alt=? WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 2128
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT display_name FROM raw_contacts WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 2133
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE contacts SET status_update_id=(SELECT data._id FROM status_updates JOIN data   ON (status_update_data_id=data._id) JOIN raw_contacts   ON (data.raw_contact_id=raw_contacts._id) WHERE contact_id=? ORDER BY status_ts DESC,status LIMIT 1) WHERE contacts._id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLastStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 2150
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 2154
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM name_lookup WHERE data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 2157
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO status_updates(status_update_data_id, status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 2166
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR REPLACE INTO status_updates(status_update_data_id, status_ts,status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 2176
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE status_updates SET status_ts=?,status=? WHERE status_update_data_id=? AND status!=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    .line 2183
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE status_updates SET status_res_package=?,status_icon=?,status_label=? WHERE status_update_data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 2190
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM status_updates WHERE status_update_data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 2196
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE raw_contacts SET name_verified=0 WHERE contact_id=(SELECT contact_id FROM raw_contacts WHERE _id=?) AND _id!=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    .line 2205
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdEmail:J

    .line 2206
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdIm:J

    .line 2207
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdStructuredName:J

    .line 2208
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdOrganization:J

    .line 2209
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdNickname:J

    .line 2210
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdPhone:J

    .line 2212
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->verifyAccounts()V

    .line 2214
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->isLegacyContactImportNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2215
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->importLegacyContactsAsync()V

    .line 2220
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->isAggregationUpgradeNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2221
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->upgradeAggregationAlgorithm()V

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    move v0, v4

    :goto_1
    return v0

    .line 2217
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->verifyLocale()V

    goto :goto_0

    .line 2224
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private insertContact(Landroid/content/ContentValues;)J
    .locals 2
    .parameter

    .prologue
    .line 2773
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Aggregate contacts are created automatically"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertData(Landroid/content/ContentValues;Z)J
    .locals 13
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 2816
    const-wide/16 v2, 0x0

    .line 2817
    .local v2, id:J
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 2818
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v9, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2820
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v10, "raw_contact_id"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2823
    .local v6, rawContactId:J
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v10, "res_package"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2824
    .local v5, packageName:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 2825
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v10, "package_id"

    iget-object v11, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v11, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2827
    :cond_0
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v10, "res_package"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2830
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2831
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2832
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "mimetype is required"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2835
    :cond_1
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v10, "mimetype_id"

    iget-object v11, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v11, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2836
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2838
    invoke-direct {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;

    move-result-object v8

    .line 2839
    .local v8, rowHandler:Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
    iget-object v9, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v10, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v9, v6, v7, v10}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 2840
    if-nez p2, :cond_2

    .line 2841
    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->setRawContactDirty(J)V

    .line 2843
    :cond_2
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mUpdatedRawContacts:Ljava/util/HashSet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2845
    const-string v9, "vnd.android.cursor.item/vnd.com.xiaomi.channel.profile"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2846
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v9, v6, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 2847
    .local v0, contactId:J
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v9, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateMiliaoStatus(J)V

    .line 2849
    .end local v0           #contactId:J
    :cond_3
    return-wide v2
.end method

.method private insertGroup(Landroid/net/Uri;Landroid/content/ContentValues;Z)J
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v7, 0x1

    const-string v8, "res_package"

    .line 3249
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 3250
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 3252
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v3}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    .line 3255
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "res_package"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3256
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3257
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "package_id"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3259
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "res_package"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3261
    if-nez p3, :cond_1

    .line 3262
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "dirty"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3265
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "groups"

    const-string v5, "title"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 3267
    .local v1, result:J
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "group_visible"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3268
    iput-boolean v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 3271
    :cond_2
    return-wide v1
.end method

.method private insertRawContact(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 7
    .parameter
    .parameter

    .prologue
    const-string v2, "deleted"

    const-string v4, "contact_id"

    const-string v6, "aggregation_mode"

    .line 2784
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2785
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2786
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2788
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 2790
    const-string v1, "deleted"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "deleted"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2792
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "aggregation_mode"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2795
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "raw_contacts"

    const-string v3, "contact_id"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 2796
    const/4 v3, 0x0

    .line 2797
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v5, "aggregation_mode"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2798
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "aggregation_mode"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2800
    :cond_1
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->markNewForAggregation(JI)V

    .line 2803
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInsertedRawContacts:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactInserted(J)V

    .line 2806
    return-wide v1
.end method

.method private insertRecentRecipientRows(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v0, "display_name"

    const-string v0, "_id"

    .line 5283
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v6

    .line 5284
    if-nez v6, :cond_1

    .line 5372
    :cond_0
    :goto_0
    return-void

    .line 5287
    :cond_1
    invoke-virtual {v6, v2, v8}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 5288
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5291
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5293
    array-length v0, p4

    if-ne v0, v2, :cond_2

    aget-object v0, p4, v8

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5294
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v8

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 5297
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5301
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    .line 5303
    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_11

    .line 5306
    :cond_3
    invoke-virtual {v6}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 5307
    invoke-virtual {v6}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 5309
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const-string v3, "addr=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 5315
    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 5317
    :cond_4
    array-length v1, p4

    new-array v1, v1, [Ljava/lang/Object;

    move v2, v8

    .line 5318
    :goto_2
    array-length v3, p4

    if-ge v2, v3, :cond_a

    .line 5319
    aget-object v3, p4, v2

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5320
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5318
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5321
    :cond_5
    aget-object v3, p4, v2

    const-string v4, "display_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5322
    const-string v3, ""

    aput-object v3, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 5365
    :catchall_0
    move-exception v1

    move-object v2, v7

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 5366
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5368
    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5369
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 5323
    :cond_8
    :try_start_3
    aget-object v3, p4, v2

    const-string v4, "number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5324
    aput-object p3, v1, v2

    goto :goto_3

    .line 5326
    :cond_9
    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_3

    .line 5329
    :cond_a
    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5365
    :goto_5
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 5366
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5368
    :cond_b
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5369
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5332
    :cond_c
    :try_start_4
    array-length v1, p4

    new-array v1, v1, [Ljava/lang/Object;

    .line 5333
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move v2, v8

    .line 5334
    :goto_6
    array-length v3, p4

    if-ge v2, v3, :cond_10

    .line 5335
    aget-object v3, p4, v2

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5336
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5334
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5337
    :cond_d
    aget-object v3, p4, v2

    const-string v4, "display_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5338
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_7

    .line 5339
    :cond_e
    aget-object v3, p4, v2

    const-string v4, "number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5340
    aput-object p3, v1, v2

    goto :goto_7

    .line 5342
    :cond_f
    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_7

    .line 5345
    :cond_10
    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 5349
    :cond_11
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5350
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move v1, v8

    .line 5351
    :goto_8
    array-length v2, p4

    if-ge v1, v2, :cond_15

    .line 5352
    aget-object v2, p4, v1

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5353
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 5351
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5354
    :cond_12
    aget-object v2, p4, v1

    const-string v3, "display_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5355
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_9

    .line 5365
    :catchall_1
    move-exception v0

    move-object v1, v9

    move-object v2, v7

    goto/16 :goto_4

    .line 5356
    :cond_13
    aget-object v2, p4, v1

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5357
    aput-object p3, v0, v1

    goto :goto_9

    .line 5359
    :cond_14
    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_9

    .line 5362
    :cond_15
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v9

    goto/16 :goto_5

    .line 5365
    :catchall_2
    move-exception v0

    move-object v1, v9

    move-object v2, v9

    goto/16 :goto_4

    :cond_16
    move-object v5, p3

    goto/16 :goto_1
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "selectionArgs"
    .parameter "arg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6540
    if-nez p1, :cond_0

    .line 6541
    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v3

    .line 6547
    :goto_0
    return-object v2

    .line 6543
    :cond_0
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 6544
    .local v0, newLength:I
    new-array v1, v0, [Ljava/lang/String;

    .line 6545
    .local v1, newSelectionArgs:[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 6546
    array-length v2, p1

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 6547
    goto :goto_0
.end method

.method private insertSettings(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 3275
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3277
    .local v0, id:J
    const-string v2, "ungrouped_visible"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3278
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 3281
    :cond_0
    return-wide v0
.end method

.method private isNewRawContact(J)Z
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInsertedRawContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPhoneNumber(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "cons"

    .prologue
    const/4 v4, 0x0

    .line 6091
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 6093
    .local v2, len:I
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    move v3, v4

    .line 6112
    :goto_0
    return v3

    .line 6097
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 6098
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 6100
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 6097
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6104
    :cond_2
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x28

    if-eq v0, v3, :cond_1

    const/16 v3, 0x29

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_1

    const/16 v3, 0x23

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_1

    move v3, v4

    .line 6109
    goto :goto_0

    .line 6112
    .end local v0           #c:C
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private lookupContactIdByDisplayNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 5698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5699
    const-string v0, "normalized_name IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v9

    .line 5700
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 5701
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 5702
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-eq v2, v8, :cond_0

    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v2, v10, :cond_1

    .line 5704
    :cond_0
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5705
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5700
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5708
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5709
    const-string v0, ") AND name_type=2 AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5712
    const-string v1, "name_lookup INNER JOIN raw_contacts ON (name_lookup.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupByDisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5715
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5716
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5717
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5718
    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5720
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v9

    .line 5721
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 5722
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 5723
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-eq v5, v8, :cond_4

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v5, v10, :cond_5

    :cond_4
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    if-ne v2, v5, :cond_5

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5727
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 5733
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5721
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 5733
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5736
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getMostReferencedContactId(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private lookupContactIdByRawContactIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 5642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5643
    const-string v0, "_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 5644
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 5645
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 5646
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v2, v9, :cond_0

    .line 5647
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->rawContactId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5648
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5644
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5651
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5652
    const-string v0, ") AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5654
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupByRawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5657
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5658
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5659
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5660
    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5662
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v8

    .line 5663
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 5664
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 5665
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v5, v9, :cond_3

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    if-ne v2, v5, :cond_3

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->rawContactId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5668
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 5674
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5663
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 5674
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5677
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getMostReferencedContactId(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private lookupContactIdBySourceIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 5586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5587
    const-string v0, "sourceid IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 5588
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 5589
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 5590
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-nez v2, :cond_0

    .line 5591
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5592
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5588
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5595
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5596
    const-string v0, ") AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5598
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupBySourceIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5601
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5602
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5603
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5604
    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5606
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v4, v8

    .line 5607
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 5608
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 5609
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-nez v5, :cond_3

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    if-ne v2, v5, :cond_3

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5612
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 5618
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5607
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 5618
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5621
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getMostReferencedContactId(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private lookupKeyContainsType(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "lookupType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 5740
    .local p1, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5741
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 5742
    .local v1, segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    iget v2, v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v2, p2, :cond_0

    .line 5743
    const/4 v2, 0x1

    .line 5747
    .end local v1           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :goto_1
    return v2

    .line 5740
    .restart local v1       #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5747
    .end local v1           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private markRawContactAsDeleted(J)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3695
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3697
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactDeleted(J)V

    .line 3698
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3699
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "deleted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3700
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3701
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "aggregation_needed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3702
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3703
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "dirty"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3704
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContact(JLandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .parameter "query"
    .parameter "index"
    .parameter "value"
    .parameter "ignoreCase"

    .prologue
    const/4 v4, 0x0

    .line 6653
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, length:I
    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 6654
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_0

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method private onLegacyContactImportFailure()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2406
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2407
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2411
    new-instance v2, Landroid/app/Notification;

    const v3, 0x1080078

    const v4, 0x7f030002

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2414
    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030004

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2418
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x22

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 2420
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2422
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 2423
    const-string v0, "ContactsProvider"

    const-string v1, "Failed to import legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    return-void
.end method

.method private onLegacyContactImportSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2389
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2391
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2394
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "contacts_imported_v1"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 2397
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2399
    const-string v0, "ContactsProvider"

    const-string v1, "Completed import of legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return-void
.end method

.method private openPhotoAssetFile(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 6197
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6198
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT data15 FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6205
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6206
    invoke-static {v1, v0, p4}, Landroid/database/sqlite/SQLiteContentHelper;->getBlobColumnAsAssetFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private outputRawContactsAsVCard(Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v4, "ContactsProvider"

    .line 6242
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6243
    new-instance v1, Landroid/pim/vcard/VCardComposer;

    sget v2, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 6245
    new-instance v0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;-><init>(Landroid/pim/vcard/VCardComposer;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Landroid/pim/vcard/VCardComposer;->addHandler(Landroid/pim/vcard/VCardComposer$OneEntryHandler;)V

    .line 6248
    invoke-virtual {v1, p2, p3}, Landroid/pim/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6249
    const-string v0, "ContactsProvider"

    const-string v0, "Failed to init VCardComposer"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6259
    :goto_0
    return-void

    .line 6253
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6254
    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->createOneEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6255
    const-string v0, "ContactsProvider"

    const-string v0, "Failed to output a contact."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6258
    :cond_1
    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->terminate()V

    goto :goto_0
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5377
    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "_count"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5379
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sCountProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5381
    :cond_0
    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5383
    if-eqz v0, :cond_1

    .line 5384
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 5386
    :cond_1
    return-object v0
.end method

.method private queryProviderStatus(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 5393
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 5394
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 5395
    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 5396
    const-string v3, "status"

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5397
    iget v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5395
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5398
    :cond_1
    const-string v3, "data1"

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5399
    iget-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mEstimatedStorageRequirement:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 5402
    :cond_2
    return-object v0
.end method

.method static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6635
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 6636
    if-nez v0, :cond_0

    move v0, p2

    .line 6647
    :goto_0
    return v0

    .line 6640
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 6641
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move v0, p2

    .line 6642
    goto :goto_0

    .line 6645
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 6647
    const-string v2, "=0"

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "=false"

    invoke-static {v0, v1, v2, v4}, Lcom/android/providers/contacts/ContactsProvider2;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "account_type"

    const-string v9, "account_name"

    .line 2717
    const-string v0, "account_name"

    invoke-static {p1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2718
    const-string v1, "account_type"

    invoke-static {p1, v10}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 2721
    const-string v3, "account_name"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2722
    const-string v4, "account_type"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2723
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v5, v6

    .line 2726
    if-nez v2, :cond_0

    if-eqz v5, :cond_1

    .line 2728
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2734
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v8

    .line 2735
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v8

    .line 2737
    :goto_1
    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 2739
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v8

    .line 2741
    :goto_2
    if-nez v2, :cond_5

    .line 2742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "When both specified, ACCOUNT_NAME and ACCOUNT_TYPE must match"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v7

    .line 2734
    goto :goto_0

    :cond_3
    move v5, v7

    .line 2735
    goto :goto_1

    :cond_4
    move v2, v7

    .line 2739
    goto :goto_2

    :cond_5
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 2757
    :goto_3
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2760
    :cond_6
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    .line 2763
    :cond_7
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    :goto_4
    return-object v0

    .line 2745
    :cond_8
    if-eqz v2, :cond_9

    .line 2747
    const-string v2, "account_name"

    invoke-virtual {p2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    const-string v2, "account_type"

    invoke-virtual {p2, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    .line 2749
    :cond_9
    if-eqz v5, :cond_a

    move-object v0, v4

    move-object v1, v3

    .line 2751
    goto :goto_3

    .line 2753
    :cond_a
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private setDisplayName(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "rawContactId"
    .parameter "displayNameSource"
    .parameter "displayNamePrimary"
    .parameter "displayNameAlternative"
    .parameter "phoneticName"
    .parameter "phoneticNameStyle"
    .parameter "sortKeyPrimary"
    .parameter "sortKeyAlternative"

    .prologue
    .line 6321
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6322
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p4}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 6323
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p5}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 6324
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p6}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 6325
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    int-to-long v2, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6326
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p8}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 6327
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p9}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 6328
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6329
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 6330
    return-void
.end method

.method private setIsPrimary(JJJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "mimeTypeId"

    .prologue
    .line 6346
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6347
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6348
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6349
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 6350
    return-void
.end method

.method private setIsSuperPrimary(JJJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "mimeTypeId"

    .prologue
    .line 6359
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6360
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6361
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6362
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 6363
    return-void
.end method

.method private setRawContactDirty(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 6336
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirtyRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6337
    return-void
.end method

.method private setTableAndProjectionMapForStatusUpdates(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5984
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5985
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5987
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "mode"

    aput-object v3, v2, v4

    invoke-virtual {v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5988
    const-string v1, " LEFT OUTER JOIN presence ON(presence.presence_data_id=data._id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5993
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "status"

    aput-object v3, v2, v4

    const-string v3, "status_res_package"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "status_icon"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "status_label"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "status_ts"

    aput-object v4, v2, v3

    invoke-virtual {v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5999
    const-string v1, " LEFT OUTER JOIN status_updates ON(status_updates.status_update_data_id=data._id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6003
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6004
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStatusUpdatesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6005
    return-void
.end method

.method private setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 2
    .parameter "qb"
    .parameter "uri"
    .parameter "projection"

    .prologue
    .line 5791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5792
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactsTables(Ljava/lang/StringBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5793
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5794
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5795
    return-void
.end method

.method private setTablesAndProjectionMapForContactsWithSnippet(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5805
    invoke-direct {p0, v0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactsTables(Ljava/lang/StringBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5807
    const-string v1, " JOIN (SELECT contact_id AS snippet_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5810
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "snippet_data_id"

    aput-object v3, v2, v4

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5811
    const-string v1, ", data._id AS snippet_data_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5815
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "snippet_data1"

    aput-object v3, v2, v4

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5816
    const-string v1, ", data1 AS snippet_data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5819
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "snippet_data2"

    aput-object v3, v2, v4

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5820
    const-string v1, ", data2 AS snippet_data2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5823
    :cond_2
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "snippet_data3"

    aput-object v3, v2, v4

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5824
    const-string v1, ", data3 AS snippet_data3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5827
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "snippet_data4"

    aput-object v3, v2, v4

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5828
    const-string v1, ", data4 AS snippet_data4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5831
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "snippet_mimetype"

    aput-object v3, v2, v4

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5832
    const-string v1, ", (SELECT mimetype FROM mimetypes WHERE _id=mimetype_id) AS snippet_mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5839
    :cond_5
    const-string v1, " FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE data._id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5845
    const-string v1, "SELECT MIN(name_lookup.data_id) FROM name_lookup JOIN raw_contacts ON (raw_contacts._id=name_lookup.raw_contact_id) WHERE normalized_name GLOB \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5852
    invoke-static {p4}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5853
    const-string v1, "*\' AND name_type IN(2,4,3,6,5,7) GROUP BY raw_contacts.contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5857
    const-string v1, ")) ON (_id=snippet_contact_id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5859
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5861
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5862
    return-void
.end method

.method private setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5924
    const-string v1, "for_export_only"

    invoke-static {p2, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v1

    .line 5927
    const-string v2, "requesting_package"

    invoke-static {p2, v2}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5929
    if-eqz v2, :cond_1

    .line 5930
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_0
    move v1, v5

    .line 5934
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataView(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5935
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5938
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "contact_presence"

    aput-object v3, v2, v4

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5939
    const-string v1, " LEFT OUTER JOIN agg_presence ON (agg_presence.presence_contact_id=contact_id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5945
    :cond_2
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_status"

    aput-object v3, v2, v4

    const-string v3, "contact_status_res_package"

    aput-object v3, v2, v5

    const-string v3, "contact_status_icon"

    aput-object v3, v2, v6

    const-string v3, "contact_status_label"

    aput-object v3, v2, v7

    const-string v3, "contact_status_ts"

    aput-object v3, v2, v8

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5951
    const-string v1, " LEFT OUTER JOIN status_updates contacts_status_updates ON (status_update_id=contacts_status_updates.status_update_data_id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5958
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "mode"

    aput-object v3, v2, v4

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5959
    const-string v1, " LEFT OUTER JOIN presence ON (presence_data_id=data._id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5965
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "status"

    aput-object v3, v2, v4

    const-string v3, "status_res_package"

    aput-object v3, v2, v5

    const-string v3, "status_icon"

    aput-object v3, v2, v6

    const-string v3, "status_label"

    aput-object v3, v2, v7

    const-string v3, "status_ts"

    aput-object v3, v2, v8

    invoke-virtual {v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5971
    const-string v1, " LEFT OUTER JOIN status_updates ON (status_updates.status_update_data_id=data._id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5976
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5977
    if-eqz p4, :cond_7

    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Ljava/util/HashMap;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5978
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5979
    return-void

    :cond_6
    move v1, v4

    .line 5930
    goto/16 :goto_0

    .line 5977
    :cond_7
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Ljava/util/HashMap;

    goto :goto_1
.end method

.method private setTablesAndProjectionMapForRawContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 4
    .parameter "qb"
    .parameter "uri"

    .prologue
    .line 5891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5892
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 5893
    .local v0, excludeRestrictedData:Z
    const-string v3, "requesting_package"

    invoke-static {p2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5895
    .local v1, requestingPackage:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 5896
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 5898
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getRawContactView(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5899
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5900
    sget-object v3, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5901
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5902
    return-void

    .line 5896
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private setTablesAndProjectionMapForRawContactsEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 4
    .parameter "qb"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 5906
    const-string v2, "for_export_only"

    invoke-static {p2, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    .line 5909
    .local v0, excludeRestrictedData:Z
    const-string v2, "requesting_package"

    invoke-static {p2, v2}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5911
    .local v1, requestingPackage:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 5912
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 5915
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactEntitiesView(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5916
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsEntityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5917
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5918
    return-void

    :cond_2
    move v0, v3

    .line 5912
    goto :goto_0
.end method

.method private triggerAggregation(J)V
    .locals 5
    .parameter "rawContactId"

    .prologue
    .line 2853
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactAggregator;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2881
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2857
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getAggregationMode(J)I

    move-result v0

    .line 2858
    .local v0, aggregationMode:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2863
    :pswitch_1
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, v0, v4}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    goto :goto_0

    .line 2868
    :pswitch_2
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v1

    .line 2870
    .local v1, contactId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 2871
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v3, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(J)V

    goto :goto_0

    .line 2877
    .end local v1           #contactId:J
    :pswitch_3
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v4, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 2858
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateAggregationException(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 4204
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4205
    const-string v1, "raw_contact_id1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 4206
    const-string v3, "raw_contact_id2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 4209
    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v7, v3

    move-wide v3, v1

    move-wide v1, v7

    .line 4217
    :cond_0
    if-nez v0, :cond_1

    .line 4218
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 4219
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 4220
    const-string v0, "agg_exceptions"

    const-string v5, "raw_contact_id1=? AND raw_contact_id2=?"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {p1, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4232
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->invalidateAggregationExceptionCache()V

    .line 4233
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    .line 4235
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    .line 4238
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4239
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4243
    const/4 v0, 0x1

    return v0

    .line 4224
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 4225
    const-string v6, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4226
    const-string v0, "raw_contact_id1"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4227
    const-string v0, "raw_contact_id2"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4228
    const-string v0, "agg_exceptions"

    const-string v6, "_id"

    invoke-virtual {p1, v0, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private updateContactOptions(JLandroid/content/ContentValues;)I
    .locals 10
    .parameter
    .parameter

    .prologue
    const-string v9, "custom_ringtone"

    const-string v8, "custom_call_incoming_photo"

    const-string v7, "times_contacted"

    const-string v6, "starred"

    const-string v5, "last_time_contacted"

    .line 4149
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4150
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    const-string v1, "custom_ringtone"

    invoke-static {v0, v9, p3, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4152
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "custom_call_incoming_photo"

    const-string v1, "custom_call_incoming_photo"

    invoke-static {v0, v8, p3, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4154
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4156
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_time_contacted"

    const-string v1, "last_time_contacted"

    invoke-static {v0, v5, p3, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4158
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "times_contacted"

    const-string v1, "times_contacted"

    invoke-static {v0, v7, p3, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4160
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    const-string v1, "starred"

    invoke-static {v0, v6, p3, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4164
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4165
    const/4 v0, 0x0

    .line 4200
    :cond_0
    :goto_0
    return v0

    .line 4168
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4170
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "dirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4173
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4174
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4178
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4179
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    const-string v1, "custom_ringtone"

    invoke-static {v0, v9, p3, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4181
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "custom_call_incoming_photo"

    const-string v1, "custom_call_incoming_photo"

    invoke-static {v0, v8, p3, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4183
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4185
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_time_contacted"

    const-string v1, "last_time_contacted"

    invoke-static {v0, v5, p3, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4187
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "times_contacted"

    const-string v1, "times_contacted"

    invoke-static {v0, v7, p3, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4189
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    const-string v1, "starred"

    invoke-static {v0, v6, p3, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4192
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contacts"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4194
    const-string v1, "last_time_contacted"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "times_contacted"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4196
    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE _id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4197
    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE raw_contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE contact_id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4198
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onTimesContactedChanged(J)V

    goto/16 :goto_0
.end method

.method private updateContactOptions(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 4130
    .line 4131
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v8

    .line 4135
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4136
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4137
    invoke-direct {p0, v2, v3, p1}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(JLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4138
    add-int/lit8 v1, v1, 0x1

    .line 4139
    goto :goto_0

    .line 4141
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4144
    return v1

    .line 4141
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateData(Landroid/content/ContentValues;Landroid/database/Cursor;Z)I
    .locals 4
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v3, 0x0

    .line 4115
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 4124
    :goto_0
    return v2

    .line 4119
    :cond_0
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4120
    .local v0, mimeType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;

    move-result-object v1

    .line 4121
    .local v1, rowHandler:Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4122
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 4124
    goto :goto_0
.end method

.method private updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v3, "res_package"

    .line 4086
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4087
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 4088
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4089
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4090
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4092
    const-string v0, "res_package"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4093
    if-eqz v0, :cond_0

    .line 4094
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4095
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "package_id"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4098
    :cond_0
    const/4 v6, 0x0

    .line 4102
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$DataUpdateQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v6

    .line 4104
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4105
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, v2, v0, p5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/content/ContentValues;Landroid/database/Cursor;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 4108
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4111
    return v1

    .line 4108
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateGroups(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "groups"

    const-string v3, "dirty"

    .line 3947
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3950
    if-nez p5, :cond_4

    const-string v0, "dirty"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3951
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    .line 3952
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3953
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 3954
    const-string v2, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3959
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "groups"

    invoke-virtual {v2, v1, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 3960
    const-string v2, "group_visible"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3961
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 3963
    :cond_0
    const-string v2, "should_sync"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "should_sync"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3965
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "groups"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "account_name"

    aput-object v3, v2, v6

    const-string v3, "account_type"

    aput-object v3, v2, v4

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3971
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3972
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3973
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3974
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3975
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    const-string v1, "com.android.contacts"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v3, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3982
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3985
    :cond_3
    return v8

    :cond_4
    move-object v0, p2

    .line 3956
    goto :goto_0

    .line 3982
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateRawContact(JLandroid/content/ContentValues;)I
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 4021
    const-string v5, "_id = ?"

    .line 4022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4023
    const-string v5, "deleted"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "deleted"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    move v13, v5

    .line 4025
    :goto_0
    const/4 v14, 0x0

    .line 4026
    const/4 v15, 0x0

    .line 4027
    const/16 v16, 0x0

    .line 4028
    if-eqz v13, :cond_9

    .line 4029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "raw_contacts"

    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v8, "_id = ?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4032
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4033
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 4034
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4035
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object/from16 v17, v8

    move v8, v6

    move-object/from16 v6, v17

    .line 4038
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4040
    const-string v5, "aggregation_mode"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    .line 4044
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    const-string v9, "raw_contacts"

    const-string v10, "_id = ?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v11, v0

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p3

    move-object v3, v10

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 4045
    if-eqz v8, :cond_6

    .line 4046
    const-string v9, "aggregation_mode"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4047
    const-string v9, "aggregation_mode"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 4051
    if-eqz v9, :cond_0

    .line 4052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v10, v0

    const/4 v11, 0x0

    move-object v0, v10

    move-wide/from16 v1, p1

    move v3, v9

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    .line 4055
    :cond_0
    const-string v9, "starred"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v9, v0

    move-object v0, v9

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateStarred(J)V

    .line 4058
    :cond_1
    const-string v9, "custom_call_incoming_photo"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v9, v0

    move-object v0, v9

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updateCallIncomingPhoto(J)V

    .line 4061
    :cond_2
    const-string v9, "sourceid"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v0, v9

    move-object v1, v10

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4064
    :cond_3
    const-string v9, "name_verified"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4068
    const-string v9, "name_verified"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_4

    .line 4069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    move-object v9, v0

    const/4 v10, 0x1

    move-object v0, v9

    move v1, v10

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    move-object v9, v0

    const/4 v10, 0x2

    move-object v0, v9

    move v1, v10

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4073
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v0, v9

    move-object v1, v10

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4075
    :cond_5
    if-eqz v13, :cond_6

    const/4 v9, 0x1

    if-ne v7, v9, :cond_6

    .line 4077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mInsertedRawContacts:Ljava/util/HashMap;

    move-object v7, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Landroid/accounts/Account;

    invoke-direct {v10, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4078
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactInserted(J)V

    .line 4081
    :cond_6
    return v8

    .line 4023
    :cond_7
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_0

    .line 4038
    :catchall_0
    move-exception v6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_8
    move-object/from16 v6, v16

    move-object v7, v15

    move v8, v14

    goto/16 :goto_1

    :cond_9
    move-object/from16 v5, v16

    move-object v6, v15

    move v7, v14

    goto/16 :goto_2
.end method

.method private updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 3998
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3999
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contact_id should not be included in content values. Contact IDs are assigned automatically"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4004
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getRawContactView()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v8

    .line 4008
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4009
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4010
    invoke-direct {p0, v2, v3, p1}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContact(JLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4011
    add-int/lit8 v1, v1, 0x1

    .line 4012
    goto :goto_0

    .line 4014
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4017
    return v1

    .line 4014
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateSettings(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3990
    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "settings"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3991
    .local v0, count:I
    const-string v1, "ungrouped_visible"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3992
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 3994
    :cond_0
    return v0
.end method

.method private updateStatusUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3889
    const/4 v1, 0x0

    .line 3890
    .local v1, updateCount:I
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getSettableColumnsForStatusUpdatesTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3891
    .local v0, settableValues:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3892
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "status_updates"

    invoke-direct {p0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->getWhereClauseForStatusUpdatesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3899
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getSettableColumnsForPresenceTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3900
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3901
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "presence"

    invoke-virtual {v2, v3, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3906
    :cond_1
    return v1
.end method

.method private waitForAccess()V
    .locals 3

    .prologue
    .line 2459
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2460
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v1, :cond_0

    .line 2463
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 2464
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccessLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2471
    :cond_0
    return-void

    .line 2466
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2467
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6494
    const-string v0, "(SELECT DISTINCT contact_id FROM raw_contacts JOIN name_lookup ON(raw_contacts._id=raw_contact_id) WHERE normalized_name GLOB \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6501
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6502
    const-string v0, "*\' AND name_type IN(2,4,3,6,5,7))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6504
    return-void
.end method

.method public appendRawContactsByFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "sb"
    .parameter "filterParam"

    .prologue
    .line 6513
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendRawContactsByNormalizedNameFilter(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 6514
    return-void
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 2509
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess()V

    .line 2510
    invoke-super {p0, p1}, Lcom/android/providers/contacts/SQLiteContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method protected beforeTransactionCommit()V
    .locals 2

    .prologue
    .line 2533
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 2534
    const-string v0, "ContactsProvider"

    const-string v1, "beforeTransactionCommit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    :cond_0
    invoke-super {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 2537
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->flushTransactionalChanges()V

    .line 2538
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->aggregateInTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2539
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    if-eqz v0, :cond_1

    .line 2540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 2541
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllVisible()V

    .line 2543
    :cond_1
    return-void
.end method

.method createPhotoPriorityResolver(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;
    .locals 1
    .parameter "context"

    .prologue
    .line 2250
    new-instance v0, Lcom/android/providers/contacts/PhotoPriorityResolver;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/PhotoPriorityResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess()V

    .line 2503
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/SQLiteContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteData(J[Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3215
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 3216
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3220
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 3241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_0
    return v0

    .line 3224
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v6

    .line 3226
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_3

    .line 3227
    aget-object v3, p3, v2

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v7

    .line 3233
    :goto_2
    if-nez v2, :cond_2

    .line 3234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data type mismatch: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3241
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3226
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3238
    :cond_2
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;

    move-result-object v1

    .line 3239
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/ContactsProvider2$DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 3241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_2
.end method

.method public deleteGroup(Landroid/net/Uri;JZ)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, "groups"

    const-string v0, "_id="

    .line 3625
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3626
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    .line 3628
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3633
    if-eqz p4, :cond_0

    .line 3634
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3642
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    :goto_0
    return v0

    .line 3636
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3637
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3638
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "dirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3639
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 3642
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    throw v0
.end method

.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3474
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 3475
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->flushTransactionalChanges()V

    .line 3478
    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v8

    .line 3480
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3481
    sparse-switch v0, :sswitch_data_0

    .line 3618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3619
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 3483
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3486
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3489
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, v0, p3}, Lcom/android/internal/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3486
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3493
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3497
    :sswitch_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3498
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteContact(J)I

    move-result v0

    goto :goto_0

    .line 3502
    :sswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 3503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3504
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 3505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Missing a lookup key"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3508
    :cond_2
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3509
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3510
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteContact(J)I

    move-result v0

    goto/16 :goto_0

    .line 3515
    :sswitch_5
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 3516
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 3517
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3518
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3519
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3521
    if-nez p3, :cond_3

    .line 3522
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    .line 3527
    :goto_2
    const/4 v1, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 3528
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 3529
    const-string v0, "_id=? AND lookup=?"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3530
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3531
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3533
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3535
    invoke-direct {p0, v9, v10}, Lcom/android/providers/contacts/ContactsProvider2;->deleteContact(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3542
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto/16 :goto_0

    .line 3524
    :cond_3
    array-length v1, p3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3525
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p3

    invoke-static {p3, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v1

    goto :goto_2

    .line 3539
    :cond_4
    const/4 v1, 0x0

    .line 3542
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3547
    :sswitch_6
    const/4 v9, 0x0

    .line 3548
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move v7, v9

    .line 3552
    :goto_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3553
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3554
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object v0, p0

    move v5, v8

    .line 3555
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v0, v7

    move v7, v0

    .line 3557
    goto :goto_3

    .line 3559
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 3561
    goto/16 :goto_0

    .line 3559
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3565
    :sswitch_7
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3566
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v3

    move-object v0, p0

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I

    move-result v0

    goto/16 :goto_0

    .line 3571
    :sswitch_8
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v8, :cond_6

    const/4 v1, 0x1

    :goto_4
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3572
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, v8}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 3571
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 3580
    :sswitch_9
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3581
    iget-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v8, :cond_7

    const/4 v3, 0x1

    :goto_5
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3582
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 3583
    const-string v0, "_id=?"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v8}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 3581
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 3587
    :sswitch_a
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v8, :cond_8

    const/4 v1, 0x1

    :goto_6
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3588
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, v8}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I

    move-result v0

    goto/16 :goto_0

    .line 3587
    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    .line 3592
    :sswitch_b
    const/4 v9, 0x0

    .line 3593
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v9

    .line 3596
    :goto_7
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3597
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3, v8}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    .line 3600
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3602
    if-lez v1, :cond_a

    .line 3603
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v8, :cond_b

    const/4 v2, 0x1

    :goto_8
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    :cond_a
    move v0, v1

    .line 3605
    goto/16 :goto_0

    .line 3600
    :catchall_2
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3603
    :cond_b
    const/4 v2, 0x0

    goto :goto_8

    .line 3609
    :sswitch_c
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v8, :cond_c

    const/4 v1, 0x1

    :goto_9
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3610
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteSettings(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3609
    :cond_c
    const/4 v1, 0x0

    goto :goto_9

    .line 3614
    :sswitch_d
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStatusUpdates(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3481
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_5
        0x7d2 -> :sswitch_6
        0x7d3 -> :sswitch_7
        0xbb8 -> :sswitch_8
        0xbb9 -> :sswitch_9
        0xbbb -> :sswitch_9
        0xbbe -> :sswitch_9
        0xbc2 -> :sswitch_9
        0x1b58 -> :sswitch_d
        0x2328 -> :sswitch_c
        0x2710 -> :sswitch_b
        0x2711 -> :sswitch_a
        0x2af8 -> :sswitch_0
        0x2af9 -> :sswitch_1
    .end sparse-switch
.end method

.method public deleteRawContact(JJZ)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3670
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->invalidateAggregationExceptionCache()V

    .line 3671
    if-eqz p5, :cond_0

    .line 3672
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presence_raw_contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3673
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3674
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 3675
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactDeleted(J)V

    .line 3679
    :goto_0
    return v0

    .line 3678
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->removeContactIfSingleton(J)V

    .line 3679
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->markRawContactAsDeleted(J)I

    move-result v0

    goto :goto_0
.end method

.method getContactsRestrictions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6116
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6117
    const-string v0, "1"

    .line 6119
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "raw_contacts.is_restricted=0"

    goto :goto_0
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 2333
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultAccount()Landroid/accounts/Account;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6584
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 6586
    :try_start_0
    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "legacy_hosted_or_google"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    .line 6588
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 6589
    const/4 v0, 0x0

    aget-object v0, p0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6594
    :goto_0
    return-object v0

    .line 6591
    :catch_0
    move-exception v0

    .line 6592
    const-string v1, "ContactsProvider"

    const-string v2, "Cannot determine the default account for contacts compatibility"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v5

    .line 6594
    goto :goto_0
.end method

.method protected getLegacyContactImporter()Lcom/android/providers/contacts/LegacyContactImporter;
    .locals 2

    .prologue
    .line 2351
    new-instance v0, Lcom/android/providers/contacts/LegacyContactImporter;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/providers/contacts/LegacyContactImporter;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsProvider2;)V

    return-object v0
.end method

.method protected getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 2342
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getNameSplitter()Lcom/android/providers/contacts/NameSplitter;
    .locals 1

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    return-object v0
.end method

.method public getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filterParam"

    .prologue
    .line 6507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6508
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->appendRawContactsByFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const-string v1, "vnd.android.cursor.dir/contact"

    .line 6263
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 6264
    sparse-switch v0, :sswitch_data_0

    .line 6314
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6266
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/contact"

    move-object v0, v1

    goto :goto_0

    .line 6270
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 6273
    :sswitch_2
    const-string v0, "text/x-vcard"

    goto :goto_0

    .line 6275
    :sswitch_3
    const-string v0, "vnd.android.cursor.dir/raw_contact"

    goto :goto_0

    .line 6277
    :sswitch_4
    const-string v0, "vnd.android.cursor.item/raw_contact"

    goto :goto_0

    .line 6279
    :sswitch_5
    const-string v0, "vnd.android.cursor.dir/data"

    goto :goto_0

    .line 6281
    :sswitch_6
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataMimeType(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6283
    :sswitch_7
    const-string v0, "vnd.android.cursor.dir/phone_v2"

    goto :goto_0

    .line 6285
    :sswitch_8
    const-string v0, "vnd.android.cursor.item/phone_v2"

    goto :goto_0

    .line 6287
    :sswitch_9
    const-string v0, "vnd.android.cursor.dir/phone_lookup"

    goto :goto_0

    .line 6289
    :sswitch_a
    const-string v0, "vnd.android.cursor.dir/email_v2"

    goto :goto_0

    .line 6291
    :sswitch_b
    const-string v0, "vnd.android.cursor.item/email_v2"

    goto :goto_0

    .line 6293
    :sswitch_c
    const-string v0, "vnd.android.cursor.dir/postal-address_v2"

    goto :goto_0

    .line 6295
    :sswitch_d
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    goto :goto_0

    .line 6297
    :sswitch_e
    const-string v0, "vnd.android.cursor.dir/nickname"

    goto :goto_0

    .line 6299
    :sswitch_f
    const-string v0, "vnd.android.cursor.item/nickname"

    goto :goto_0

    .line 6301
    :sswitch_10
    const-string v0, "vnd.android.cursor.dir/aggregation_exception"

    goto :goto_0

    .line 6303
    :sswitch_11
    const-string v0, "vnd.android.cursor.item/aggregation_exception"

    goto :goto_0

    .line 6305
    :sswitch_12
    const-string v0, "vnd.android.cursor.dir/setting"

    goto :goto_0

    .line 6307
    :sswitch_13
    const-string v0, "vnd.android.cursor.dir/contact"

    move-object v0, v1

    goto :goto_0

    .line 6309
    :sswitch_14
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 6311
    :sswitch_15
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 6264
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_1
        0x3f2 -> :sswitch_2
        0x3f3 -> :sswitch_2
        0x7d2 -> :sswitch_3
        0x7d3 -> :sswitch_4
        0xbb8 -> :sswitch_5
        0xbb9 -> :sswitch_6
        0xbba -> :sswitch_7
        0xbbb -> :sswitch_8
        0xbbd -> :sswitch_a
        0xbbe -> :sswitch_b
        0xbc1 -> :sswitch_c
        0xbc2 -> :sswitch_d
        0xbc7 -> :sswitch_e
        0xbc8 -> :sswitch_f
        0xfa0 -> :sswitch_9
        0x1770 -> :sswitch_10
        0x1771 -> :sswitch_11
        0x1f40 -> :sswitch_13
        0x2328 -> :sswitch_12
        0x2ee1 -> :sswitch_14
        0x2ee2 -> :sswitch_15
    .end sparse-switch
.end method

.method importLegacyContacts(Lcom/android/providers/contacts/LegacyContactImporter;)Z
    .locals 5
    .parameter "importer"

    .prologue
    const/4 v4, 0x0

    .line 2428
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactAggregator;->isEnabled()Z

    move-result v0

    .line 2429
    .local v0, aggregatorEnabled:Z
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v4}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 2431
    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/LegacyContactImporter;->importContacts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2434
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2435
    const/4 v2, 0x1

    .line 2441
    :goto_0
    return v2

    .line 2437
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2438
    .local v1, e:Ljava/lang/Throwable;
    const-string v2, "ContactsProvider"

    const-string v3, "Legacy contact import failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2440
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/LegacyContactImporter;->getEstimatedStorageRequirement()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mEstimatedStorageRequirement:J

    move v2, v4

    .line 2441
    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2475
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess()V

    .line 2476
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/SQLiteContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2626
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 2627
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_0
    const-string v0, "caller_is_syncadapter"

    invoke-static {p1, v0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v1

    .line 2633
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2636
    sparse-switch v0, :sswitch_data_0

    .line 2690
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2691
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2698
    :goto_0
    return-object v0

    .line 2638
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2694
    :goto_1
    cmp-long v2, v0, v6

    if-gez v2, :cond_7

    .line 2695
    const/4 v0, 0x0

    goto :goto_0

    .line 2642
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertContact(Landroid/content/ContentValues;)J

    move-wide v0, v6

    .line 2643
    goto :goto_1

    .line 2647
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertRawContact(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2648
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_1

    move v1, v4

    :goto_2
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 2649
    goto :goto_1

    :cond_1
    move v1, v5

    .line 2648
    goto :goto_2

    .line 2653
    :sswitch_3
    const-string v2, "raw_contact_id"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    invoke-direct {p0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->insertData(Landroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 2655
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_2

    move v1, v4

    :goto_3
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 2656
    goto :goto_1

    :cond_2
    move v1, v5

    .line 2655
    goto :goto_3

    .line 2660
    :sswitch_4
    invoke-direct {p0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->insertData(Landroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 2661
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_3

    move v1, v4

    :goto_4
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 2662
    goto :goto_1

    :cond_3
    move v1, v5

    .line 2661
    goto :goto_4

    .line 2666
    :sswitch_5
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    invoke-direct {p0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->insertData(Landroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 2668
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_4

    move v1, v4

    :goto_5
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 2669
    goto :goto_1

    :cond_4
    move v1, v5

    .line 2668
    goto :goto_5

    .line 2673
    :sswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->insertGroup(Landroid/net/Uri;Landroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 2674
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_5

    move v1, v4

    :goto_6
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 2675
    goto :goto_1

    :cond_5
    move v1, v5

    .line 2674
    goto :goto_6

    .line 2679
    :sswitch_7
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSettings(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2680
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v1, :cond_6

    move v1, v4

    :goto_7
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v2

    .line 2681
    goto :goto_1

    :cond_6
    move v1, v5

    .line 2680
    goto :goto_7

    .line 2685
    :sswitch_8
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertStatusUpdate(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_1

    .line 2698
    :cond_7
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 2636
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d4 -> :sswitch_3
        0xbb8 -> :sswitch_4
        0xbc7 -> :sswitch_5
        0x1b58 -> :sswitch_8
        0x2328 -> :sswitch_7
        0x2710 -> :sswitch_6
        0x2af8 -> :sswitch_0
    .end sparse-switch
.end method

.method public insertNameLookup(JJILjava/lang/String;)V
    .locals 4
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "name"

    .prologue
    .line 6477
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6478
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6479
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6480
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p6}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 6481
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 6482
    return-void
.end method

.method public insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "email"

    .prologue
    const/4 v1, 0x0

    .line 6366
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 6377
    :goto_0
    return-object v0

    .line 6370
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6371
    .local v5, address:Ljava/lang/String;
    if-nez v5, :cond_1

    move-object v0, v1

    .line 6372
    goto :goto_0

    .line 6375
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    invoke-direct {p0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->getFullNameStyle(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V

    move-object v0, v5

    .line 6377
    goto :goto_0
.end method

.method public insertNameLookupForNickname(JJLjava/lang/String;)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "nickname"

    .prologue
    .line 6384
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6390
    :goto_0
    return-void

    .line 6388
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    invoke-direct {p0, p5}, Lcom/android/providers/contacts/ContactsProvider2;->getFullNameStyle(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V

    goto :goto_0
.end method

.method public insertNameLookupForOrganization(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "company"
    .parameter "title"

    .prologue
    const/4 v7, 0x5

    .line 6394
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6395
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    invoke-direct {p0, p5}, Lcom/android/providers/contacts/ContactsProvider2;->getFullNameStyle(Ljava/lang/String;)I

    move-result v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V

    .line 6398
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6399
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    invoke-direct {p0, p6}, Lcom/android/providers/contacts/ContactsProvider2;->getFullNameStyle(Ljava/lang/String;)I

    move-result v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V

    .line 6402
    :cond_1
    return-void
.end method

.method public insertNameLookupForPhoneticName(JJLandroid/content/ContentValues;)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "values"

    .prologue
    const-string v3, "data9"

    const-string v2, "data8"

    const-string v1, "data7"

    .line 6437
    const-string v0, "data9"

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6440
    :cond_0
    const-string v0, "data9"

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "data8"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "data7"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6445
    :cond_1
    return-void
.end method

.method public insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "givenName"

    .prologue
    .line 6449
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6450
    if-eqz p5, :cond_0

    .line 6451
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6453
    :cond_0
    if-eqz p6, :cond_1

    .line 6454
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6456
    :cond_1
    if-eqz p7, :cond_2

    .line 6457
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6460
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 6461
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookup(JJILjava/lang/String;)V

    .line 6465
    :cond_3
    if-eqz p7, :cond_4

    .line 6468
    const/4 v5, 0x6

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->insertNameLookup(JJILjava/lang/String;)V

    .line 6471
    :cond_4
    return-void
.end method

.method public insertNameLookupForStructuredName(JJLjava/lang/String;I)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"
    .parameter "fullNameStyle"

    .prologue
    .line 6413
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    const/4 v7, 0x6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;II)V

    .line 6415
    return-void
.end method

.method public insertStatusUpdate(Landroid/content/ContentValues;)J
    .locals 14
    .parameter

    .prologue
    .line 3288
    const-string v0, "im_handle"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3289
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 3290
    const/4 v0, 0x0

    .line 3292
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 3293
    const-string v0, "custom_protocol"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CUSTOM_PROTOCOL is required when PROTOCOL=PROTOCOL_CUSTOM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v10, v0

    .line 3302
    :goto_0
    const-string v0, "presence_data_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 3303
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3304
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3305
    if-eqz v0, :cond_9

    .line 3308
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, "data._id=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3309
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3362
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContactsRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3364
    const/4 v11, 0x0

    .line 3366
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;->PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3369
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3370
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3371
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3372
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 3378
    if-eqz v0, :cond_2

    .line 3379
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3383
    :cond_2
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3384
    if-nez v10, :cond_15

    .line 3387
    const-string v0, ""

    .line 3390
    :goto_2
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 3391
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v7, "presence_data_id"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3392
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v7, "presence_raw_contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3393
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "presence_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3394
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "protocol"

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3395
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "custom_protocol"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "im_handle"

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    const-string v0, "im_account"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3398
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "im_account"

    const-string v3, "im_account"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "mode"

    const-string v3, "mode"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "chat_capability"

    const-string v3, "chat_capability"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "presence"

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3410
    :cond_4
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3411
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3412
    const-string v2, "status_res_package"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3413
    const-string v3, "status_label"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 3415
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    if-eqz v9, :cond_6

    .line 3418
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3421
    :cond_6
    const-string v6, "status_icon"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 3424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 3425
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3426
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 3463
    :cond_7
    :goto_3
    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 3464
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLastStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3465
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLastStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3466
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLastStatusUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 3469
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_4
    return-wide v0

    .line 3313
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez v9, :cond_b

    .line 3314
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PROTOCOL and IM_HANDLE are required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3318
    :cond_b
    const/4 v0, 0x5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    .line 3320
    :goto_5
    iget-wide v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdIm:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3321
    if-eqz v0, :cond_f

    .line 3322
    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdEmail:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3330
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v3, "mimetype_id IN (?,?) AND data1=? AND ((mimetype_id=? AND data5=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3333
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3334
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3335
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3336
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3337
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3338
    if-eqz v10, :cond_c

    .line 3339
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, " AND data6=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3340
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3342
    :cond_c
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, ") OR (mimetype_id=?))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3343
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3357
    :cond_d
    :goto_6
    const-string v0, "presence_data_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3358
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " AND data._id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3359
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    const-string v1, "presence_data_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3318
    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 3345
    :cond_f
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, "mimetype_id=? AND data5=? AND data1=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3348
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3349
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3350
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3351
    if-eqz v10, :cond_d

    .line 3352
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " AND data6=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3353
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3375
    :cond_10
    const-wide/16 v1, -0x1

    .line 3378
    if-eqz v0, :cond_11

    .line 3379
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_11
    move-wide v0, v1

    goto/16 :goto_4

    .line 3378
    :catchall_0
    move-exception v0

    move-object v1, v11

    :goto_7
    if-eqz v1, :cond_12

    .line 3379
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v0

    .line 3427
    :cond_13
    const-string v7, "status_ts"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 3428
    const-string v7, "status_ts"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3429
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3430
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3431
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x3

    invoke-direct {p0, v7, v8, v0}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 3432
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x4

    invoke-direct {p0, v0, v7, v2}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 3433
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2, v6}, Lcom/android/providers/contacts/ContactsProvider2;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 3434
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 3435
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_3

    .line 3439
    :cond_14
    :try_start_2
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3440
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8, v0}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 3441
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x3

    invoke-direct {p0, v7, v8, v2}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 3442
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x4

    invoke-direct {p0, v7, v8, v6}, Lcom/android/providers/contacts/ContactsProvider2;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 3443
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x5

    invoke-direct {p0, v7, v8, v3}, Lcom/android/providers/contacts/ContactsProvider2;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 3444
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 3445
    :catch_0
    move-exception v7

    .line 3447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 3448
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3449
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8, v0}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 3450
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3451
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x4

    invoke-direct {p0, v7, v8, v0}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 3452
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 3454
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x1

    invoke-direct {p0, v0, v7, v2}, Lcom/android/providers/contacts/ContactsProvider2;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 3455
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v6}, Lcom/android/providers/contacts/ContactsProvider2;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 3456
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 3457
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3458
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_3

    .line 3378
    :catchall_1
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_7

    :cond_15
    move-object v0, v10

    goto/16 :goto_2

    :cond_16
    move-object v10, v0

    goto/16 :goto_0
.end method

.method protected isAggregationUpgradeNeeded()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6717
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 6722
    :goto_0
    return v0

    .line 6721
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "aggregation_v2"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6722
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method protected isLegacyContactImportNeeded()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2346
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "contacts_imported_v1"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2347
    .local v0, version:I
    if-ge v0, v4, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isWritableAccount(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 6601
    if-nez p1, :cond_0

    .line 6602
    const/4 v0, 0x1

    .line 6628
    :goto_0
    return v0

    .line 6605
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 6606
    if-eqz v0, :cond_1

    .line 6607
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 6610
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    .line 6612
    :try_start_0
    invoke-interface {v1}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v1

    array-length v2, v1

    move v3, v7

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 6613
    const-string v5, "com.android.contacts"

    iget-object v6, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6615
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6623
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 6624
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 6627
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6628
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 6612
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6619
    :catch_0
    move-exception v1

    .line 6620
    const-string v1, "ContactsProvider"

    const-string v2, "Could not acquire sync adapter types"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 10
    .parameter "db"
    .parameter "lookupKey"

    .prologue
    const-wide/16 v8, -0x1

    .line 5540
    new-instance v5, Lcom/android/providers/contacts/ContactLookupKey;

    invoke-direct {v5}, Lcom/android/providers/contacts/ContactLookupKey;-><init>()V

    .line 5541
    .local v5, key:Lcom/android/providers/contacts/ContactLookupKey;
    invoke-virtual {v5, p2}, Lcom/android/providers/contacts/ContactLookupKey;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 5543
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    const-wide/16 v0, -0x1

    .line 5544
    .local v0, contactId:J
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5545
    invoke-direct {p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdBySourceIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 5546
    cmp-long v7, v0, v8

    if-eqz v7, :cond_0

    move-wide v2, v0

    .line 5565
    .end local v0           #contactId:J
    .local v2, contactId:J
    :goto_0
    return-wide v2

    .line 5551
    .end local v2           #contactId:J
    .restart local v0       #contactId:J
    :cond_0
    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v4

    .line 5553
    .local v4, hasRawContactIds:Z
    if-eqz v4, :cond_1

    .line 5554
    invoke-direct {p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByRawContactIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 5555
    cmp-long v7, v0, v8

    if-eqz v7, :cond_1

    move-wide v2, v0

    .line 5556
    .end local v0           #contactId:J
    .restart local v2       #contactId:J
    goto :goto_0

    .line 5560
    .end local v2           #contactId:J
    .restart local v0       #contactId:J
    :cond_1
    if-nez v4, :cond_2

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5562
    :cond_2
    invoke-direct {p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByDisplayNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    :cond_3
    move-wide v2, v0

    .line 5565
    .end local v0           #contactId:J
    .restart local v2       #contactId:J
    goto :goto_0
.end method

.method protected notifyChange()V
    .locals 1

    .prologue
    .line 2596
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange(Z)V

    .line 2597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2598
    return-void
.end method

.method protected notifyChange(Z)V
    .locals 3
    .parameter "syncToNetwork"

    .prologue
    .line 2601
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2603
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x0

    const-string v0, " IS NULL"

    .line 4276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4277
    new-array v1, v1, [Z

    aput-boolean v10, v1, v10

    .line 4278
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4280
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->findValidAccounts(Ljava/util/Set;[Z)V

    .line 4283
    array-length v2, p1

    move v3, v10

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 4284
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4285
    iget-object v5, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "INSERT INTO accounts (account_name, account_type) VALUES (?, ?)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4283
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4293
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4294
    array-length v0, p1

    move v3, v10

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 4295
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4294
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4298
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 4299
    const-string v4, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removing data for removed account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 4301
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM groups WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4305
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM presence WHERE presence_raw_contact_id IN (SELECT _id FROM raw_contacts WHERE account_name = ? AND account_type = ?)"

    invoke-virtual {v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4312
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4316
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM settings WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4320
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM accounts WHERE account_name=? AND account_type=?"

    invoke-virtual {v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 4416
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 4326
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4330
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 4331
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT _id FROM contacts WHERE (name_raw_contact_id NOT NULL AND name_raw_contact_id NOT IN (SELECT _id FROM raw_contacts)) OR (photo_id NOT NULL AND photo_id NOT IN (SELECT _id FROM data))"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 4342
    :goto_3
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4343
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 4346
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4349
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4350
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(J)V

    goto :goto_4

    .line 4354
    :cond_5
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->rebuildAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4355
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    .line 4358
    :cond_6
    const/4 v0, 0x0

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_8

    .line 4361
    array-length v0, p1

    move v1, v10

    :goto_5
    if-ge v1, v0, :cond_a

    aget-object v2, p1, v1

    .line 4362
    iget-object v3, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccount(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v0, v2

    .line 4368
    :goto_6
    if-eqz v0, :cond_8

    .line 4369
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 4370
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4371
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getOrCreateMyContactsGroupInTransaction(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 4373
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 4374
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    .line 4376
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO data(mimetype_id, raw_contact_id, data1) SELECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "raw_contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4388
    :cond_7
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE raw_contacts SET account_name=?,account_type=? WHERE account_name IS NULL AND account_type IS NULL"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4397
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE groups SET account_name=?,account_type=? WHERE account_name IS NULL AND account_type IS NULL"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4404
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM accounts WHERE account_name IS NULL AND account_type IS NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4411
    :cond_8
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllVisible()V

    .line 4413
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 4414
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4416
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4418
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4419
    return-void

    .line 4361
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_a
    move-object v0, v11

    goto/16 :goto_6
.end method

.method protected onBeginTransaction()V
    .locals 2

    .prologue
    .line 2515
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 2516
    const-string v0, "ContactsProvider"

    const-string v1, "onBeginTransaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :cond_0
    invoke-super {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->onBeginTransaction()V

    .line 2519
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->clearPendingAggregations()V

    .line 2520
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->clearTransactionalChanges()V

    .line 2521
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 2268
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-eqz v0, :cond_0

    .line 2274
    :goto_0
    return-void

    .line 2272
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initForDefaultLocale()V

    .line 2273
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->verifyLocale()V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 2076
    invoke-super {p0}, Lcom/android/providers/contacts/SQLiteContentProvider;->onCreate()Z

    .line 2078
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initialize()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2081
    :goto_0
    return v1

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "ContactsProvider"

    const-string v2, "Cannot start provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2081
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "_id=?"

    .line 6134
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 6135
    sparse-switch v0, :sswitch_data_0

    .line 6189
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "File does not exist"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6137
    :sswitch_0
    const-string v1, "_id=photo_id AND contact_id=?"

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->openPhotoAssetFile(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 6185
    :goto_0
    return-object v0

    .line 6143
    :sswitch_1
    const-string v1, "_id=? AND mimetype=\'vnd.android.cursor.item/photo\'"

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->openPhotoAssetFile(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 6149
    :sswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6150
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    .line 6151
    const-string v0, "_id=?"

    .line 6156
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6157
    const-string v1, "_id=?"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, v0, v5, v1}, Lcom/android/providers/contacts/ContactsProvider2;->outputRawContactsAsVCard(Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 6158
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 6162
    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6163
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6168
    array-length v2, v0

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 6169
    if-nez v4, :cond_0

    .line 6170
    const-string v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6174
    :goto_2
    iget-object v6, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v6, v5}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6175
    add-int/lit8 v4, v4, 0x1

    .line 6168
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6172
    :cond_0
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6177
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6183
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6184
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->outputRawContactsAsVCard(Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 6185
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto/16 :goto_0

    .line 6135
    :sswitch_data_0
    .sparse-switch
        0x3f1 -> :sswitch_0
        0x3f2 -> :sswitch_2
        0x3f3 -> :sswitch_3
        0xbb9 -> :sswitch_1
    .end sparse-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4468
    sget-boolean v5, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v5, :cond_0

    .line 4469
    const-string v5, "ContactsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 4474
    new-instance v15, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v15}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4475
    const/4 v12, 0x0

    .line 4476
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 4480
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 4481
    sparse-switch v5, :sswitch_data_0

    .line 5183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v13}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 5195
    :cond_1
    :goto_0
    return-object v5

    .line 4483
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 4487
    :sswitch_1
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5187
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrictProjectionMap(Z)V

    move-object/from16 v5, p0

    move-object v7, v15

    .line 5189
    invoke-direct/range {v5 .. v13}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 5191
    const-string v5, "address_book_index_extras"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 5192
    const-string v5, "numbers"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v19

    move-object/from16 v12, p0

    move-object v14, v6

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-direct/range {v12 .. v19}, Lcom/android/providers/contacts/ContactsProvider2;->bundleLetterCountExtras(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 4492
    :sswitch_2
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 4493
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4494
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4495
    const-string v7, "_id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4496
    goto :goto_1

    .line 4501
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    .line 4502
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 4503
    const/4 v5, 0x3

    if-ge v8, v5, :cond_2

    .line 4504
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v6, v0

    const-string v7, "Missing a lookup key"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4507
    :cond_2
    const/4 v5, 0x2

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 4508
    const/4 v5, 0x4

    if-ne v8, v5, :cond_3

    .line 4510
    const/4 v5, 0x3

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 4511
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4512
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4514
    if-nez p4, :cond_4

    .line 4515
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v10, v5

    .line 4520
    :goto_2
    const/4 v5, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v5

    .line 4521
    const/4 v5, 0x1

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v5

    .line 4522
    const-string v5, "_id=? AND lookup=?"

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    .line 4523
    invoke-direct/range {v5 .. v13}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4525
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 4529
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4532
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4533
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4535
    const-string v7, "_id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4536
    goto/16 :goto_1

    .line 4517
    :cond_4
    move-object/from16 v0, p4

    array-length v0, v0

    move v5, v0

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 4518
    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p4

    move v1, v10

    move-object v2, v5

    move v3, v11

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v5

    goto :goto_2

    .line 4541
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4543
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4544
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4546
    const-string v7, "_id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4547
    goto/16 :goto_1

    .line 4551
    :sswitch_5
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4552
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4553
    const-string v7, "SELECT \'vcards_\' || ? || \'.vcf\' AS _display_name, NULL AS _size"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 4561
    :sswitch_6
    const-string v5, ""

    .line 4562
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_5

    .line 4563
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 4565
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContactsWithSnippet(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4566
    goto/16 :goto_1

    .line 4571
    :sswitch_7
    const/4 v7, 0x0

    .line 4572
    const/16 v8, 0x3ef

    if-ne v5, v8, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x3

    if-le v5, v8, :cond_26

    .line 4574
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 4575
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4576
    const-string v8, "_id IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4577
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4578
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4581
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4583
    const/4 v7, 0x0

    .line 4584
    const/4 v8, 0x0

    .line 4585
    if-eqz p2, :cond_25

    .line 4586
    const-string v7, "times_contacted_sort"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4587
    const-string v8, "times_contacted_sort"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    move-object v8, v7

    .line 4591
    :goto_4
    if-eqz v5, :cond_6

    .line 4592
    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4594
    :cond_6
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentStarredProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4595
    const-string v9, "starred=1"

    const/4 v10, 0x0

    const-string v11, "_id"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v15

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4599
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4600
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4601
    if-eqz v5, :cond_7

    .line 4602
    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4604
    :cond_7
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentFrequentProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4605
    const-string v9, "times_contacted > 0 AND (starred = 0 OR starred IS NULL)"

    const/4 v10, 0x0

    const-string v11, "_id"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, v16

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4611
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v15, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const-string v5, "starred DESC, times_contacted_sort DESC, display_name COLLATE LOCALIZED ASC"

    const-string v9, "(SELECT COUNT(1) FROM contacts WHERE starred=1) + 5"

    invoke-virtual {v7, v8, v5, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4614
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 4615
    if-eqz v5, :cond_1

    .line 4616
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v5, v6, v7}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 4623
    :sswitch_8
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4624
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_20

    .line 4625
    const-string v5, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1 IN (SELECT groups._id FROM groups WHERE title=?)))"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4626
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    goto/16 :goto_1

    .line 4632
    :sswitch_9
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4633
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_20

    .line 4634
    const-string v5, "_id IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1=?)"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4636
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4637
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4638
    goto/16 :goto_1

    .line 4643
    :sswitch_a
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4644
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_20

    .line 4645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4646
    const-string v7, "_id IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=%d AND data1 IN (%s))"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4648
    goto/16 :goto_1

    .line 4653
    :sswitch_b
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4654
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 4655
    const/4 v5, 0x3

    if-le v7, v5, :cond_20

    .line 4656
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x3

    sub-int v8, v7, v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4657
    const-string v8, "NULL"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4658
    const-string v5, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts.account_name IS NULL)"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v5, p4

    :goto_5
    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4665
    goto/16 :goto_1

    .line 4661
    :cond_8
    const-string v5, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts.account_name=? AND raw_contacts.account_type=?)"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4662
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x1

    sub-int v8, v7, v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4663
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x2

    sub-int/2addr v7, v9

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 4670
    :sswitch_c
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4671
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 4672
    const/4 v5, 0x4

    if-le v7, v5, :cond_20

    .line 4673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 4674
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x1

    sub-int v9, v7, v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4675
    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4677
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x3

    sub-int v9, v7, v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 4678
    const-string v5, "NULL"

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4679
    const-string v5, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts.account_name IS NULL) AND _id NOT IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1=? AND contact_id NOT NULL)"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v5, v8

    :goto_6
    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4686
    goto/16 :goto_1

    .line 4682
    :cond_9
    const-string v5, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts.account_name=? AND raw_contacts.account_type=?) AND _id NOT IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1=? AND contact_id NOT NULL)"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4683
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x2

    sub-int/2addr v7, v9

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4684
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 4691
    :sswitch_d
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 4692
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 4693
    const/4 v7, 0x2

    if-le v5, v7, :cond_20

    .line 4694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4695
    const-string v7, "_id IN (SELECT contact_id FROM raw_contacts) AND _id NOT IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=%d AND data1 IN (%s) AND contact_id NOT NULL)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4697
    goto/16 :goto_1

    .line 4702
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContactsWithSnippet(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4703
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 4704
    const/4 v7, 0x3

    if-le v5, v7, :cond_20

    .line 4705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v7, v0

    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 4706
    const-string v8, "_id IN (SELECT contact_id FROM raw_contacts) AND _id NOT IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=%d AND data1 IN (%s) AND contact_id NOT NULL)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x2

    sub-int/2addr v5, v11

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4708
    goto/16 :goto_1

    .line 4713
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContactsWithSnippet(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4714
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 4715
    const/4 v5, 0x5

    if-le v7, v5, :cond_20

    .line 4716
    const-string v5, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts.account_name=? AND raw_contacts.account_type=?) AND _id NOT IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1=? AND contact_id NOT NULL)"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 4718
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x2

    sub-int v9, v7, v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4719
    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4720
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    sub-int v9, v7, v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4721
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x4

    sub-int/2addr v7, v9

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4722
    goto/16 :goto_1

    .line 4727
    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 4728
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4729
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4730
    const-string v7, " AND contact_id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4731
    goto/16 :goto_1

    .line 4735
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 4736
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4737
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4738
    const-string v7, " AND contact_id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4739
    const-string v7, " AND _id=photo_id"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4740
    goto/16 :goto_1

    .line 4744
    :sswitch_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getRecentContacts([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 4748
    :sswitch_13
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4749
    const-string v5, "numbers"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 4750
    if-eqz p2, :cond_a

    .line 4751
    const-string v5, "phone_number_group_by_column"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4755
    :goto_7
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneNumberProjectionMapForData:Ljava/util/HashMap;

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4756
    const-string v7, "phone_number_group_by_column"

    move-object/from16 v20, v7

    move-object v7, v5

    move-object/from16 v5, v20

    .line 4758
    :goto_8
    const-string v8, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual {v15, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v12, v5

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object v8, v7

    .line 4759
    goto/16 :goto_1

    .line 4753
    :cond_a
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "phone_number_group_by_column"

    aput-object v8, v5, v7

    goto :goto_7

    .line 4763
    :sswitch_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4764
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4766
    const-string v5, "numbers"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 4767
    if-eqz p2, :cond_b

    .line 4768
    const-string v5, "phone_number_group_by_column"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4772
    :goto_9
    const-string v7, "phone_number_group_by_column"

    .line 4773
    sget-object v8, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneNumberProjectionMapForData:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 4774
    const-string v8, "_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4775
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 4776
    const-string v9, " AND contact_id IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1=?)"

    invoke-virtual {v15, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v9, v0

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 4778
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4779
    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :goto_a
    move-object v12, v7

    move-object/from16 v11, p5

    move-object v10, v8

    move-object/from16 v9, p3

    move-object v8, v5

    .line 4781
    goto/16 :goto_1

    .line 4770
    :cond_b
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "phone_number_group_by_column"

    aput-object v8, v5, v7

    goto :goto_9

    .line 4782
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_20

    .line 4783
    const-string v5, " AND contact_id IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1=?)"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4785
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4786
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4787
    goto/16 :goto_1

    .line 4793
    :sswitch_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4794
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4795
    const-string v7, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4796
    const-string v7, " AND _id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4797
    goto/16 :goto_1

    .line 4801
    :sswitch_16
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4802
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4803
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_f

    .line 4804
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 4805
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4806
    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4808
    const/4 v8, 0x0

    .line 4809
    const/4 v9, 0x0

    .line 4810
    invoke-static {v5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4811
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_22

    .line 4812
    const-string v8, "raw_contact_id IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4813
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v10

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->appendRawContactsByNormalizedNameFilter(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4814
    const/4 v8, 0x1

    .line 4815
    const/4 v9, 0x1

    .line 4818
    :goto_b
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->isPhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 4819
    if-eqz v8, :cond_d

    .line 4820
    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4822
    :cond_d
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4823
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4824
    const-string v8, "_id IN (SELECT data_id FROM phone_lookup WHERE normalized_number LIKE \'%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4828
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4829
    const-string v5, "%\')"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4830
    const/4 v5, 0x1

    .line 4833
    :goto_c
    if-nez v5, :cond_e

    .line 4836
    const-string v5, "0"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4838
    :cond_e
    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4839
    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4841
    :cond_f
    const-string v5, "data4,contact_id"

    .line 4842
    if-nez p5, :cond_1f

    .line 4843
    const-string v7, "contact_id"

    move-object v12, v5

    move-object v11, v7

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    goto/16 :goto_1

    .line 4849
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    const-string v7, "vnd.android.cursor.item/nickname"

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    .line 4850
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4852
    const-string v7, "data"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4853
    const-string v7, "mimetype_id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4854
    goto/16 :goto_1

    .line 4858
    :sswitch_18
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4859
    goto/16 :goto_1

    .line 4863
    :sswitch_19
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4864
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/email_v2\'"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4865
    goto/16 :goto_1

    .line 4869
    :sswitch_1a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4870
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4871
    const-string v7, " AND mimetype = \'vnd.android.cursor.item/email_v2\' AND _id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4873
    goto/16 :goto_1

    .line 4877
    :sswitch_1b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4878
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/email_v2\'"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4879
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_20

    .line 4880
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 4881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4882
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4883
    const-string v7, " AND UPPER(data1)=UPPER(?)"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4884
    goto/16 :goto_1

    .line 4889
    :sswitch_1c
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4890
    const/4 v5, 0x0

    .line 4891
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_10

    .line 4892
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 4893
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 4894
    const/4 v5, 0x0

    .line 4898
    :cond_10
    if-nez v5, :cond_11

    .line 4900
    const-string v5, " AND 0"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4933
    :goto_d
    const-string v5, "data1,contact_id"

    .line 4934
    if-nez p5, :cond_1f

    .line 4935
    const-string v7, "contact_id"

    move-object v12, v5

    move-object v11, v7

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    goto/16 :goto_1

    .line 4902
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4903
    const-string v8, " AND _id IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4904
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT _id FROM data WHERE mimetype_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdEmail:J

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "data1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4909
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4910
    const-string v8, "@"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 4911
    invoke-static {v5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4912
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_12

    .line 4922
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " UNION SELECT _id FROM data WHERE +mimetype_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdEmail:J

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "raw_contact_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " IN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4927
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->appendRawContactsByNormalizedNameFilter(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4930
    :cond_12
    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4931
    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 4941
    :sswitch_1d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4942
    const-string v5, " AND mimetype = \'vnd.android.cursor.item/postal-address_v2\'"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4944
    goto/16 :goto_1

    .line 4948
    :sswitch_1e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4949
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4950
    const-string v7, " AND mimetype = \'vnd.android.cursor.item/postal-address_v2\'"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4952
    const-string v7, " AND _id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4953
    goto/16 :goto_1

    .line 4963
    :sswitch_1f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5e

    const/16 v9, 0x2f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v8, v0

    invoke-virtual {v8, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    .line 4965
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4967
    const/16 v8, 0xbc3

    if-ne v5, v8, :cond_13

    const-string v8, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    :goto_e
    invoke-virtual {v15, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4970
    const-string v8, "mimetype_id=?"

    invoke-virtual {v15, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4972
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v9

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xbc3

    if-ne v5, v9, :cond_15

    const-string v5, "contacts.times_contacted"

    :goto_10
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " DESC"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    move-object v10, v7

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4977
    goto/16 :goto_1

    .line 4967
    :cond_13
    const-string v8, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    goto :goto_e

    .line 4972
    :cond_14
    const-string v9, ""

    goto :goto_f

    :cond_15
    const-string v5, "times_contacted"

    goto :goto_10

    .line 4981
    :sswitch_20
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4982
    goto/16 :goto_1

    .line 4986
    :sswitch_21
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 4987
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 4988
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4989
    const-string v7, " AND _id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4990
    goto/16 :goto_1

    .line 4994
    :sswitch_22
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 4995
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 4996
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4997
    const-string v7, " AND raw_contact_id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 4998
    goto/16 :goto_1

    .line 5002
    :sswitch_23
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5003
    goto/16 :goto_1

    .line 5007
    :sswitch_24
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5008
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5009
    const-string v7, " AND _id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5010
    goto/16 :goto_1

    .line 5015
    :sswitch_25
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 5018
    const-string v5, "raw_contacts._id"

    .line 5021
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 5022
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v8, v0

    invoke-virtual {v8, v15, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    .line 5023
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5026
    const/4 v7, 0x0

    .line 5027
    const/4 v8, 0x0

    move-object v11, v5

    move-object v10, v8

    move-object v9, v7

    move-object/from16 v8, p2

    .line 5028
    goto/16 :goto_1

    .line 5021
    :cond_16
    const-string v7, ""

    goto :goto_12

    .line 5032
    :sswitch_26
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5035
    const-string v5, "raw_contacts._id"

    .line 5038
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 5039
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v8, v0

    invoke-virtual {v8, v15, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    .line 5040
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v11, v5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5042
    goto/16 :goto_1

    .line 5038
    :cond_17
    const-string v7, ""

    goto :goto_14

    .line 5046
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5047
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5048
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5049
    goto/16 :goto_1

    .line 5053
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5054
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5055
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5056
    const-string v7, "_id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5057
    goto/16 :goto_1

    .line 5061
    :sswitch_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getGroupView()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AS groups"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5062
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsSummaryProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5063
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5064
    const-string v5, "_id"

    move-object v12, v5

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5065
    goto/16 :goto_1

    .line 5069
    :sswitch_2a
    const-string v5, "agg_exceptions"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5070
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sAggregationExceptionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5071
    goto/16 :goto_1

    .line 5075
    :sswitch_2b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 5076
    const/4 v5, 0x0

    .line 5077
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_1c

    .line 5078
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object/from16 v11, p3

    .line 5081
    :goto_15
    if-eqz v13, :cond_18

    .line 5082
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v10, v5

    .line 5087
    :goto_16
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    move-object v5, v0

    move-object v6, v15

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactAggregator;->queryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 5084
    :cond_18
    const/4 v5, 0x5

    move v10, v5

    goto :goto_16

    .line 5094
    :sswitch_2c
    const-string v5, "settings"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5095
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sSettingsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5096
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 5102
    if-eqz p2, :cond_1b

    move-object/from16 v0, p2

    array-length v0, v0

    move v7, v0

    if-eqz v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v7, v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "summ_count"

    aput-object v10, v8, v9

    move-object v0, v7

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 5104
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 5106
    :goto_17
    if-eqz p2, :cond_1a

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    if-eqz v8, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v8, v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "summ_phones"

    aput-object v11, v9, v10

    move-object v0, v8

    move-object/from16 v1, p2

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 5108
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    goto/16 :goto_1

    .line 5115
    :sswitch_2d
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTableAndProjectionMapForStatusUpdates(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5116
    goto/16 :goto_1

    .line 5120
    :sswitch_2e
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTableAndProjectionMapForStatusUpdates(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 5121
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5122
    const-string v7, "data._id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5123
    goto/16 :goto_1

    .line 5127
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 5131
    :sswitch_30
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 5132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v6

    move-object v2, v5

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 5136
    :sswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->checkPrivacyAndReturn()Landroid/database/Cursor;

    move-result-object v5

    .line 5137
    if-nez v5, :cond_1

    .line 5139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object v5, v0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, v13

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleT9SearchQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    .line 5142
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5143
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5144
    goto/16 :goto_1

    .line 5147
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5148
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5149
    const-string v5, "has_phone_number=1"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5150
    goto/16 :goto_1

    .line 5153
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5154
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5155
    const-string v5, "starred=1"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5156
    goto/16 :goto_1

    .line 5159
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5160
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5161
    const-string v5, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1 IN (SELECT groups._id FROM groups WHERE title=?)))"

    invoke-virtual {v15, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5162
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5163
    goto/16 :goto_1

    .line 5166
    :sswitch_36
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawContactsEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5167
    goto/16 :goto_1

    .line 5171
    :sswitch_37
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 5172
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawContactsEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5173
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5174
    const-string v7, " AND _id=?"

    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v11, p5

    move-object v10, v5

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    .line 5175
    goto/16 :goto_1

    .line 5179
    :sswitch_38
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->queryProviderStatus(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0

    :cond_19
    move-object v5, v13

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v11, p5

    move-object v10, v7

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v7, p4

    goto/16 :goto_17

    :cond_1c
    move-object v11, v5

    goto/16 :goto_15

    :cond_1d
    move-object/from16 v5, p5

    goto/16 :goto_13

    :cond_1e
    move-object/from16 v5, p5

    goto/16 :goto_11

    :cond_1f
    move-object v12, v5

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    goto/16 :goto_1

    :cond_20
    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v8, p2

    goto/16 :goto_1

    :cond_21
    move v5, v9

    goto/16 :goto_c

    :cond_22
    move/from16 v20, v9

    move v9, v8

    move/from16 v8, v20

    goto/16 :goto_b

    :cond_23
    move-object/from16 v8, p4

    goto/16 :goto_a

    :cond_24
    move-object v5, v12

    move-object/from16 v7, p2

    goto/16 :goto_8

    :cond_25
    move-object/from16 v16, v8

    move-object v8, v7

    goto/16 :goto_4

    :cond_26
    move-object v5, v7

    goto/16 :goto_3

    .line 4481
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_10
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_11
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_5
        0x3f4 -> :sswitch_b
        0x3f5 -> :sswitch_c
        0x3f6 -> :sswitch_f
        0x3f7 -> :sswitch_9
        0x3f8 -> :sswitch_a
        0x3f9 -> :sswitch_d
        0x3fa -> :sswitch_e
        0x3fb -> :sswitch_12
        0x7d2 -> :sswitch_20
        0x7d3 -> :sswitch_21
        0x7d4 -> :sswitch_22
        0x7d5 -> :sswitch_37
        0xbb8 -> :sswitch_23
        0xbb9 -> :sswitch_24
        0xbba -> :sswitch_13
        0xbbb -> :sswitch_15
        0xbbc -> :sswitch_16
        0xbbd -> :sswitch_19
        0xbbe -> :sswitch_1a
        0xbbf -> :sswitch_1b
        0xbc0 -> :sswitch_1c
        0xbc1 -> :sswitch_1d
        0xbc2 -> :sswitch_1e
        0xbc3 -> :sswitch_1f
        0xbc4 -> :sswitch_1f
        0xbc5 -> :sswitch_14
        0xbc7 -> :sswitch_17
        0xbc8 -> :sswitch_18
        0xfa0 -> :sswitch_25
        0xfa1 -> :sswitch_26
        0x1770 -> :sswitch_2a
        0x1b58 -> :sswitch_2d
        0x1b59 -> :sswitch_2e
        0x1f40 -> :sswitch_2b
        0x2328 -> :sswitch_2c
        0x2710 -> :sswitch_27
        0x2711 -> :sswitch_28
        0x2713 -> :sswitch_29
        0x2af8 -> :sswitch_0
        0x2ee1 -> :sswitch_2f
        0x2ee2 -> :sswitch_30
        0x2ee3 -> :sswitch_31
        0x36b0 -> :sswitch_32
        0x36b1 -> :sswitch_33
        0x36b2 -> :sswitch_34
        0x36b3 -> :sswitch_35
        0x3a99 -> :sswitch_36
        0x3e81 -> :sswitch_38
    .end sparse-switch
.end method

.method protected setProviderStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 2606
    iput p1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 2607
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2609
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2481
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccessLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 2485
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2486
    const/16 v1, 0x3e81

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->isLegacyContactImportNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2487
    const-string v0, "status"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2488
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2489
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->importLegacyContactsAsync()V

    move v0, v2

    .line 2497
    :goto_0
    return v0

    .line 2492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2496
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess()V

    .line 2497
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/SQLiteContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, " "

    const-string v3, " AND "

    const-string v8, ""

    .line 3710
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 3711
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3717
    const/16 v1, 0x2af9

    if-ne v0, v1, :cond_2

    if-nez p3, :cond_2

    .line 3718
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3719
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3720
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v7

    .line 3882
    :cond_1
    :goto_0
    return v0

    .line 3723
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->flushTransactionalChanges()V

    .line 3724
    const-string v1, "caller_is_syncadapter"

    invoke-static {p1, v1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    .line 3726
    sparse-switch v0, :sswitch_data_0

    .line 3877
    iput-boolean v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3878
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3728
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2, p4}, Lcom/android/internal/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3732
    :sswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_3

    const-string v0, ""

    move-object v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3736
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p2, v0, p4}, Lcom/android/internal/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3733
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3741
    :sswitch_2
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3746
    :sswitch_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(JLandroid/content/ContentValues;)I

    move-result v0

    goto/16 :goto_0

    .line 3752
    :sswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 3753
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3754
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 3755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Missing a lookup key"

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3758
    :cond_4
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3759
    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3760
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(JLandroid/content/ContentValues;)I

    move-result v0

    goto/16 :goto_0

    .line 3765
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_5

    const-string v1, ""

    move-object v1, v8

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 3769
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 3766
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3775
    :sswitch_6
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 3777
    if-lez v0, :cond_1

    .line 3778
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_6

    move v2, v7

    :goto_3
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    :cond_6
    move v2, v6

    goto :goto_3

    .line 3784
    :sswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 3785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_7

    const-string v1, ""

    move-object v1, v8

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 3789
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 3790
    if-lez v0, :cond_1

    .line 3791
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_8

    move v2, v7

    :goto_5
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    .line 3785
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    move v2, v6

    .line 3791
    goto :goto_5

    :sswitch_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3799
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 3800
    if-lez v0, :cond_1

    .line 3801
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_9

    move v2, v7

    :goto_6
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    :cond_9
    move v2, v6

    goto :goto_6

    .line 3807
    :sswitch_9
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3808
    invoke-direct {p0, p2, v0, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3813
    :sswitch_a
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3814
    if-eqz p3, :cond_a

    .line 3815
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=? AND("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3819
    :cond_a
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 3820
    const-string v0, "_id=?"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3826
    :sswitch_b
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateGroups(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 3828
    if-lez v0, :cond_1

    .line 3829
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_b

    move v2, v7

    :goto_7
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    :cond_b
    move v2, v6

    goto :goto_7

    .line 3835
    :sswitch_c
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3836
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_c

    const-string v1, ""

    move-object v1, v8

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3839
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateGroups(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 3841
    if-lez v0, :cond_1

    .line 3842
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_d

    move v2, v7

    :goto_9
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    .line 3837
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_d
    move v2, v6

    .line 3842
    goto :goto_9

    .line 3848
    :sswitch_d
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->updateAggregationException(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v0

    goto/16 :goto_0

    .line 3853
    :sswitch_e
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateSettings(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3855
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_e

    move v2, v7

    :goto_a
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    goto/16 :goto_0

    :cond_e
    move v2, v6

    goto :goto_a

    .line 3860
    :sswitch_f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateStatusUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3866
    :sswitch_10
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->rebuildAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3867
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    .line 3870
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3872
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V

    move v0, v6

    .line 3873
    goto/16 :goto_0

    .line 3726
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_4
        0x7d2 -> :sswitch_9
        0x7d3 -> :sswitch_a
        0x7d4 -> :sswitch_5
        0xbb8 -> :sswitch_6
        0xbb9 -> :sswitch_8
        0xbbb -> :sswitch_8
        0xbbe -> :sswitch_8
        0xbc2 -> :sswitch_8
        0xbc8 -> :sswitch_7
        0x1770 -> :sswitch_d
        0x1b58 -> :sswitch_f
        0x2328 -> :sswitch_e
        0x2710 -> :sswitch_b
        0x2711 -> :sswitch_c
        0x2af8 -> :sswitch_0
        0x2af9 -> :sswitch_1
        0x2ee4 -> :sswitch_10
    .end sparse-switch
.end method

.method public updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 5751
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 5752
    return-void
.end method

.method public updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 3010
    const/4 v0, 0x0

    .line 3011
    const/4 v1, 0x0

    .line 3012
    const/4 v2, 0x0

    .line 3013
    const/4 v3, 0x0

    .line 3014
    const/4 v4, 0x0

    .line 3016
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3017
    const-string v5, "SELECT mimetype_id,is_primary,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11 FROM data WHERE raw_contact_id=? AND (data1 NOT NULL OR data4 NOT NULL)"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move v12, v4

    move-object v4, v1

    move-object v1, v3

    move v3, v0

    move v0, v12

    .line 3019
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3020
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3021
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->getDisplayNameSource(I)I

    move-result v7

    .line 3022
    if-lt v7, v3, :cond_0

    if-eqz v7, :cond_0

    .line 3026
    if-ne v7, v3, :cond_1

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 3030
    :cond_1
    int-to-long v8, v6

    iget-wide v10, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdStructuredName:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 3032
    if-eqz v4, :cond_3

    .line 3033
    new-instance v6, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v6}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 3039
    :goto_1
    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    const/4 v9, 0x0

    iput v9, v8, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 3040
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {v5, v8, v9}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3041
    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v8, v8, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v8, :cond_2

    .line 3042
    new-instance v2, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget-object v8, v8, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v10, v10, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v2, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 3045
    :cond_2
    const/4 v8, 0x5

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 3046
    const/4 v8, 0x3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 3047
    const/4 v8, 0x6

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 3048
    const/4 v8, 0x4

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 3049
    const/4 v8, 0x7

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 3050
    const/16 v8, 0xb

    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_2
    iput v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 3053
    const/16 v8, 0xa

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 3054
    const/16 v8, 0x9

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 3055
    const/16 v8, 0x8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    .line 3056
    const/16 v8, 0xc

    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    :goto_3
    iput v8, v6, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 3059
    invoke-virtual {v6}, Lcom/android/providers/contacts/NameSplitter$Name;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_16

    move-object v3, v6

    move v4, v7

    :goto_4
    move-object v12, v3

    move v3, v4

    move-object v4, v12

    .line 3099
    goto/16 :goto_0

    .line 3035
    :cond_3
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    .line 3036
    invoke-virtual {v6}, Lcom/android/providers/contacts/NameSplitter$Name;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 3102
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3050
    :cond_4
    const/16 v8, 0xb

    :try_start_1
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_2

    .line 3056
    :cond_5
    const/16 v8, 0xc

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_3

    .line 3063
    :cond_6
    int-to-long v8, v6

    iget-wide v10, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMimeTypeIdOrganization:J

    cmp-long v6, v8, v10

    if-nez v6, :cond_9

    .line 3064
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    const/4 v8, 0x0

    iput v8, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 3065
    const/4 v6, 0x2

    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {v5, v6, v8}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3066
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v6, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v6, :cond_8

    .line 3068
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3070
    const/16 v1, 0x9

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3071
    const/16 v2, 0xb

    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_5
    move-object v3, v4

    move v4, v7

    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_4

    :cond_7
    const/16 v2, 0xb

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_5

    .line 3076
    :cond_8
    const/4 v6, 0x5

    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {v5, v6, v8}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3077
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v6, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v6, :cond_16

    .line 3079
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3081
    const/4 v1, 0x0

    .line 3082
    const/4 v2, 0x0

    move-object v3, v4

    move v4, v7

    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_4

    .line 3089
    :cond_9
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    const/4 v8, 0x0

    iput v8, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 3090
    const/4 v6, 0x2

    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {v5, v6, v8}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3091
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v6, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v6, :cond_16

    .line 3093
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3095
    const/4 v1, 0x0

    .line 3096
    const/4 v2, 0x0

    move-object v3, v4

    move v4, v7

    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_4

    .line 3102
    :cond_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3107
    const/4 v7, 0x0

    .line 3108
    const/4 v8, 0x0

    .line 3109
    const/4 v5, 0x0

    .line 3111
    const/16 v6, 0x28

    if-ne v3, v6, :cond_d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3112
    iget v0, v4, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 3113
    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_c

    .line 3115
    :cond_b
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 3116
    iput v0, v4, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 3119
    :cond_c
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;Z)Ljava/lang/String;

    move-result-object v1

    .line 3120
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;Z)Ljava/lang/String;

    move-result-object v5

    .line 3122
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v4}, Lcom/android/providers/contacts/NameSplitter;->joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;

    move-result-object v6

    .line 3123
    iget v4, v4, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    move-object v12, v1

    move v1, v4

    move-object v4, v12

    .line 3128
    :goto_6
    if-eqz v6, :cond_e

    .line 3130
    if-nez v1, :cond_15

    .line 3131
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0, v6}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v0

    move-object v1, v6

    move v7, v0

    move-object v0, v6

    .line 3151
    :goto_7
    if-nez v1, :cond_13

    move-object v9, v5

    move-object v8, v4

    :goto_8
    move-object v0, p0

    move-wide v1, p2

    .line 3156
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->setDisplayName(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3159
    return-void

    :cond_d
    move-object v4, v2

    move-object v6, v1

    move v1, v0

    move v0, v5

    move-object v5, v2

    .line 3125
    goto :goto_6

    .line 3134
    :cond_e
    if-nez v0, :cond_11

    .line 3135
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 3136
    if-eqz v0, :cond_f

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    .line 3138
    :cond_f
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v0

    .line 3141
    :cond_10
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 3143
    :cond_11
    const/4 v2, 0x3

    if-eq v0, v2, :cond_12

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 3145
    :cond_12
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move v7, v1

    move-object v1, v0

    goto :goto_7

    :cond_13
    move-object v9, v0

    move-object v8, v1

    goto :goto_8

    :cond_14
    move-object v0, v8

    move-object v12, v7

    move v7, v1

    move-object v1, v12

    goto :goto_7

    :cond_15
    move-object v0, v6

    move v7, v1

    move-object v1, v6

    goto :goto_7

    :cond_16
    move-object v12, v4

    move v4, v3

    move-object v3, v12

    goto/16 :goto_4
.end method

.method protected upgradeAggregationAlgorithm()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const-string v14, " contacts, in "

    const-string v13, "ContactsProvider"

    .line 6729
    const-string v0, "ContactsProvider"

    const-string v0, "Upgrading aggregation algorithm"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6731
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    .line 6733
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6734
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "raw_contacts r1 JOIN raw_contacts r2"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "r1._id"

    aput-object v5, v3, v4

    const-string v4, "r1._id!=r2._id AND r1.contact_id=r2.contact_id AND r1.account_name=r2.account_name AND r1.account_type=r2.account_type"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    move v1, v12

    .line 6743
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6744
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 6745
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6747
    add-int/lit8 v1, v1, 0x1

    .line 6748
    goto :goto_0

    .line 6750
    :cond_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6752
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactAggregator;->aggregateInTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6753
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 6754
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "aggregation_v2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6757
    iget-object v0, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6758
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 6759
    const-string v0, "ContactsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aggregation algorithm upgraded for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contacts, in "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6762
    return-void

    .line 6750
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6757
    :catchall_1
    move-exception v0

    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6758
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 6759
    const-string v4, "ContactsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aggregation algorithm upgraded for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " contacts, in "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6761
    throw v0

    .line 6757
    :catchall_2
    move-exception v0

    move v1, v12

    goto :goto_1
.end method

.method protected verifyAccounts()V
    .locals 3

    .prologue
    .line 2277
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 2278
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 2279
    return-void
.end method

.method protected verifyLocale()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 2291
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-ne v0, v4, :cond_1

    .line 2328
    :cond_0
    :goto_0
    return-void

    .line 2295
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2296
    const-string v1, "locale"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2297
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    .line 2298
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2302
    iget v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 2303
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 2305
    new-instance v3, Lcom/android/providers/contacts/ContactsProvider2$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/providers/contacts/ContactsProvider2$1;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;Landroid/content/SharedPreferences;)V

    .line 2327
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method wipeData()V
    .locals 1

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->wipeData()V

    .line 2449
    return-void
.end method

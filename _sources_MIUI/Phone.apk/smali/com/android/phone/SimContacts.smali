.class public final Lcom/android/phone/SimContacts;
.super Lcom/android/phone/ADNList;
.source "SimContacts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimContacts$SimCardContact;,
        Lcom/android/phone/SimContacts$DeleteTask;,
        Lcom/android/phone/SimContacts$SaveClickListener;,
        Lcom/android/phone/SimContacts$AddClickListener;,
        Lcom/android/phone/SimContacts$TextChangeListener;,
        Lcom/android/phone/SimContacts$ImportAllSimContactsThread;,
        Lcom/android/phone/SimContacts$NamePhoneTypePair;
    }
.end annotation


# static fields
.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/phone/SimContacts$SimCardContact;",
            ">;"
        }
    .end annotation
.end field

.field private addClickListener:Lcom/android/phone/SimContacts$AddClickListener;

.field private mAccounts:[Landroid/accounts/Account;

.field private mName:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mNumber:Ljava/lang/String;

.field private mNumberView:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResultDialog:Landroid/app/AlertDialog;

.field private saveClickListener:Lcom/android/phone/SimContacts$SaveClickListener;

.field private simCardHash:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SimContacts;->simCardHash:Ljava/util/HashSet;

    .line 439
    new-instance v0, Lcom/android/phone/SimContacts$AddClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SimContacts$AddClickListener;-><init>(Lcom/android/phone/SimContacts;Lcom/android/phone/SimContacts$1;)V

    iput-object v0, p0, Lcom/android/phone/SimContacts;->addClickListener:Lcom/android/phone/SimContacts$AddClickListener;

    .line 451
    new-instance v0, Lcom/android/phone/SimContacts$SaveClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SimContacts$SaveClickListener;-><init>(Lcom/android/phone/SimContacts;Lcom/android/phone/SimContacts$1;)V

    iput-object v0, p0, Lcom/android/phone/SimContacts;->saveClickListener:Lcom/android/phone/SimContacts$SaveClickListener;

    .line 799
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContactToDefaultAccounts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/SimContacts;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/SimContacts;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/SimContacts;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimContacts;->deleteOneSimContact(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/SimContacts;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/SimContacts;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimContacts;->deleteSimContact(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/SimContacts;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimContacts;->callOrSmsSimContact(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/SimContacts;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/SimContacts;->editSimContact(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/SimContacts;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/SimContacts;->simCardHash:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/SimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/SimContacts;->buildResultDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimContacts;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mResultDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SimContacts;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/SimContacts;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SimContacts;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SimContacts;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/SimContacts;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 26
    .parameter "cursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 247
    new-instance v20, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 249
    .local v20, namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 250
    .local v19, name:Ljava/lang/String;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    move/from16 v23, v0

    .line 251
    .local v23, phoneType:I
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 253
    .local v22, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/phone/SimContacts;->queryNameWithPhoneNumber(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v24

    .line 254
    .local v24, queriedName:Ljava/lang/String;
    if-eqz v24, :cond_1

    const-string v3, " "

    const-string v4, ""

    move-object/from16 v0, v24

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    new-instance v11, Lcom/android/phone/SimContacts$SimCardContact;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Lcom/android/phone/SimContacts$SimCardContact;-><init>(Lcom/android/phone/SimContacts$1;)V

    .line 257
    .local v11, contact:Lcom/android/phone/SimContacts$SimCardContact;
    move-object/from16 v0, v19

    move-object v1, v11

    iput-object v0, v1, Lcom/android/phone/SimContacts$SimCardContact;->name:Ljava/lang/String;

    .line 258
    move-object/from16 v0, v22

    move-object v1, v11

    iput-object v0, v1, Lcom/android/phone/SimContacts$SimCardContact;->number:Ljava/lang/String;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SimContacts;->simCardHash:Ljava/util/HashSet;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SimContacts;->adapter:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    invoke-virtual {v3, v11}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SimContacts;->simCardHash:Ljava/util/HashSet;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v11           #contact:Lcom/android/phone/SimContacts$SimCardContact;
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const/4 v14, 0x0

    .line 269
    .local v14, emailAddressArray:[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 270
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 271
    .local v15, emailAddresses:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 272
    const-string v3, ","

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 276
    .end local v15           #emailAddresses:Ljava/lang/String;
    :cond_2
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v21, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 280
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    const/16 v18, 0x0

    .line 281
    .local v18, myGroupsId:Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 282
    const-string v3, "account_name"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 283
    const-string v3, "account_type"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 286
    const-string v3, "com.google"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 287
    const/16 v25, 0x0

    .line 289
    .local v25, tmpCursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const-string v6, "title=? AND account_name=? AND account_type=?"

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "System Group: My Contacts"

    aput-object v8, v7, v3

    const/4 v3, 0x1

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v7, v3

    const/4 v3, 0x2

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 293
    if-eqz v25, :cond_3

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 299
    :cond_3
    if-eqz v25, :cond_4

    .line 300
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 307
    .end local v25           #tmpCursor:Landroid/database/Cursor;
    :cond_4
    :goto_1
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 310
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 311
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 312
    const-string v3, "data1"

    move-object v0, v10

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 313
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 316
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 317
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 318
    const-string v3, "data2"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 319
    const-string v3, "data1"

    move-object v0, v10

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 320
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 321
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    if-eqz v14, :cond_7

    .line 324
    move-object v9, v14

    .local v9, arr$:[Ljava/lang/String;
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    aget-object v13, v9, v16

    .line 325
    .local v13, emailAddress:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 326
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 327
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 328
    const-string v3, "data2"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 329
    const-string v3, "data1"

    invoke-virtual {v10, v3, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 330
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 296
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v13           #emailAddress:Ljava/lang/String;
    .end local v16           #i$:I
    .end local v17           #len$:I
    .restart local v25       #tmpCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 297
    .local v12, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "SimContacts"

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-eqz v25, :cond_4

    .line 300
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 299
    .end local v12           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    if-eqz v25, :cond_5

    .line 300
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 305
    .end local v25           #tmpCursor:Landroid/database/Cursor;
    :cond_6
    sget-object v3, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v10, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 334
    :cond_7
    if-eqz v18, :cond_8

    .line 335
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 336
    const-string v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 337
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 338
    const-string v3, "data1"

    move-object v0, v10

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 339
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_8
    :try_start_2
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 344
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 345
    .local v12, e:Landroid/os/RemoteException;
    const-string v3, "SimContacts"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v12}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 346
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    move-object v12, v3

    .line 347
    .local v12, e:Landroid/content/OperationApplicationException;
    const-string v3, "SimContacts"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private actuallyImportOneSimContactToDefaultAccounts()V
    .locals 7

    .prologue
    .line 236
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mAccounts:[Landroid/accounts/Account;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/SimContacts;->mAccounts:[Landroid/accounts/Account;

    array-length v4, v4

    if-nez v4, :cond_2

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 243
    :cond_1
    return-void

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SimContacts;->mAccounts:[Landroid/accounts/Account;

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 240
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private buildResultDialog()V
    .locals 4

    .prologue
    .line 805
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 806
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/phone/SimContacts;->adapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/SimContacts$7;

    invoke-direct {v3, p0}, Lcom/android/phone/SimContacts$7;-><init>(Lcom/android/phone/SimContacts;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SimContacts;->mResultDialog:Landroid/app/AlertDialog;

    .line 814
    return-void
.end method

.method private callOrSmsSimContact(II)V
    .locals 5
    .parameter "position"
    .parameter "menuIndex"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 499
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, number:Ljava/lang/String;
    const/4 v0, 0x0

    .line 502
    .local v0, intent:Landroid/content/Intent;
    if-ne p2, v3, :cond_1

    .line 503
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 512
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 516
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 505
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 506
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 514
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    const-string v2, "SimContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to move the cursor to the position \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteOneSimContact(IZ)V
    .locals 10
    .parameter "position"
    .parameter "reQuery"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v9, "SimContacts"

    .line 479
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 482
    .local v8, number:Ljava/lang/String;
    const-string v0, "tag=\'%s\' AND number=\'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v3

    aput-object v8, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, where:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 496
    .end local v4           #where:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 487
    .restart local v4       #where:Ljava/lang/String;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #number:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->resolveIntent()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 489
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "SimContacts"

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    .end local v4           #where:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :cond_1
    const-string v0, "SimContacts"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to move the cursor to the position \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteSimContact(IZ)V
    .locals 4
    .parameter "position"
    .parameter "reQuery"

    .prologue
    .line 467
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c01bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/SimContacts$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/phone/SimContacts$2;-><init>(Lcom/android/phone/SimContacts;IZ)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 476
    return-void
.end method

.method private editSimContact(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 384
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mName:Ljava/lang/String;

    .line 386
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mNumber:Ljava/lang/String;

    .line 388
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030019

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 390
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0700be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;

    .line 391
    const v3, 0x7f0700bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;

    .line 392
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 393
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/SimContacts;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/SimContacts;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const v3, 0x104000a

    iget-object v4, p0, Lcom/android/phone/SimContacts;->saveClickListener:Lcom/android/phone/SimContacts$SaveClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    const/high16 v3, 0x104

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    const v3, 0x7f0c01bd

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 400
    .local v1, dialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/phone/SimContacts$TextChangeListener;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/SimContacts$TextChangeListener;-><init>(Lcom/android/phone/SimContacts;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 401
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/phone/SimContacts$TextChangeListener;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/SimContacts$TextChangeListener;-><init>(Lcom/android/phone/SimContacts;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 402
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 407
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #view:Landroid/view/View;
    :goto_0
    return-void

    .line 405
    :cond_0
    const-string v3, "SimContacts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to move the cursor to the position \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultAccount(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 13
    .parameter "context"

    .prologue
    .line 777
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 778
    .local v3, am:Landroid/accounts/AccountManager;
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 779
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v10

    .line 780
    .local v10, syncs:[Landroid/content/SyncAdapterType;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v5, contactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v10

    .local v4, arr$:[Landroid/content/SyncAdapterType;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v9, v4, v7

    .line 783
    .local v9, sync:Landroid/content/SyncAdapterType;
    const-string v11, "com.android.contacts"

    iget-object v12, v9, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 784
    iget-object v11, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 788
    .end local v9           #sync:Landroid/content/SyncAdapterType;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v6, defaultAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v4, v1

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v8, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v0, v4, v7

    .line 790
    .local v0, account:Landroid/accounts/Account;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->isAccountDefault(Landroid/accounts/Account;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 791
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 795
    .end local v0           #account:Landroid/accounts/Account;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v2, v11, [Landroid/accounts/Account;

    .line 796
    .local v2, accs:[Landroid/accounts/Account;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method private importAllSimContacts()V
    .locals 4

    .prologue
    .line 738
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 739
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0162

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/SimContacts$6;

    invoke-direct {v3, p0}, Lcom/android/phone/SimContacts$6;-><init>(Lcom/android/phone/SimContacts;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 771
    return-void
.end method

.method private importOneSimContact(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContactToDefaultAccounts()V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    const-string v0, "SimContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move the cursor to the position \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertOneSimContact()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, ""

    .line 360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030019

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 362
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0700be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;

    .line 363
    const v3, 0x7f0700bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;

    .line 364
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 365
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const v3, 0x104000a

    iget-object v4, p0, Lcom/android/phone/SimContacts;->addClickListener:Lcom/android/phone/SimContacts$AddClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 368
    const/high16 v3, 0x104

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    const v3, 0x7f0c01bc

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 371
    .local v1, dialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mNameView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/phone/SimContacts$TextChangeListener;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/SimContacts$TextChangeListener;-><init>(Lcom/android/phone/SimContacts;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 372
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mNumberView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/phone/SimContacts$TextChangeListener;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/SimContacts$TextChangeListener;-><init>(Lcom/android/phone/SimContacts;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 373
    new-instance v3, Lcom/android/phone/SimContacts$1;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/SimContacts$1;-><init>(Lcom/android/phone/SimContacts;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 380
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 381
    return-void
.end method

.method private static queryNameWithPhoneNumber(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 9
    .parameter "phoneNumber"
    .parameter "resolver"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    const-string v0, "display_name"

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 232
    :goto_0
    return-object v0

    .line 204
    :cond_0
    const/4 v8, 0x0

    .line 205
    .local v8, tmpCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 207
    .local v7, name:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 208
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_WITH_ACCOUNT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const-string v3, "account_name=? AND account_type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 222
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 228
    :cond_1
    if-eqz v8, :cond_2

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    move-object v0, v7

    .line 232
    goto :goto_0

    .line 215
    :cond_3
    :try_start_1
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_WITH_ACCOUNT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const-string v3, "account_name IS NULL AND account_type IS NULL "

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_1

    .line 225
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 226
    .local v6, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v0, "SimContacts"

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    if-eqz v8, :cond_2

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 228
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 546
    new-instance v0, Lcom/android/phone/ADNList$SimAdapter;

    const v2, 0x7f03001a

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "number"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/ADNList$SimAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 721
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 735
    :goto_0
    :pswitch_0
    return-void

    .line 723
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/SimContacts;->importAllSimContacts()V

    goto :goto_0

    .line 726
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    goto :goto_0

    .line 729
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/SimContacts;->insertOneSimContact()V

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x7f07001b
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 522
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 523
    invoke-static {p0}, Lcom/android/phone/SimContacts;->getDefaultAccount(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimContacts;->mAccounts:[Landroid/accounts/Account;

    .line 524
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 525
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    new-instance v0, Lcom/android/phone/SimContacts$3;

    const v1, 0x7f03001a

    invoke-direct {v0, p0, p0, v1}, Lcom/android/phone/SimContacts$3;-><init>(Lcom/android/phone/SimContacts;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/SimContacts;->adapter:Landroid/widget/ArrayAdapter;

    .line 542
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 608
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 610
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 611
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 612
    const v1, 0x7f0700ce

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/ADNList;->mIsViewSimContacts:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 613
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 564
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 566
    .local v2, nameView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 567
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 570
    :cond_0
    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0c0161

    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const v3, 0x7f0c01c1

    invoke-virtual {p0, v3}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const v4, 0x7f0c01c2

    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const v4, 0x7f0c01c0

    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const v4, 0x7f0c01ba

    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 577
    .local v1, items:[Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/phone/SimContacts$4;

    invoke-direct {v3, p0, p3}, Lcom/android/phone/SimContacts$4;-><init>(Lcom/android/phone/SimContacts;I)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 604
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 697
    packed-switch p1, :pswitch_data_0

    .line 716
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/ADNList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 699
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, phoneNumber:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v5

    .line 704
    goto :goto_0

    .line 706
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 708
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 710
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 711
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    move v2, v5

    .line 712
    goto :goto_0

    .line 697
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 619
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 642
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 621
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/SimContacts;->insertOneSimContact()V

    goto :goto_0

    .line 624
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/SimContacts;->importAllSimContacts()V

    goto :goto_0

    .line 627
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 628
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c01c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/SimContacts$5;

    invoke-direct {v3, p0}, Lcom/android/phone/SimContacts$5;-><init>(Lcom/android/phone/SimContacts;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700cd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-super {p0}, Lcom/android/phone/ADNList;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 184
    iput-object v1, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mResultDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 188
    iput-object v1, p0, Lcom/android/phone/SimContacts;->mResultDialog:Landroid/app/AlertDialog;

    .line 190
    :cond_1
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 554
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 555
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 559
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

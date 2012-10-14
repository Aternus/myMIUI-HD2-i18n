.class public Lcom/android/contacts/model/vcard/VCardEntry$NameData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameData"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field private mFamily:Ljava/lang/String;

.field private mFormatted:Ljava/lang/String;

.field private mGiven:Ljava/lang/String;

.field private mMiddle:Ljava/lang/String;

.field private mPhoneticFamily:Ljava/lang/String;

.field private mPhoneticGiven:Ljava/lang/String;

.field private mPhoneticMiddle:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mSortString:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/contacts/model/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/model/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const-string v4, "data7"

    .line 167
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 169
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 170
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 172
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const-string v2, "data2"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    const-string v2, "data3"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 179
    const-string v2, "data5"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 182
    const-string v2, "data4"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 185
    const-string v2, "data6"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 188
    :cond_4
    const/4 v1, 0x0

    .line 190
    .local v1, phoneticNameSpecified:Z
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 191
    const-string v2, "data7"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 192
    const/4 v1, 0x1

    .line 194
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 195
    const-string v2, "data9"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 196
    const/4 v1, 0x1

    .line 198
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 199
    const-string v2, "data8"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 200
    const/4 v1, 0x1

    .line 205
    :cond_7
    if-nez v1, :cond_8

    .line 206
    const-string v2, "data7"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 209
    :cond_8
    const-string v2, "data1"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public emptyPhoneticStructuredName()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public emptyStructuredName()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 232
    :goto_0
    return v2

    .line 227
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    if-nez v2, :cond_1

    move v2, v4

    .line 228
    goto :goto_0

    .line 230
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;

    move-object v1, v0

    .line 232
    .local v1, nameData:Lcom/android/contacts/model/vcard/VCardEntry$NameData;
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 246
    const/16 v6, 0xa

    new-array v3, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    aput-object v6, v3, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    aput-object v7, v3, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    aput-object v7, v3, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    aput-object v7, v3, v6

    .line 249
    .local v3, hashTargets:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 250
    .local v1, hash:I
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 251
    .local v2, hashTarget:Ljava/lang/String;
    mul-int/lit8 v6, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    :goto_1
    add-int v1, v6, v7

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v7, v8

    .line 251
    goto :goto_1

    .line 253
    .end local v2           #hashTarget:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    const-string v0, "family: %s, given: %s, middle: %s, prefix: %s, suffix: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

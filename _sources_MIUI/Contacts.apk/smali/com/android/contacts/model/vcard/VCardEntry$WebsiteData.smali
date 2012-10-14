.class public Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;
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
    name = "WebsiteData"
.end annotation


# instance fields
.field private final mWebsite:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "website"

    .prologue
    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1183
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    .line 1184
    return-void
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
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
    .line 1189
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1191
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1192
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1193
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1196
    const-string v1, "data2"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1197
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 1207
    if-ne p0, p1, :cond_0

    .line 1208
    const/4 v2, 0x1

    .line 1214
    :goto_0
    return v2

    .line 1210
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;

    if-nez v2, :cond_1

    .line 1211
    const/4 v2, 0x0

    goto :goto_0

    .line 1213
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;

    move-object v1, v0

    .line 1214
    .local v1, websiteData:Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method public getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1229
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "website: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$WebsiteData;->mWebsite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

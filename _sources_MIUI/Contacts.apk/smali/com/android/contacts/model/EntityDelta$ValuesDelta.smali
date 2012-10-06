.class public Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/EntityDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValuesDelta"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field protected static sNextInsertId:I


# instance fields
.field protected mAfter:Landroid/content/ContentValues;

.field protected mBefore:Landroid/content/ContentValues;

.field private mCreationTime:J

.field private mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mFromTemplate:Z

.field protected mIdColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->sNextInsertId:I

    .line 932
    new-instance v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const-string v0, "_id"

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 556
    return-void
.end method

.method private ensureUpdate()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 737
    :cond_0
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 5
    .parameter "after"

    .prologue
    .line 590
    new-instance v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 591
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 592
    iput-object p0, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 595
    iget-object v1, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    sget v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->sNextInsertId:I

    const/4 v4, 0x1

    sub-int v4, v3, v4

    sput v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->sNextInsertId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 2
    .parameter "before"

    .prologue
    .line 579
    new-instance v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 580
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iput-object p0, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 581
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 582
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 819
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 832
    :goto_0
    return-object v0

    .line 822
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .end local p0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 824
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 826
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    :goto_1
    move-object v0, p0

    .line 832
    goto :goto_0

    .line 829
    :cond_3
    iget-object v0, p1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_1
.end method


# virtual methods
.method public beforeExists()Z
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .parameter "targetUri"

    .prologue
    const/4 v3, 0x0

    const-string v4, "="

    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 897
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 898
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 909
    :cond_0
    :goto_0
    return-object v0

    .line 899
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 903
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 907
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 837
    instance-of v2, p1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v2, :cond_1

    .line 839
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-object v1, v0

    .line 840
    .local v1, other:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->subsetEquals(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->subsetEquals(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 842
    .end local v1           #other:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_0
    return v2

    .restart local v1       #other:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    move v2, v3

    .line 840
    goto :goto_0

    .end local v1           #other:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_1
    move v2, v3

    .line 842
    goto :goto_0
.end method

.method public getAfter()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .parameter "key"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 623
    :goto_0
    return-object v0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 623
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "key"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 633
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 613
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBefore()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getCompleteValues()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 797
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 798
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 804
    :cond_1
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 806
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 809
    :cond_2
    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 571
    iget-wide v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mCreationTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    const-string v0, "mimetype"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromTemplate()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mFromTemplate:Z

    return v0
.end method

.method public isInsert()Z
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoop()Z
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 672
    const-string v1, "is_primary"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 673
    .local v0, isPrimary:Ljava/lang/Long;
    if-nez v0, :cond_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_0
.end method

.method public isSuperPrimary()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 685
    const-string v1, "is_super_primary"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 686
    .local v0, isSuperPrimary:Ljava/lang/Long;
    if-nez v0, :cond_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 777
    .local v2, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 778
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 779
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 783
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v3, :cond_1

    .line 784
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 785
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 789
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public linkDuplicated(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-nez v0, :cond_1

    .line 560
    iput-object p1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eq v0, p1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->linkDuplicated(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    goto :goto_0
.end method

.method public markDeleted()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 727
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 728
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 759
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 760
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 744
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mDupLink:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 751
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 752
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 753
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 926
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 927
    .local v0, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 928
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 930
    return-void
.end method

.method public setCreationTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 567
    iput-wide p1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mCreationTime:J

    .line 568
    return-void
.end method

.method public setFromTemplate(Z)V
    .locals 0
    .parameter "isFromTemplate"

    .prologue
    .line 677
    iput-boolean p1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mFromTemplate:Z

    .line 678
    return-void
.end method

.method public setIdColumn(Ljava/lang/String;)V
    .locals 0
    .parameter "idColumn"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 669
    return-void
.end method

.method public subsetEquals(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v5, 0x0

    .line 872
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 873
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, ourValue:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 875
    .local v3, theirValue:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 877
    if-eqz v3, :cond_0

    move v4, v5

    .line 884
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #ourValue:Ljava/lang/String;
    .end local v3           #theirValue:Ljava/lang/String;
    :goto_0
    return v4

    .line 880
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #ourValue:Ljava/lang/String;
    .restart local v3       #theirValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    .line 884
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #ourValue:Ljava/lang/String;
    .end local v3           #theirValue:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    .line 849
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 857
    const-string v2, "{ "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 859
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 864
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 921
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 922
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    return-void
.end method

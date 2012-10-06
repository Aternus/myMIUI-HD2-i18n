.class Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;
.super Ljava/lang/Object;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactInfo"
.end annotation


# static fields
.field private static final CONTACT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final SP_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mIsSP:Z

.field private mName:Ljava/lang/String;

.field private mPersonId:J

.field private mPhotoId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1714
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "photo_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->CONTACT_INFO_PROJECTION:[Ljava/lang/String;

    .line 1720
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->SP_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mAddress:Ljava/lang/String;

    .line 1732
    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mIsSP:Z

    .line 1733
    iput v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPhotoId:I

    .line 1734
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPersonId:J

    .line 1735
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mName:Ljava/lang/String;

    .line 1736
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1707
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1707
    iget v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPhotoId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1707
    iput p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPhotoId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1707
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mIsSP:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1707
    iput-boolean p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mIsSP:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1707
    iget-wide v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPersonId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1707
    iput-wide p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPersonId:J

    return-wide p1
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1707
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->CONTACT_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1707
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->SP_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isSPContact()Z
    .locals 1

    .prologue
    .line 1739
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mIsSP:Z

    return v0
.end method

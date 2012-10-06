.class public Lcom/android/mms/data/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache;,
        Lcom/android/mms/data/Contact$UpdateListener;
    }
.end annotation


# static fields
.field private static final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Contact$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

.field private static sContactPhotoLoader:Lcom/android/mms/data/ContactPhotoLoader;

.field private static final sPresenceObserver:Landroid/database/ContentObserver;


# instance fields
.field private mCompareKey:Ljava/lang/String;

.field private mEffectiveNumber:Ljava/lang/String;

.field private mIsSpNumber:Z

.field private mIsStale:Z

.field private mLabel:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameAndNumber:Ljava/lang/String;

.field private mNick:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberIsModified:Z

.field private mPersonId:J

.field private mPhotoId:J

.field private mPresenceResId:I

.field private mPresenceText:Ljava/lang/String;

.field private mQueryPending:Z

.field private mRecipientId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/mms/data/Contact$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sPresenceObserver:Landroid/database/ContentObserver;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v2, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v2, p0, Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 90
    iput-boolean v1, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 91
    const-string v0, ""

    iput-object v2, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 92
    iput-wide v3, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 93
    iput-wide v3, p0, Lcom/android/mms/data/Contact;->mPhotoId:J

    .line 94
    iput v1, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/mms/data/Contact;->mIsSpNumber:Z

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/data/Contact;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/mms/data/Contact;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/mms/data/Contact;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/mms/data/Contact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/data/Contact;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPhotoId:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/mms/data/Contact;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mPhotoId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsSpNumber:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/data/Contact;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mIsSpNumber:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    return-void
.end method

.method static synthetic access$1900()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/data/Contact;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/data/Contact;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object p1
.end method

.method public static addListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 291
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 292
    :try_start_0
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static cancelRequest(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 345
    sget-object v0, Lcom/android/mms/data/Contact;->sContactPhotoLoader:Lcom/android/mms/data/ContactPhotoLoader;

    invoke-virtual {v0, p0}, Lcom/android/mms/data/ContactPhotoLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 346
    return-void
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 162
    if-eqz p0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "number"

    .prologue
    .line 170
    move-object v0, p1

    .line 171
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 1
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 142
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0, p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 325
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;Lcom/android/mms/data/Contact$1;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    .line 326
    new-instance v0, Lcom/android/mms/data/ContactPhotoLoader;

    const v1, 0x10803b6

    const v2, 0x10803bb

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/data/ContactPhotoLoader;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/android/mms/data/Contact;->sContactPhotoLoader:Lcom/android/mms/data/ContactPhotoLoader;

    .line 328
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->init(Landroid/content/Context;)V

    .line 338
    return-void
.end method

.method public static invalidateCache()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "invalidateCache"

    invoke-static {v0}, Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V

    .line 157
    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->invalidate()V

    .line 158
    sget-object v0, Lcom/android/mms/data/Contact;->sContactPhotoLoader:Lcom/android/mms/data/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactPhotoLoader;->clear()V

    .line 159
    return-void
.end method

.method public static loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V
    .locals 1
    .parameter "view"
    .parameter "contact"

    .prologue
    .line 349
    sget-object v0, Lcom/android/mms/data/Contact;->sContactPhotoLoader:Lcom/android/mms/data/ContactPhotoLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/mms/data/ContactPhotoLoader;->loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V

    .line 350
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 881
    const-string v0, "Contact"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-void
.end method

.method private notSynchronizedUpdateNameAndNumber()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public static pauseCaching()V
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/android/mms/data/Contact;->sContactPhotoLoader:Lcom/android/mms/data/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactPhotoLoader;->pause()V

    .line 358
    return-void
.end method

.method public static removeAllListener()V
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 304
    :try_start_0
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 305
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 297
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 298
    :try_start_0
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resumeCaching()V
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/android/mms/data/Contact;->sContactPhotoLoader:Lcom/android/mms/data/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactPhotoLoader;->resume()V

    .line 362
    return-void
.end method

.method public static stopCaching()V
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/android/mms/data/Contact;->sContactPhotoLoader:Lcom/android/mms/data/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactPhotoLoader;->stop()V

    .line 354
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 887
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/Contact;

    move-object v2, v0

    .line 888
    .local v2, other:Lcom/android/mms/data/Contact;
    iget-object v3, p0, Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 890
    .end local v2           #other:Lcom/android/mms/data/Contact;
    :goto_0
    return v3

    .line 889
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 890
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized existsInDatabase()Z
    .locals 4

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCompareKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNameAndNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPersonId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPhotoId:J

    return-wide v0
.end method

.method public declared-synchronized getPresenceResId()I
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipientId()J
    .locals 2

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isEmail()Z
    .locals 1

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNumberModified()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    return v0
.end method

.method public declared-synchronized isSPNumber()Z
    .locals 1

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload(Z)V
    .locals 2
    .parameter "canBlock"

    .prologue
    .line 183
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 184
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEffectiveNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "effectiveNumber"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setIsNumberModified(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 212
    return-void
.end method

.method public declared-synchronized setNickname(Ljava/lang/String;)V
    .locals 1
    .parameter "nickname"

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;

    .line 196
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 197
    .local v0, pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 192
    .end local v0           #pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRecipientId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "null"

    .line 109
    const-string v0, "{ number=%s, name=%s, nickname=%s, nameAndNumber=%s, label=%s, person_id=%d, hash=%d }"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;

    :goto_2
    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    :goto_3
    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    :goto_4
    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "null"

    move-object v3, v4

    goto :goto_0

    :cond_1
    const-string v3, "null"

    move-object v3, v4

    goto :goto_1

    :cond_2
    const-string v3, "null"

    move-object v3, v4

    goto :goto_2

    :cond_3
    const-string v3, "null"

    move-object v3, v4

    goto :goto_3

    :cond_4
    const-string v3, "null"

    move-object v3, v4

    goto :goto_4
.end method

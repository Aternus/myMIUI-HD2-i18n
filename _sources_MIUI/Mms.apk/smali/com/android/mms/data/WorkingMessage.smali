.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$SendMessageTask;,
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

.field private static final SMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static sMmsEnabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDiscarded:Z

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private mTimeToSend:J

.field private mWorkingRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "_id"

    .line 131
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 146
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v2, v0, v3

    const-string v1, "m_size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    .line 1355
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v2, v0, v3

    const-string v1, "sub"

    aput-object v1, v0, v4

    const-string v1, "sub_cs"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "timed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 1488
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "timed"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    .line 201
    invoke-interface {p1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->getHostedActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 202
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 203
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 204
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->markMmsMessageWithError(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/WorkingMessage;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/data/WorkingMessage;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/data/WorkingMessage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z
    .locals 9
    .parameter "conv"
    .parameter "text"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1092
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1093
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, dests:[Ljava/lang/String;
    array-length v2, v0

    .line 1095
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1096
    aget-object v5, v0, v1

    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v0, v1

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1097
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1098
    .local v3, mtext:Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .line 1099
    .local v4, params:[I
    aget v5, v4, v8

    if-le v5, v7, :cond_1

    .line 1100
    invoke-direct {p0, v7, v7, v7}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1101
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1102
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    move v5, v7

    .line 1108
    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mtext:Ljava/lang/String;
    .end local v4           #params:[I
    :goto_1
    return v5

    .line 1095
    .restart local v0       #dests:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2
    move v5, v8

    .line 1108
    goto :goto_1
.end method

.method private appendMedia(ILandroid/net/Uri;)V
    .locals 9
    .parameter "type"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 551
    if-nez p1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const/4 v0, 0x1

    .line 561
    .local v0, addNewSlide:Z
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_2

    .line 563
    const/4 v0, 0x0

    .line 565
    :cond_2
    if-eqz v0, :cond_3

    .line 566
    new-instance v3, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 567
    .local v3, slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 573
    .end local v3           #slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 574
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-ne p1, v6, :cond_5

    .line 575
    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v4, p2, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 585
    .local v1, media:Lcom/android/mms/model/MediaModel;
    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 589
    if-eq p1, v7, :cond_4

    if-ne p1, v8, :cond_0

    .line 590
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    goto :goto_0

    .line 576
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    if-ne p1, v7, :cond_6

    .line 577
    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v4, p2, v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 578
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    if-ne p1, v8, :cond_7

    .line 579
    new-instance v1, Lcom/android/mms/model/AudioModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 581
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeMedia type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1593
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    const-string v0, "asyncDelete %s where %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1596
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1601
    return-void
.end method

.method private asyncDeleteDraftMmsMessage(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 1618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1619
    .local v0, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1620
    return-void
.end method

.method private asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter

    .prologue
    .line 1604
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1605
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1606
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type=3"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1609
    :cond_0
    return-void
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 6
    .parameter "conv"

    .prologue
    const/4 v3, 0x2

    .line 1440
    const-string v2, "Mms:app"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1441
    const-string v2, "asyncUpdateDraftMmsMessage conv=%s mMessageUri=%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1444
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1445
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 1447
    .local v1, sendReq:Lcom/google/android/mms/pdu/SendReq;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/data/WorkingMessage$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1462
    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 2
    .parameter "conv"
    .parameter "contents"

    .prologue
    .line 1558
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1565
    return-void
.end method

.method private changeMedia(ILandroid/net/Uri;)V
    .locals 6
    .parameter "type"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 506
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 509
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-nez v1, :cond_1

    .line 510
    const-string v2, "Mms"

    const-string v3, "changeMedia: no slides!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 516
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 517
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 520
    if-eqz p1, :cond_0

    .line 525
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 526
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v0, v2, p2, v3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 536
    .local v0, media:Lcom/android/mms/model/MediaModel;
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 540
    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_0

    .line 541
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    goto :goto_0

    .line 527
    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    :cond_3
    if-ne p1, v4, :cond_4

    .line 528
    new-instance v0, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v0, v2, p2, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 529
    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 530
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 532
    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeMedia type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private clearConversation(Lcom/android/mms/data/Conversation;)V
    .locals 1
    .parameter "conv"

    .prologue
    .line 1547
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1549
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1551
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1554
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1555
    return-void
.end method

.method private correctAttachmentState(Z)V
    .locals 7
    .parameter "notify"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 245
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 249
    .local v1, slideCount:I
    if-nez v1, :cond_1

    .line 250
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 251
    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 252
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v2, v3, v3}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 271
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    invoke-direct {p0, v4, v2, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 272
    return-void

    .line 256
    :cond_1
    if-le v1, v6, :cond_2

    .line 257
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 260
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    iput v6, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 264
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 265
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 266
    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 4
    .parameter "persister"
    .parameter "sendReq"
    .parameter "slideshow"

    .prologue
    .line 1429
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1430
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1431
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 1432
    .local v2, res:Landroid/net/Uri;
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1435
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #res:Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 1434
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1435
    .local v0, e:Lcom/google/android/mms/MmsException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .parameter "listener"

    .prologue
    .line 213
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 214
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5
    .parameter

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1615
    return-void
.end method

.method private dumpWorkingRecipients()V
    .locals 5

    .prologue
    const-string v4, "WorkingMessage"

    .line 913
    const-string v2, "WorkingMessage"

    const-string v2, "-- mWorkingRecipients:"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 916
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 917
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 918
    const-string v2, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    :cond_0
    const-string v2, "WorkingMessage"

    const-string v2, ""

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private ensureSlideshow()V
    .locals 3

    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 499
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 495
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 496
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 498
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 8
    .parameter "listener"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    invoke-interface {p0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->getHostedActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 225
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    const-string v3, "load: moving %s to drafts"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_0
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 236
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_1
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 237
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v1, p1}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 241
    .end local v1           #msg:Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-object v3

    .line 230
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 231
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Can\'t move %s to drafts"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v7

    .line 232
    goto :goto_0

    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v1       #msg:Lcom/android/mms/data/WorkingMessage;
    :cond_2
    move-object v3, v7

    .line 241
    goto :goto_0
.end method

.method public static loadDraft(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;
    .locals 2
    .parameter "listener"
    .parameter "conv"

    .prologue
    .line 298
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 299
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v0, p1}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 302
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private loadFromConversation(Lcom/android/mms/data/Conversation;)Z
    .locals 8
    .parameter "conv"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 307
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "loadFromConversation %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 310
    .local v1, threadId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1

    move v4, v6

    .line 335
    :goto_0
    return v4

    .line 315
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 316
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v7

    .line 317
    goto :goto_0

    .line 321
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v4, v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v3

    .line 323
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_4

    .line 324
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 330
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->calcLengthRequiresMms()Z

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    move v4, v7

    .line 331
    goto :goto_0

    :cond_4
    move v4, v6

    .line 335
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "loadFromUri %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 286
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 287
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v1, v4

    .line 289
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Couldn\'t load URI %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 280
    goto :goto_0
.end method

.method private static makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 7
    .parameter "conv"
    .parameter "subject"

    .prologue
    .line 1409
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    .line 1411
    .local v0, dests:[Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1412
    .local v2, req:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 1413
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 1414
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1417
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1418
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1421
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 1423
    return-object v2
.end method

.method private markMmsMessageWithError(Landroid/net/Uri;)V
    .locals 10
    .parameter "mmsUri"

    .prologue
    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    .line 1337
    .local v9, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v0, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, p1, v0}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1340
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1341
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1342
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1343
    .local v7, msgId:J
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v7           #msgId:J
    .end local v9           #p:Lcom/google/android/mms/pdu/PduPersister;
    :goto_0
    return-void

    .line 1346
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1349
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move message to outbox and mark as error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private prepareForSave(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 703
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 705
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 706
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 708
    :cond_0
    return-void
.end method

.method private readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "threadId"
    .parameter "sb"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1370
    const-string v0, "Mms:app"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    const-string v0, "readDraftMmsMessage tid=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1374
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1376
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1377
    .local v4, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1381
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1383
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1384
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1386
    .local v9, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-static {v7, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v8

    .line 1388
    .local v8, subject:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_1

    .line 1389
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    .line 1391
    :cond_1
    if-eqz v8, :cond_2

    .line 1392
    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 1401
    .end local v8           #subject:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 1397
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v5

    .line 1401
    goto :goto_0

    .line 1397
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1502
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1503
    const-string v2, "Mms:app"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1504
    const-string v2, "readDraftSmsMessage tid=%d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1507
    :cond_0
    cmp-long v2, v0, v9

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1508
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 1544
    :cond_2
    :goto_0
    return-void

    .line 1512
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1513
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 1515
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v4, "type=3"

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1518
    if-eqz v0, :cond_6

    .line 1520
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1521
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 1522
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-lez v1, :cond_4

    .line 1523
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move v1, v8

    .line 1530
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 1537
    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1542
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;)V

    goto :goto_0

    .line 1525
    :cond_4
    const-wide/16 v1, 0x0

    :try_start_1
    iput-wide v1, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1530
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    move v1, v7

    goto :goto_2

    :cond_6
    move v0, v7

    goto :goto_3
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 692
    :cond_0
    return-void
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 976
    if-nez p0, :cond_0

    .line 977
    const-string v1, "<none>"

    .line 992
    :goto_0
    return-object v1

    .line 979
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v0, sb:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 981
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 983
    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 985
    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 987
    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 989
    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncTextFromSlideshow()V
    .locals 3

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 678
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private syncTextToSlideshow()V
    .locals 6

    .prologue
    .line 650
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 655
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-nez v2, :cond_2

    .line 657
    new-instance v1, Lcom/android/mms/model/TextModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const-string v3, "text/plain"

    const-string v4, "text_0.txt"

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 659
    .local v1, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 664
    :goto_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 662
    .end local v1           #text:Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .restart local v1       #text:Lcom/android/mms/model/TextModel;
    goto :goto_1
.end method

.method private updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v3, "WorkingMessage"

    .line 1466
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    const-string v0, "updateDraftMmsMessage uri=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1469
    :cond_0
    if-nez p1, :cond_1

    .line 1470
    const-string v0, "WorkingMessage"

    const-string v0, "updateDraftMmsMessage null uri"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :goto_0
    return-void

    .line 1473
    :cond_1
    invoke-virtual {p2, p1, p4}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1474
    invoke-virtual {p3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 1477
    :try_start_0
    invoke-virtual {p2, p1, v6}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->setMmsSendTime(Landroid/content/Context;Landroid/net/Uri;JJ)V

    .line 1483
    invoke-virtual {p3, v6}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    .line 1478
    :catch_0
    move-exception v0

    .line 1479
    const-string v0, "WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateDraftSmsMessage(JLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x0

    const-string v7, "date"

    .line 1568
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1569
    const-string v0, "updateDraftSmsMessage tid=%d, contents=\"%s\""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1573
    :cond_0
    cmp-long v0, p1, v5

    if-gtz v0, :cond_1

    .line 1590
    :goto_0
    return-void

    .line 1577
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1578
    const-string v1, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1579
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string v1, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1581
    iget-wide v1, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    .line 1582
    const-string v1, "timed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1583
    const-string v1, "date"

    iget-wide v1, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1588
    :goto_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1589
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    goto :goto_0

    .line 1585
    :cond_2
    const-string v1, "timed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1586
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method private updateState(IZZ)V
    .locals 7
    .parameter "state"
    .parameter "on"
    .parameter "notify"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1003
    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v1, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1010
    .local v0, oldState:I
    if-eqz p2, :cond_4

    .line 1011
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1018
    :goto_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    and-int/lit8 v1, v0, -0x11

    if-lez v1, :cond_2

    .line 1019
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1024
    :cond_2
    if-eqz p3, :cond_3

    .line 1025
    if-nez v0, :cond_5

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v1, :cond_5

    .line 1026
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    .line 1032
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v0, v1, :cond_0

    .line 1033
    const-string v1, "Mms:app"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "updateState: %s%s = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_6

    const-string v3, "+"

    :goto_3
    aput-object v3, v2, v4

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1013
    :cond_4
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_1

    .line 1027
    :cond_5
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_3

    .line 1028
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_2

    .line 1033
    :cond_6
    const-string v3, "-"

    goto :goto_3
.end method


# virtual methods
.method public calcLengthRequiresMms()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUnlimitedMultipartSmsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v1

    .line 432
    .local v1, params:[I
    aget v0, v1, v3

    .line 434
    .local v0, msgCount:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 435
    const/4 v2, 0x1

    .line 439
    .end local v0           #msgCount:I
    .end local v1           #params:[I
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public declared-synchronized discard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 830
    monitor-enter p0

    :try_start_0
    const-string v0, "discard"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 846
    :goto_0
    monitor-exit p0

    return-void

    .line 838
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 841
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeToSend()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    return-wide v0
.end method

.method public getWorkingRecipients()Ljava/lang/String;
    .locals 3

    .prologue
    .line 734
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-nez v1, :cond_0

    .line 735
    const/4 v1, 0x0

    .line 738
    :goto_0
    return-object v1

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 738
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSlideshow()Z
    .locals 2

    .prologue
    .line 613
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorthSaving(Ljava/lang/String;)Z
    .locals 2
    .parameter "signature"

    .prologue
    const/4 v1, 0x1

    .line 455
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 473
    :goto_0
    return v0

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 463
    goto :goto_0

    .line 469
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 470
    goto :goto_0

    .line 473
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAttachment(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 1623
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v0, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1627
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 1628
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->clear()V

    .line 1629
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 1630
    if-eqz p1, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    goto :goto_0
.end method

.method public removeFakeMmsForDraft()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 745
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 746
    return-void
.end method

.method public requiresMms()Z
    .locals 1

    .prologue
    .line 960
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 4
    .parameter "notify"

    .prologue
    const/4 v3, 0x1

    .line 755
    iget-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v2, :cond_0

    .line 756
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "save() called after discard()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 763
    :cond_0
    const/16 v2, 0x10

    invoke-direct {p0, v2, v3, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 766
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 769
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 770
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 772
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 773
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 777
    .local v1, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 778
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 783
    :goto_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v2

    .line 780
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_0
.end method

.method public saveDraft()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 792
    iget-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v1, :cond_0

    .line 826
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_1

    .line 798
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "saveDraft() called with no conversation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    :cond_1
    const-string v1, "saveDraft for mConversation %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 808
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 809
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 825
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    goto :goto_0

    .line 811
    :cond_3
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 820
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public send(Ljava/lang/String;)V
    .locals 8
    .parameter "recipientsInUI"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "WorkingMessage"

    .line 1045
    const-string v3, "Mms:transaction"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    const-string v3, "send"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    :cond_0
    const-string v3, "WorkingMessage"

    const-string v3, "##### send #####"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const-string v3, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   mConversation (beginning of send): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v3, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   recipientsInUI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-direct {p0, v7}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1061
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    .line 1062
    .local v2, newRecipients:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send() after newRecipients changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1066
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->dumpWorkingRecipients()V

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1076
    .local v0, conv:Lcom/android/mms/data/Conversation;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, msgTxt:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1079
    :cond_2
    new-instance v3, Lcom/android/mms/data/WorkingMessage$SendMessageTask;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1085
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 1088
    iput-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1089
    return-void

    .line 1081
    :cond_3
    new-instance v3, Lcom/android/mms/data/WorkingMessage$SendMessageTask;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v0, v4, p1}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setAttachment(ILandroid/net/Uri;Z)I
    .locals 8
    .parameter "type"
    .parameter "dataUri"
    .parameter "append"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 370
    const-string v3, "Mms:app"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    const-string v3, "setAttachment type=%d uri %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p2, v4, v6

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :cond_0
    const/4 v1, 0x0

    .line 376
    .local v1, result:I
    if-nez p3, :cond_1

    .line 377
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 386
    if-eqz p3, :cond_3

    .line 387
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->appendMedia(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3

    .line 403
    :goto_0
    if-nez v1, :cond_4

    .line 404
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 405
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 413
    :cond_2
    :goto_1
    if-nez p3, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->calcLengthRequiresMms()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 414
    invoke-virtual {p0, v6, v7}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    .line 418
    :goto_2
    invoke-direct {p0, v7}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 419
    return v1

    .line 389
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->changeMedia(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 391
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 392
    .local v0, e:Lcom/google/android/mms/MmsException;
    const/4 v1, -0x1

    .line 399
    goto :goto_0

    .line 393
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 394
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const/4 v1, -0x3

    .line 399
    goto :goto_0

    .line 395
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 396
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v1, -0x2

    .line 399
    goto :goto_0

    .line 397
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 398
    .local v0, e:Lcom/android/mms/ResolutionException;
    const/4 v1, -0x4

    goto :goto_0

    .line 406
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    :cond_4
    if-eqz p3, :cond_2

    .line 409
    new-instance v2, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 410
    .local v2, slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto :goto_1

    .line 416
    .end local v2           #slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_5
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    invoke-direct {p0, v3, v4, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_2
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 2
    .parameter "conv"

    .prologue
    .line 938
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 941
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 942
    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 2
    .parameter "hasEmail"
    .parameter "notify"

    .prologue
    const/4 v1, 0x1

    .line 949
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 950
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 954
    :goto_0
    return-void

    .line 952
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setLengthRequiresMms(ZZ)V
    .locals 1
    .parameter "mmsRequired"
    .parameter "notify"

    .prologue
    .line 972
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 973
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "s"
    .parameter "notify"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 626
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 627
    return-void

    .line 626
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 343
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->calcLengthRequiresMms()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    .line 344
    return-void
.end method

.method public setTimeToSend(J)V
    .locals 0
    .parameter "timeToSend"

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    .line 143
    return-void
.end method

.method public setWorkingRecipients(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 908
    .local p1, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 909
    const-string v0, "WorkingMessage"

    const-string v1, "setWorkingRecipients"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method public syncWorkingRecipients()V
    .locals 5

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 715
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 718
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 724
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 726
    .end local v0           #recipients:Lcom/android/mms/data/ContactList;
    :cond_2
    return-void
.end method

.method public unDiscard()V
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 852
    return-void
.end method

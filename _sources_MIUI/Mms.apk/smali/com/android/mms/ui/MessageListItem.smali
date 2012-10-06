.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/EditableListItem;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$Style;,
        Lcom/android/mms/ui/MessageListItem$UriInfo;
    }
.end annotation


# instance fields
.field private mAttachmentAudio:Landroid/widget/ImageView;

.field private mAttachmentCard:Landroid/widget/ImageView;

.field private mAttachmentDefault:Landroid/widget/ImageView;

.field private mAttachmentPadding:Landroid/view/View;

.field private mAttachmentPic:Landroid/widget/ImageView;

.field private mAttachmentPin:Landroid/widget/ImageView;

.field private mAttachmentVideo:Landroid/widget/ImageView;

.field private mBodyLinearLayout:Landroid/widget/LinearLayout;

.field private mBodySendToTextView:Landroid/widget/TextView;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mBubbleBodyTextMaxWidth:I

.field private mBubbleMmsTextMaxSize:I

.field mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mDeliverStatus:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mEditMode:Z

.field private mFavouriteMark:Landroid/widget/ImageView;

.field private mGroupSendCancelButton:Landroid/widget/Button;

.field private mGroupSendFailedButton:Landroid/widget/Button;

.field private mGroupSendFailedRoot:Landroid/view/View;

.field private mGroupSendFailedTitle:Landroid/widget/TextView;

.field private mGroupSendIcon:Landroid/widget/ImageView;

.field private mGroupSendToCountTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mMaxAttachmentPicWidth:I

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMessageItemLayout:Landroid/view/View;

.field private mMessageItemView:Landroid/view/View;

.field private mMmsPaddingHeight:I

.field private mResentButton:Landroid/widget/Button;

.field mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

.field private mTimedMsgIndicator:Landroid/widget/Button;

.field private mTimedMsgPadding:Landroid/view/View;

.field private mTitlePanel:Landroid/view/View;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 781
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x1030046

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 784
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 161
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 162
    .local v0, color:I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 163
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsPaddingHeight:I

    .line 165
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleMmsTextMaxSize:I

    .line 167
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleBodyTextMaxWidth:I

    .line 169
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mMaxAttachmentPicWidth:I

    .line 171
    return-void
.end method

.method private ViewMmsMessageAttachment()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/SimplePduDoc;)V

    .line 822
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->startIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/ContactMessage$ContactRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->ViewMmsMessageAttachment()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method private bindBodyTextForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x0

    .line 486
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, formattedMessage:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 490
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSendingBodyInGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 514
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 519
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isListLayoutStyle()Z

    move-result v1

    if-nez v1, :cond_2

    .line 520
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSlideMms()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 521
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsPaddingHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 522
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 523
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 529
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v1

    if-eqz v1, :cond_7

    .line 531
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleMmsTextMaxSize:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 536
    :goto_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleMmsTextMaxSize:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 541
    :cond_3
    return-void

    .line 498
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 499
    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContactMessage()Lcom/android/mms/model/ContactMessage;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 501
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindContactMesssage(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 504
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 511
    :goto_3
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 508
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    .line 525
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 526
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1

    .line 533
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleBodyTextMaxWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2
.end method

.method private bindBodyTextForNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isListLayoutStyle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleMmsTextMaxSize:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 232
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f09009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v2

    add-int/lit16 v2, v2, 0x3ff

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getExpireTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, msgSizeText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    :cond_1
    return-void
.end method

.method private bindCommonIndicators(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "msgItem"

    .prologue
    .line 1097
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindTimestamp(Lcom/android/mms/ui/MessageItem;)V

    .line 1098
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindDeliveryInfo(Lcom/android/mms/ui/MessageItem;)V

    .line 1099
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindResentButton(Lcom/android/mms/ui/MessageItem;)V

    .line 1100
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindFavouriteMark(Lcom/android/mms/ui/MessageItem;)V

    .line 1101
    return-void
.end method

.method private bindContactMesssage(Lcom/android/mms/ui/MessageItem;)Z
    .locals 13
    .parameter "msgItem"

    .prologue
    const v12, 0x7f0c000f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 544
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    if-nez v8, :cond_0

    move v8, v10

    .line 594
    :goto_0
    return v8

    .line 547
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContactMessage()Lcom/android/mms/model/ContactMessage;

    move-result-object v0

    .line 550
    .local v0, contactMessage:Lcom/android/mms/model/ContactMessage;
    if-eqz v0, :cond_3

    .line 551
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 552
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->split()Ljava/util/ArrayList;

    move-result-object v6

    .line 553
    .local v6, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .line 554
    .local v2, first:Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 555
    .local v5, part:Ljava/lang/Object;
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 556
    .local v7, tv:Landroid/widget/TextView;
    iget v8, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleBodyTextMaxWidth:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 557
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f0a

    invoke-virtual {v8, v9, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 558
    .local v4, multiple:F
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 559
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 578
    :goto_2
    instance-of v8, v5, Lcom/android/mms/model/ContactMessage$ContactRecord;

    if-nez v8, :cond_1

    .line 579
    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 580
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 582
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    if-nez v2, :cond_2

    .line 585
    new-instance v1, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 586
    .local v1, devider:Landroid/widget/ImageView;
    const v8, 0x7f020015

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 587
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 589
    .end local v1           #devider:Landroid/widget/ImageView;
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 590
    const/4 v2, 0x0

    .line 591
    goto :goto_1

    .line 561
    :pswitch_0
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0010

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 565
    :pswitch_1
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0011

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 569
    :pswitch_2
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 572
    :pswitch_3
    iget-object v8, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 573
    iget v8, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleMmsTextMaxSize:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2

    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #multiple:F
    .end local v5           #part:Ljava/lang/Object;
    .end local v6           #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_3
    move v8, v11

    .line 594
    goto/16 :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private bindDeliveryInfo(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f090116

    const v7, 0x7f090114

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 1130
    const/4 v0, 0x0

    .line 1131
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1133
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1136
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1138
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1139
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1143
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliverReportMode()I

    move-result v1

    .line 1144
    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_6

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1147
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_5

    .line 1148
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1172
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v1, :cond_a

    .line 1173
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1149
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1150
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1152
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1153
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 1155
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v2, v3, :cond_8

    .line 1156
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1163
    :cond_7
    :goto_2
    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_4

    .line 1165
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadReport()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1167
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090117

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1157
    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->REJECTED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v2, v3, :cond_9

    .line 1158
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090118

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1159
    :cond_9
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    if-ne v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1160
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1174
    :cond_a
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1175
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1177
    :cond_b
    if-eqz v0, :cond_c

    .line 1178
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1179
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1181
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private bindDownloadButtonForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    const/16 v1, 0x8

    .line 625
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    :cond_0
    return-void
.end method

.method private bindDownloadButtonForNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 247
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v0

    .line 248
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 258
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 259
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 261
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    :goto_0
    return-void

    .line 250
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 251
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 265
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private bindFavouriteMark(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindGroupMessageCancelButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const/4 v1, 0x0

    .line 433
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v2

    .line 434
    .local v2, thread_id:J
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v4

    .line 435
    .local v4, date:J
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 436
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 457
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 440
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;JJ)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private bindGroupMessageFailed(Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x0

    .line 352
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f09011c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageFailedItems(Lcom/android/mms/ui/MessageItem;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageSendFailedButton(Lcom/android/mms/ui/MessageItem;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageCancelButton(Lcom/android/mms/ui/MessageItem;)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindGroupMessageFailedItems(Lcom/android/mms/ui/MessageItem;)V
    .locals 13
    .parameter "msgItem"

    .prologue
    const/4 v12, 0x0

    .line 370
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v3

    .line 372
    .local v3, failedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem$FailedItem;>;"
    const v9, 0x7f0d008a

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 373
    .local v8, vg:Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 374
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageItem$FailedItem;

    .line 375
    .local v2, failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v10, 0x7f030029

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 376
    .local v7, v:Landroid/view/View;
    const v9, 0x7f0d0085

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 377
    .local v5, nameView:Landroid/widget/TextView;
    const v9, 0x7f0d0086

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 378
    .local v6, numberView:Landroid/widget/TextView;
    const v9, 0x7f0d0087

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 379
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 380
    iget-boolean v9, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v9, :cond_0

    .line 381
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 398
    :goto_1
    iget-object v9, v2, Lcom/android/mms/ui/MessageItem$FailedItem;->number:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 399
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 402
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 383
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 384
    new-instance v9, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v9, p0, p1, v2}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageItem$FailedItem;)V

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 404
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 408
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;
    .end local v5           #nameView:Landroid/widget/TextView;
    .end local v6           #numberView:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private bindGroupMessageSendFailedButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f09011a

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->resendMsgInGroup()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 414
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 429
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private bindGroupSendCount(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter "msgItem"

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x0

    .line 319
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToCountTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->sentMsgInGroup()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 326
    .local v0, current:I
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->totalMsgInGroup()I

    move-result v1

    .line 327
    .local v1, total:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToCountTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090113

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 338
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    .end local v0           #current:I
    .end local v1           #total:I
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 346
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindMms(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 598
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    .line 599
    .local v0, doc:Lcom/android/mms/ui/SimplePduDoc;
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v1

    .line 601
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 616
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->setDefaultAttachment()V

    .line 622
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 603
    .restart local v1       #type:I
    :pswitch_0
    invoke-virtual {v0, v4, v1}, Lcom/android/mms/ui/SimplePduDoc;->getPagePartUri(II)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setAudio(Landroid/net/Uri;)V

    goto :goto_0

    .line 606
    :pswitch_1
    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mMaxAttachmentPicWidth:I

    iget v3, p0, Lcom/android/mms/ui/MessageListItem;->mMaxAttachmentPicWidth:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/mms/ui/SimplePduDoc;->getPageImage(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 609
    :pswitch_2
    invoke-virtual {v0, v4, v1}, Lcom/android/mms/ui/SimplePduDoc;->getPagePartUri(II)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setVideo(Landroid/net/Uri;)V

    goto :goto_0

    .line 612
    :pswitch_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setCard(Landroid/net/Uri;)V

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private bindNonNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 287
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindDownloadButtonForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 288
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindSendToTitle(Lcom/android/mms/ui/MessageItem;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupSendCount(Lcom/android/mms/ui/MessageItem;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageFailed(Lcom/android/mms/ui/MessageItem;)V

    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindMms(Lcom/android/mms/ui/MessageItem;)V

    .line 308
    :cond_1
    return-void

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "msgItem"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextForNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindDownloadButtonForNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 226
    return-void
.end method

.method private bindResentButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    const/4 v1, 0x0

    .line 1104
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1108
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1110
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1127
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1114
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$18;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindSendToTitle(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const v4, 0x7f090111

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodySendToTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodySendToTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodySendToTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodySendToTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodySendToTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodySendToTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodySendToTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090112

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->totalMsgInGroup()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private bindTimestamp(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter

    .prologue
    const v7, 0x7f090111

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v4, " "

    const-string v5, ""

    .line 1190
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getStyledTimeStamp()Ljava/lang/String;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090184

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isListLayoutStyle()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1195
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1196
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v0, v5

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    :goto_0
    return-void

    .line 1198
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1199
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const-string v0, ""

    move-object v0, v5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1201
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1202
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1203
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const-string v0, ""

    move-object v0, v5

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1206
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_7

    const-string v0, ""

    move-object v0, v5

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, ""

    move-object v2, v5

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090112

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->totalMsgInGroup()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1211
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090110

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    if-nez v0, :cond_a

    const-string v0, ""

    move-object v0, v5

    :cond_a
    aput-object v0, v4, v8

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1216
    :cond_b
    if-eqz v0, :cond_c

    .line 1217
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTitlePanel:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1220
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTitlePanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private drawBackground(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter

    .prologue
    .line 1064
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1089
    :goto_0
    :pswitch_0
    return-void

    .line 1066
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1069
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1072
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1075
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1082
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1064
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 790
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 791
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v6

    .line 792
    :goto_0
    if-eqz v1, :cond_0

    .line 793
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001c

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 796
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 798
    if-eqz p4, :cond_3

    const-string v2, "text/html"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 799
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 800
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 809
    :cond_1
    :goto_1
    if-eqz p3, :cond_5

    .line 810
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 811
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 812
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    move v1, v5

    .line 791
    goto :goto_0

    .line 802
    :cond_3
    if-eqz v1, :cond_4

    .line 803
    const-string v1, " - "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 805
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 815
    :cond_5
    return-object v0
.end method

.method private getUriInfo(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$UriInfo;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 921
    new-instance v0, Lcom/android/mms/ui/MessageListItem$UriInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListItem$UriInfo;-><init>(Lcom/android/mms/ui/MessageListItem$1;)V

    .line 922
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->uri:Landroid/net/Uri;

    .line 924
    const-string v1, ""

    .line 925
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 926
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 927
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 930
    :cond_0
    const-string v3, "tel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 931
    iput v4, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 932
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 933
    iput-object v1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 934
    invoke-static {v1, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    iput-object v2, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    .line 935
    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    .line 955
    :goto_0
    return-object v0

    .line 938
    :cond_1
    iput-object v1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 940
    :cond_2
    const-string v3, "mailto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 941
    iput v5, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 942
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 943
    iput-object v1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 944
    iput-object v1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 945
    :cond_3
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 947
    :cond_4
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 948
    iput-object p1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 949
    iput-object p1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 951
    :cond_5
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 952
    iput-object p1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 953
    iput-object p1, v0, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private hideMmsViewIfNeeded()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentCard:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 733
    :cond_2
    return-void
.end method

.method private inflateDownloadControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 774
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 776
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 777
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 779
    :cond_0
    return-void
.end method

.method private isMultiSlideMms()Z
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->isSlideShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private messageTextExceedThreshold()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method private performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "notes"

    .line 843
    new-instance v0, Lcom/android/mms/ui/ContextMenuDialog;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    .line 845
    iget v1, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    packed-switch v1, :pswitch_data_0

    .line 878
    const-string v1, "notes"

    move-object v1, v3

    .line 882
    :goto_0
    const v2, 0x7f090122

    new-instance v3, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 892
    iget-object v2, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    const v1, 0x7f090126

    new-instance v2, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 916
    :goto_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v0}, Lcom/android/mms/ui/ContextMenuDialog;->show()V

    .line 918
    return-void

    .line 847
    :pswitch_0
    const-string v1, "phone"

    .line 848
    const v2, 0x7f09011e

    new-instance v3, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 853
    const v2, 0x7f09011f

    new-instance v3, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 862
    :pswitch_1
    const-string v1, "email"

    .line 863
    const v2, 0x7f090121

    new-instance v3, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 870
    :pswitch_2
    const-string v1, "notes"

    .line 871
    const v1, 0x7f090120

    new-instance v2, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    move-object v1, v3

    .line 876
    goto :goto_0

    .line 899
    :cond_0
    const v2, 0x7f090124

    new-instance v3, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 906
    const v2, 0x7f090125

    new-instance v3, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_1

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private prepareStyle(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0d009b

    const v3, 0x7f0d009a

    const v2, 0x7f0d0096

    const/4 v1, 0x0

    .line 636
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 663
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->messageTextExceedThreshold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :goto_1
    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTitlePanel:Landroid/view/View;

    .line 670
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTitleTextView:Landroid/widget/TextView;

    .line 671
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 672
    const v0, 0x7f0d0060

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    .line 673
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodySendToTextView:Landroid/widget/TextView;

    .line 674
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToCountTextView:Landroid/widget/TextView;

    .line 675
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    .line 676
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    .line 677
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedTitle:Landroid/widget/TextView;

    .line 678
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    .line 679
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    .line 680
    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    .line 681
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    .line 682
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    .line 683
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    .line 684
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    .line 686
    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    .line 687
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    .line 688
    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    .line 689
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentCard:Landroid/widget/ImageView;

    .line 690
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    .line 692
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    .line 693
    const v0, 0x7f0d006f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 696
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isListLayoutStyle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    .line 708
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    .line 710
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawBackground(Lcom/android/mms/ui/MessageItem;)V

    .line 711
    return-void

    .line 638
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 644
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 649
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 653
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 654
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 657
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 658
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 666
    :cond_2
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V
    .locals 2
    .parameter

    .prologue
    .line 836
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    const-string v1, "vnd.android.cursor.dir/preview_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/mms/model/ContactParser;->putContactToIntent(Lcom/android/mms/model/ContactMessage$ContactRecord;Landroid/content/Intent;)Landroid/content/Intent;

    .line 839
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 840
    return-void
.end method

.method private startIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 825
    const-string v0, "com.android.browser.application_id"

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const/high16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f09016d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "msgItem"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->prepareStyle(Lcom/android/mms/ui/MessageItem;)V

    .line 180
    return-void
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public onMessageListItemClick()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 959
    .line 960
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    move-object v1, v0

    .line 976
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 977
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v0

    .line 978
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getTimedValue()J

    move-result-wide v2

    .line 979
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 980
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    .line 982
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 984
    const-string v7, "timestamp"

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 987
    const-string v0, "timed_value"

    invoke-virtual {v6, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 990
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 991
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1055
    :cond_0
    :goto_1
    return-void

    .line 963
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v8

    .line 964
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 966
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 967
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    array-length v3, v0

    move v4, v8

    :goto_3
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 968
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 964
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 972
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/text/style/URLSpan;

    .line 973
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    move-object v1, v0

    goto/16 :goto_0

    .line 996
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getContactMessage()Lcom/android/mms/model/ContactMessage;

    move-result-object v0

    .line 997
    if-nez v0, :cond_6

    .line 998
    array-length v2, v1

    if-nez v2, :cond_5

    .line 999
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->ViewMmsMessageAttachment()V

    .line 1000
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/FestivalActivity;->checkAndCallFestival(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 1004
    :cond_5
    array-length v2, v1

    if-ne v2, v9, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1005
    aget-object v0, v1, v8

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->getUriInfo(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$UriInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    goto :goto_1

    .line 1008
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->count()I

    move-result v2

    if-ne v2, v9, :cond_8

    array-length v2, v1

    if-nez v2, :cond_8

    .line 1009
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1010
    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->getContactRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/ContactMessage$ContactRecord;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    goto/16 :goto_1

    .line 1015
    :cond_8
    new-instance v2, Lcom/android/mms/ui/ContextMenuDialog;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    .line 1016
    if-eqz v0, :cond_9

    .line 1017
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->getContactRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/ContactMessage$ContactRecord;

    .line 1018
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090127

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage$ContactRecord;->getPreviewString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1020
    new-instance v5, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v5, p0, v0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1028
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v3, v8

    .line 1029
    :goto_5
    array-length v4, v1

    if-ge v3, v4, :cond_b

    .line 1030
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 1031
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1032
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1033
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageListItem;->getUriInfo(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$UriInfo;

    move-result-object v4

    .line 1034
    iget-object v5, v4, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    new-instance v6, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v6, p0, v4}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v2, v5, v6}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1029
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1042
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1045
    const v0, 0x7f09011d

    new-instance v1, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 1053
    :cond_c
    const v0, 0x7f0900ea

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ContextMenuDialog;->setTitle(I)V

    .line 1054
    invoke-virtual {v2}, Lcom/android/mms/ui/ContextMenuDialog;->show()V

    goto/16 :goto_1
.end method

.method public rebind(Lcom/android/mms/ui/MessageItem;ZZ)V
    .locals 2
    .parameter "msgItem"
    .parameter "isEditMode"
    .parameter "checked"

    .prologue
    .line 190
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 193
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 194
    if-eqz p3, :cond_1

    const v0, 0x7f020084

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->setBackgroundResource(I)V

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded()V

    .line 199
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 207
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindCommonIndicators(Lcom/android/mms/ui/MessageItem;)V

    .line 208
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public setAudio(Landroid/net/Uri;)V
    .locals 2
    .parameter "audio"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    return-void
.end method

.method public setCard(Landroid/net/Uri;)V
    .locals 2
    .parameter "card"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentCard:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    return-void
.end method

.method public setDefaultAttachment()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter

    .prologue
    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/mms/ui/MessageUtils;->setAttachmentImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 752
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    const-string v1, "MessageListItem"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method public setVideo(Landroid/net/Uri;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1230
    return-void
.end method

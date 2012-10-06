.class public Lcom/android/mms/ui/BookmarkListItem;
.super Landroid/widget/LinearLayout;
.source "BookmarkListItem.java"


# instance fields
.field private mAttachmentAudio:Landroid/widget/ImageView;

.field private mAttachmentCard:Landroid/widget/ImageView;

.field private mAttachmentDefault:Landroid/widget/ImageView;

.field private mAttachmentPic:Landroid/widget/ImageView;

.field private mAttachmentVideo:Landroid/widget/ImageView;

.field private mBodyView:Landroid/widget/TextView;

.field private mFromAddrView:Landroid/widget/TextView;

.field private mMaxAttachmentPicWidth:I

.field private mSmsBookmarkItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const v0, 0x7f030007

    invoke-static {p1, v0, p0}, Lcom/android/mms/ui/BookmarkListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BookmarkListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListItem;->mBodyView:Landroid/widget/TextView;

    .line 37
    const/high16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BookmarkListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListItem;->mFromAddrView:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BookmarkListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentPic:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BookmarkListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BookmarkListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BookmarkListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentCard:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BookmarkListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BookmarkListItem;->mMaxAttachmentPicWidth:I

    .line 47
    return-void
.end method

.method private formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "body"
    .parameter "subject"
    .parameter "contentType"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 116
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 117
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v4

    .line 118
    .local v1, hasSubject:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001c

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    if-eqz p3, :cond_3

    const-string v2, "text/html"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 126
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    :cond_1
    :goto_1
    return-object v0

    .end local v1           #hasSubject:Z
    :cond_2
    move v1, v5

    .line 117
    goto :goto_0

    .line 128
    .restart local v1       #hasSubject:Z
    :cond_3
    if-eqz v1, :cond_4

    .line 129
    const-string v2, " - "

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 131
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;IZ)V
    .locals 7
    .parameter "smsBookmarkItem"
    .parameter "position"
    .parameter "linksable"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 54
    if-nez p3, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkListItem;->mSmsBookmarkItem:Lcom/android/mms/ui/MessageItem;

    .line 59
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/ui/BookmarkListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentCard:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BookmarkListItem;->bindMms(Lcom/android/mms/ui/MessageItem;)V

    .line 70
    const-string v0, ""

    .line 71
    .local v0, fromAddr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f090134

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getRelativeTimeStamp(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mFromAddrView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mFromAddrView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListItem;->mFromAddrView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindMms(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "smsBookmarkItem"

    .prologue
    const/4 v6, 0x0

    .line 83
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    .line 84
    .local v0, doc:Lcom/android/mms/ui/SimplePduDoc;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, v6}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v3

    .line 86
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    .line 107
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    .end local v3           #type:I
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v3       #type:I
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :pswitch_1
    iget v4, p0, Lcom/android/mms/ui/BookmarkListItem;->mMaxAttachmentPicWidth:I

    iget v5, p0, Lcom/android/mms/ui/BookmarkListItem;->mMaxAttachmentPicWidth:I

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->getPageImage(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 93
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/android/mms/ui/MessageUtils;->setAttachmentImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 94
    iget-object v4, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 96
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "BookmarkListItem"

    const-string v5, "setImage: out of memory: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 103
    :pswitch_3
    iget-object v4, p0, Lcom/android/mms/ui/BookmarkListItem;->mAttachmentCard:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

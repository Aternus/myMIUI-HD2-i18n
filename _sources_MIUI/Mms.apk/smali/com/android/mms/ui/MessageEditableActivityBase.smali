.class public abstract Lcom/android/mms/ui/MessageEditableActivityBase;
.super Landroid/app/Activity;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
.implements Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;
    }
.end annotation


# instance fields
.field protected mAllowAnimation:Z

.field protected mAttachmentPanel:Landroid/view/View;

.field protected mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

.field protected mAttachmentView:Lcom/android/mms/ui/AttachmentView;

.field protected mBottomPanel:Landroid/view/View;

.field protected mContactPanel:Landroid/view/View;

.field protected mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

.field protected mConversation:Lcom/android/mms/data/Conversation;

.field private mExitOnSent:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mHistoryView:Landroid/view/View;

.field protected mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsLandscape:Z

.field protected mIsSoftInputEnabled:Z

.field protected mListBottomBar:Landroid/view/View;

.field private mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

.field protected mMessageContentPanel:Landroid/view/View;

.field protected mMessageContentPanelMinHeight:I

.field private mRequestedShowSoftKeyboard:Z

.field protected mSendButton:Landroid/widget/Button;

.field private mSendingMessage:Z

.field protected mSharedPrefs:Landroid/content/SharedPreferences;

.field protected mShowAttachmentPanelButton:Landroid/widget/Button;

.field protected mSignature:Ljava/lang/String;

.field protected mSoftKeyboardMinHeight:I

.field protected mSubjectDivider:Landroid/view/View;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field protected mSubjectTextEditor:Landroid/widget/EditText;

.field protected mTextCounter:Landroid/widget/TextView;

.field protected mTextEditor:Landroid/widget/EditText;

.field protected final mTextEditorWatcher:Landroid/text/TextWatcher;

.field protected mTimedMsgIndicator:Landroid/widget/Button;

.field protected mToastForDraftSave:Z

.field protected mWaitingForSubActivity:Z

.field protected mWorkingMessage:Lcom/android/mms/data/WorkingMessage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    .line 131
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    .line 478
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$8;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 700
    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    .line 965
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$16;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 982
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$17;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->removeChenghu()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageEditableActivityBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mExitOnSent:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/MessageEditableActivityBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageEditableActivityBase;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/MessageEditableActivityBase;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->resetMessage()V

    return-void
.end method

.method private allowAnimation()Z
    .locals 7

    .prologue
    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1422
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1423
    const/4 v1, 0x0

    .line 1426
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1429
    :goto_0
    if-eqz v0, :cond_3

    .line 1430
    array-length v1, v0

    if-lt v1, v5, :cond_2

    .line 1431
    aget v1, v0, v4

    add-float/2addr v1, v6

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0xa

    .line 1433
    :goto_1
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 1434
    aget v0, v0, v5

    add-float/2addr v0, v6

    float-to-int v0, v0

    and-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    .line 1437
    :goto_2
    if-eqz v0, :cond_0

    move v0, v5

    :goto_3
    return v0

    .line 1427
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 1437
    goto :goto_3

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2
.end method

.method private appendSignature()V
    .locals 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_edit_signature"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    .line 502
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 503
    .local v0, textLength:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 505
    return-void
.end method

.method private getBody(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 312
    if-nez p1, :cond_0

    move-object v6, v8

    .line 329
    :goto_0
    return-object v6

    .line 315
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, urlStr:Ljava/lang/String;
    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v8

    .line 317
    goto :goto_0

    .line 319
    :cond_1
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 320
    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, params:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 322
    .local v3, p:Ljava/lang/String;
    const-string v6, "body="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 324
    const/4 v6, 0x5

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 325
    :catch_0
    move-exception v6

    .line 321
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #p:Ljava/lang/String;
    :cond_3
    move-object v6, v8

    .line 329
    goto :goto_0
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .locals 19
    .parameter "intent"

    .prologue
    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 360
    .local v13, extras:Landroid/os/Bundle;
    if-nez v13, :cond_0

    .line 361
    const/4 v4, 0x0

    .line 437
    :goto_0
    return v4

    .line 364
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .line 365
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 366
    .local v11, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 370
    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/ContactParser;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v16

    .line 371
    .local v16, message:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const/4 v4, 0x1

    goto :goto_0

    .line 376
    :cond_1
    const/4 v14, 0x0

    .line 377
    .local v14, flag:Z
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 379
    .local v18, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object v1, v8

    move-object/from16 v2, v18

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 380
    const/4 v14, 0x1

    .line 382
    .end local v18           #uri:Landroid/net/Uri;
    :cond_2
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object v4, v0

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v13, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const/4 v14, 0x1

    .line 386
    :cond_3
    if-eqz v14, :cond_7

    .line 387
    const/4 v4, 0x1

    goto :goto_0

    .line 389
    .end local v14           #flag:Z
    .end local v16           #message:Ljava/lang/String;
    :cond_4
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v17

    .line 392
    .local v17, slideShow:Lcom/android/mms/model/SlideshowModel;
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 393
    .local v7, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    move v12, v4

    .line 394
    .local v12, currentSlideCount:I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 395
    .local v15, importCount:I
    add-int v4, v15, v12

    const/16 v5, 0xa

    if-le v4, v5, :cond_5

    .line 396
    const/16 v4, 0xa

    sub-int/2addr v4, v12

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 398
    const v4, 0x7f090055

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 409
    :cond_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090057

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 414
    .local v10, dialog:Landroid/app/AlertDialog;
    new-instance v9, Lcom/android/mms/ui/MessageEditableActivityBase$6;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageEditableActivityBase$6;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Landroid/app/AlertDialog;)V

    .line 420
    .local v9, showProgress:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    move v6, v15

    .line 423
    .local v6, numberToImport:I
    new-instance v11, Ljava/lang/Thread;

    .end local v11           #action:Ljava/lang/String;
    new-instance v4, Lcom/android/mms/ui/MessageEditableActivityBase$7;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/mms/ui/MessageEditableActivityBase$7;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/Runnable;Landroid/app/AlertDialog;)V

    const-string v5, "addAttachment"

    invoke-direct {v11, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 434
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 393
    .end local v6           #numberToImport:I
    .end local v9           #showProgress:Ljava/lang/Runnable;
    .end local v10           #dialog:Landroid/app/AlertDialog;
    .end local v12           #currentSlideCount:I
    .end local v15           #importCount:I
    .restart local v11       #action:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_1

    .line 437
    .end local v7           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v17           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private handleSendToIntent(Landroid/content/Intent;)Z
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const-string v8, "android.intent.extra.TEXT"

    const-string v6, "android.intent.extra.STREAM"

    .line 333
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 334
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_0

    move v5, v7

    .line 355
    :goto_0
    return v5

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, flag:Z
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 344
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v5, v3, v4, v7}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 345
    const/4 v2, 0x1

    .line 347
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 348
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const/4 v2, 0x1

    .line 351
    :cond_2
    if-eqz v2, :cond_3

    .line 352
    const/4 v5, 0x1

    goto :goto_0

    .end local v2           #flag:Z
    :cond_3
    move v5, v7

    .line 355
    goto :goto_0
.end method

.method private hasRecipientsToRevise()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1103
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "nickname_revised_numbers"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 1107
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    move v2, v4

    .line 1108
    :goto_0
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1109
    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/data/Contact;

    .line 1110
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 1112
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v3

    .line 1113
    if-eqz v3, :cond_0

    .line 1114
    invoke-virtual {v3, v5, v4}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1115
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v5

    .line 1121
    :goto_1
    return v0

    .line 1108
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 1121
    goto :goto_1
.end method

.method private isSignatureRequired()Z
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_append_signature"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private removeChenghu()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1085
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    move v2, v1

    .line 1087
    :goto_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1088
    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 1089
    const v4, 0xffff

    if-ne v3, v4, :cond_0

    .line 1090
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1091
    const/4 v2, 0x1

    .line 1087
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1094
    :cond_1
    if-eqz v2, :cond_2

    .line 1095
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1096
    const v1, 0x7f09016f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1097
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1098
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1100
    :cond_2
    return-void
.end method

.method private resetMessage()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1380
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "resetMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AttachmentView;->setVisibility(I)V

    .line 1386
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1389
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1392
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1398
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1401
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 1403
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1404
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1406
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 1409
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 1412
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1414
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 1415
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hideSoftKeyboard()V

    .line 1418
    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    .line 1419
    return-void
.end method

.method private sendMessage(Z)V
    .locals 7
    .parameter "bCheckEcmMode"

    .prologue
    const/4 v6, 0x1

    .line 599
    if-eqz p1, :cond_1

    .line 601
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, inEcm:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 604
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v1           #inEcm:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 608
    .restart local v1       #inEcm:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 610
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "MessageEditableActivityBase"

    const-string v4, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #inEcm:Ljava/lang/String;
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    if-nez v3, :cond_0

    .line 616
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, workingRecipients:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v2}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V

    .line 618
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    goto :goto_0
.end method

.method private toastConvertInfo(Z)V
    .locals 2
    .parameter

    .prologue
    .line 660
    if-eqz p1, :cond_0

    const v0, 0x7f09004e

    .line 662
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 663
    return-void

    .line 660
    :cond_0
    const v0, 0x7f09004f

    goto :goto_0
.end method

.method private updateContactNames()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$1;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method

.method private updateCounter()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter(Z)V

    .line 576
    return-void
.end method

.method private updateCounter(Z)V
    .locals 5
    .parameter "isMms"

    .prologue
    const/4 v4, 0x0

    .line 579
    if-eqz p1, :cond_0

    .line 580
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    const v4, 0x7f090038

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 588
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v1

    .line 583
    .local v1, params:[I
    aget v0, v1, v4

    .line 584
    .local v0, msgCount:I
    const/4 v3, 0x2

    aget v2, v1, v3

    .line 586
    .local v2, remainingInCurrentMessage:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->getMessageStats(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNicknameRevisedNumbers()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-string v7, "nickname_revised_numbers"

    const-string v6, "\n"

    .line 1125
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "nickname_revised_numbers"

    const-string v1, ""

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    const-string v1, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 1129
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    move v3, v5

    .line 1130
    :goto_0
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 1131
    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1132
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1133
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_0

    .line 1136
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1130
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1141
    :cond_1
    const-string v0, "\n"

    invoke-virtual {v1}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1143
    const-string v2, "nickname_revised_numbers"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1144
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1145
    return-void
.end method


# virtual methods
.method public cancelTiming()V
    .locals 3

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1457
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setTimeToSend(J)V

    .line 1458
    return-void
.end method

.method protected checkAndSendMessage(Z)V
    .locals 3
    .parameter

    .prologue
    .line 623
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const v0, 0x7f090176

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 642
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090068

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$9;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$9;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 640
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    goto :goto_0
.end method

.method protected disableAttachmentPanel()V
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    return-void
.end method

.method protected drawBottomPanel()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string v6, ""

    .line 856
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 861
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 889
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    .line 890
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 864
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 871
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_4

    .line 874
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_2

    .line 885
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public drawTopPanel()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 853
    return-void
.end method

.method protected enableAttachmentPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1262
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getEditMessageFocus()Landroid/widget/EditText;

    .line 1263
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->gotoAttachmentPanel(Z)V

    .line 1264
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    return-void
.end method

.method protected exit()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    .line 835
    :goto_0
    return-void

    .line 828
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->willDiscardDraft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Lcom/android/mms/ui/MessageEditableActivityBase$1;)V

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 833
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mToastForDraftSave:Z

    .line 834
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    goto :goto_0
.end method

.method public getAttachmentView()Lcom/android/mms/ui/AttachmentView;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    return-object v0
.end method

.method protected abstract getContentViewResId()I
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public getEditMessageFocus()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 1274
    :goto_0
    return-object v0

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1271
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    goto :goto_0

    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1274
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHostedActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 728
    return-object p0
.end method

.method public getTextEditor()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method public getWorkingMessage()Lcom/android/mms/data/WorkingMessage;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method protected handleForwardedMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1039
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1043
    const-string v0, "forwarded_message"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    .line 1060
    :goto_0
    return v0

    .line 1047
    :cond_0
    const-string v0, "msg_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1049
    const-string v2, "Mms:app"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1050
    const-string v2, "MessageEditableActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle forwarded message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_1
    if-eqz v0, :cond_2

    .line 1054
    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1055
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, "subject"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1060
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, "sms_body"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected handleIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 277
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSignatureRequired()Z

    move-result v1

    .line 278
    .local v1, needSignature:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleForwardedMessage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->loadDraft()V

    .line 280
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    const/4 v1, 0x0

    .line 286
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBody(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, body:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_2
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, subject:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 298
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v2, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 300
    :cond_3
    const-string v3, "exit_on_sent"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mExitOnSent:Z

    .line 303
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 305
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSendIntent(Landroid/content/Intent;)Z

    .line 306
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSendToIntent(Landroid/content/Intent;)Z

    .line 308
    return v1
.end method

.method protected handleSignature(Z)V
    .locals 0
    .parameter "needSignature"

    .prologue
    .line 444
    if-eqz p1, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->appendSignature()V

    .line 450
    :cond_0
    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1312
    .local v0, focus:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 1315
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1316
    return-void
.end method

.method protected initResourceRefs()V
    .locals 3

    .prologue
    .line 214
    const v1, 0x7f0d00a9

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContactPanel:Landroid/view/View;

    .line 215
    const v1, 0x7f0d008f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    .line 216
    const v1, 0x7f0d0030

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mListBottomBar:Landroid/view/View;

    .line 217
    const v1, 0x7f0d006c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    .line 218
    const v1, 0x7f0d0061

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    .line 220
    const v1, 0x7f0d0075

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 221
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$2;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 238
    const v1, 0x7f0d0077

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    .line 239
    const v1, 0x7f0d0076

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    .line 240
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v1, 0x7f0d0071

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/AttachmentView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$3;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentView;->setHandler(Landroid/os/Handler;)V

    .line 248
    const v1, 0x7f0d006d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    .line 249
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v1, 0x7f0d006f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    .line 251
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$4;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v1, 0x7f0d0074

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, focuser:Landroid/view/View;
    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$5;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const v1, 0x7f0d006e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    .line 268
    return-void
.end method

.method protected initialize()V
    .locals 4

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleIntent(Landroid/content/Intent;)Z

    move-result v1

    .line 454
    .local v1, needSignature:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 455
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawTopPanel()V

    .line 456
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 457
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 458
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSignature(Z)V

    .line 460
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 461
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    .line 462
    return-void

    .line 461
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method insertChenghu()V
    .locals 3

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1066
    const v1, 0x7f09016f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1067
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1068
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1082
    :goto_0
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1075
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1076
    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1077
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1078
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startNicknamePicker(Z)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    goto :goto_0
.end method

.method protected isAttachmentPanelEnabled()Z
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public abstract isPreparedForSending()Z
.end method

.method protected isSubjectEditorVisible()Z
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 1254
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDraft()V
    .locals 2

    .prologue
    .line 508
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 513
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    .line 514
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 527
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    .line 534
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 537
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 540
    :cond_0
    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    .line 541
    const-string v9, "exit_ecm_result"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 542
    .local v5, outOfEmergencyMode:Z
    if-eqz v5, :cond_1

    .line 543
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    .line 570
    .end local v5           #outOfEmergencyMode:Z
    :cond_1
    :goto_0
    return-void

    .line 545
    :cond_2
    const/4 v9, 0x3

    if-ne p1, v9, :cond_3

    if-eqz p3, :cond_3

    .line 546
    const-string v9, "numbers"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 547
    .local v6, phoneNumbers:[Ljava/lang/String;
    const-string v9, "names"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, nicknames:[Ljava/lang/String;
    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    array-length v9, v6

    array-length v10, v3

    if-ne v9, v10, :cond_1

    .line 551
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, v6

    if-ge v1, v9, :cond_1

    .line 552
    aget-object v4, v6, v1

    .line 553
    .local v4, number:Ljava/lang/String;
    aget-object v2, v3, v1

    .line 554
    .local v2, nickname:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v4, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 555
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0, v2}, Lcom/android/mms/data/Contact;->setNickname(Ljava/lang/String;)V

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #i:I
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #nicknames:[Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v6           #phoneNumbers:[Ljava/lang/String;
    :cond_3
    const/4 v9, 0x4

    if-ne p1, v9, :cond_4

    .line 559
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setClickable(Z)V

    .line 560
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 561
    sget-object v9, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 562
    .local v7, time:J
    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-eqz v9, :cond_1

    .line 563
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 564
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v9, v7, v8}, Lcom/android/mms/data/WorkingMessage;->setTimeToSend(J)V

    goto :goto_0

    .line 568
    .end local v7           #time:J
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v9, p1, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachmentChanged()V
    .locals 1

    .prologue
    .line 669
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$11;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method

.method public onAttachmentError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 718
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$15;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$15;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;I)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 724
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentProcessor;->isOnAttachmentPanel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->gotoAttachmentPanel(Z)V

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    goto :goto_0

    .line 816
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->exit()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 734
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage()V

    goto :goto_0

    .line 739
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->enableAttachmentPanel()V

    .line 741
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hideSoftKeyboard()V

    goto :goto_0

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    goto :goto_0

    .line 732
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d006d -> :sswitch_1
        0x7f0d0076 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 468
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 469
    .local v0, isLandscape:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eq v1, v0, :cond_0

    .line 470
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    .line 474
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 476
    :cond_0
    return-void

    .line 468
    .end local v0           #isLandscape:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected onContactsUpdated()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->loadFontSizeConfiguration(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSoftKeyboardMinHeight:I

    .line 158
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanelMinHeight:I

    .line 161
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getContentViewResId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SizeAwareLinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setOnMeasureListener(Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->setContentView(Landroid/view/View;)V

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    .line 167
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 168
    new-instance v0, Lcom/android/mms/ui/AttachmentProcessor;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentProcessor;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    .line 169
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 172
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V

    .line 173
    return-void
.end method

.method public onMaxPendingMessagesReached()V
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft()V

    .line 704
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$14;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 689
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$13;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 911
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 929
    :goto_0
    :pswitch_0
    return v2

    .line 913
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 915
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 916
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 918
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 919
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 920
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 924
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 925
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    goto :goto_0

    .line 911
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1193
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, p2, v7}, Landroid/view/View;->measure(II)V

    .line 1196
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    if-gt v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1201
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanelMinHeight:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1202
    if-lez v0, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1207
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1208
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSoftKeyboardMinHeight:I

    if-lt v1, v2, :cond_4

    move v1, v4

    .line 1209
    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1210
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    .line 1213
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f020082

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1215
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    .line 1217
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1218
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1219
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1221
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1222
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AttachmentProcessor;->arrangeAttachmentPanel(I)V

    .line 1223
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0, p2, v7}, Landroid/view/View;->measure(II)V

    .line 1224
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v2, v0

    .line 1229
    :goto_2
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContactPanel:Landroid/view/View;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mListBottomBar:Landroid/view/View;

    aput-object v3, v2, v5

    move v3, v0

    move v0, v7

    .line 1230
    :goto_3
    array-length v4, v2

    if-ge v0, v4, :cond_8

    .line 1231
    aget-object v4, v2, v0

    .line 1232
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1233
    const/high16 v5, -0x8000

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p2, v5}, Landroid/view/View;->measure(II)V

    .line 1234
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 1235
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v7

    .line 1230
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v1, v7

    .line 1208
    goto/16 :goto_0

    .line 1213
    :cond_5
    const v3, 0x7f020081

    goto :goto_1

    .line 1226
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_2

    .line 1240
    :cond_7
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v9, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_4

    .line 1248
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    return-void
.end method

.method public onPreMessageSent()V
    .locals 1

    .prologue
    .line 680
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$12;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f020069

    const/4 v2, 0x0

    .line 894
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 895
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 897
    const v0, 0x7f090032

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 905
    :cond_0
    :goto_0
    const/4 v0, 0x2

    const v1, 0x7f090033

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 906
    const/4 v0, 0x1

    return v0

    .line 900
    :cond_1
    const v0, 0x7f090167

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProtocolChanged(Z)V
    .locals 1
    .parameter "mms"

    .prologue
    .line 650
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$10;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$10;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 657
    return-void
.end method

.method protected onResetMessageAnimationEnd()V
    .locals 0

    .prologue
    .line 1322
    return-void
.end method

.method protected onResetMessageAnimationStart()V
    .locals 0

    .prologue
    .line 1319
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 754
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 756
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 765
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 767
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 178
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->allowAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 180
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateContactNames()V

    .line 181
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 771
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 772
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft()V

    .line 773
    return-void
.end method

.method public performShowSoftKeyboardRequest()V
    .locals 1

    .prologue
    .line 1287
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    .line 1289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 1291
    :cond_0
    return-void
.end method

.method protected postExit()V
    .locals 0

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->finish()V

    .line 839
    return-void
.end method

.method public requestShowSoftKeyboard()V
    .locals 1

    .prologue
    .line 1283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 1284
    return-void
.end method

.method public resetMessageWithAnimation()V
    .locals 3

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onResetMessageAnimationStart()V

    .line 1326
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1328
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    if-nez v1, :cond_0

    .line 1329
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1331
    :cond_0
    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$18;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$18;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1376
    const v1, 0x7f0d006e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1377
    return-void
.end method

.method protected saveDraft()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const-string v4, "Mms:app"

    const-string v3, "MessageEditableActivityBase"

    .line 779
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 784
    const-string v0, "Mms:app"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    const-string v0, "MessageEditableActivityBase"

    const-string v0, "saveDraft: not worth saving, discard WorkingMessage and bail"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    .line 791
    :cond_3
    const-string v0, "Mms:app"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 792
    const-string v0, "MessageEditableActivityBase"

    const-string v0, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->saveDraft()V

    .line 797
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mToastForDraftSave:Z

    if-eqz v0, :cond_0

    .line 798
    const v0, 0x7f090053

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public abstract sendMessage()V
.end method

.method public setTiming()V
    .locals 4

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    .line 1442
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 1445
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1447
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1450
    sget-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    const v1, 0x7f090180

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1453
    return-void
.end method

.method public setWorkingMessage(Lcom/android/mms/data/WorkingMessage;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-void
.end method

.method protected showSoftKeyboard()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1295
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1296
    .local v0, focus:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1299
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 1302
    :cond_0
    if-nez v0, :cond_1

    move v1, v2

    .line 1306
    :goto_0
    return v1

    .line 1305
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1306
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected showSubjectEditor(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 938
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const-string v0, "MessageEditableActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSubjectEditor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 945
    if-nez p1, :cond_1

    .line 963
    :goto_0
    return-void

    .line 948
    :cond_1
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 949
    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectDivider:Landroid/view/View;

    .line 952
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 954
    if-eqz p1, :cond_4

    .line 955
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 960
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectDivider:Landroid/view/View;

    if-eqz p1, :cond_6

    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 952
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 957
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    :cond_5
    move v1, v4

    .line 961
    goto :goto_3

    :cond_6
    move v1, v4

    .line 962
    goto :goto_4
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 519
    if-ltz p2, :cond_0

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    .line 522
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 523
    return-void
.end method

.method public startNicknamePicker(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0900c0

    .line 1148
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 1149
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hasRecipientsToRevise()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1151
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1152
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 1153
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 1154
    invoke-virtual {v1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1155
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 1153
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1158
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    const-string v1, "numbers"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1163
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateNicknameRevisedNumbers()V

    .line 1177
    :cond_2
    :goto_1
    return-void

    .line 1165
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1166
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1167
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1168
    if-eqz p1, :cond_4

    .line 1169
    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1173
    :goto_2
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 1171
    :cond_4
    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public updateSendButtonState()V
    .locals 2

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isPreparedForSending()Z

    move-result v0

    .line 592
    .local v0, preparedForSending:Z
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 593
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 594
    return-void
.end method

.method protected abstract willDiscardDraft()Z
.end method

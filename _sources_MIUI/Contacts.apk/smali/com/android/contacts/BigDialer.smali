.class public Lcom/android/contacts/BigDialer;
.super Landroid/app/Activity;
.source "BigDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mAddContact:Landroid/view/View;

.field mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallPhone:Landroid/view/View;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDigits:Landroid/widget/EditText;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mIsAddCallMode:Z

.field private mLastNumberDialed:Ljava/lang/String;

.field private mMaxTextSize:F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/BigDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/BigDialer;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/BigDialer;->mLastNumberDialed:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/BigDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/BigDialer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/contacts/BigDialer;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/BigDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 422
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 423
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 424
    return-void
.end method

.method private phoneIsCdma()Z
    .locals 5

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 659
    .local v1, isCdma:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 660
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 661
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 666
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 661
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 663
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 664
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BigDialer"

    const-string v4, "phone.getActivePhoneType() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 5

    .prologue
    .line 642
    const/4 v2, 0x0

    .line 644
    .local v2, phoneInUse:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 645
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 646
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 650
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 646
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 647
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 648
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BigDialer"

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 5

    .prologue
    .line 673
    const/4 v2, 0x0

    .line 675
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 676
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 677
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 681
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 678
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 679
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BigDialer"

    const-string v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryLastOutgoingCall()V
    .locals 2

    .prologue
    .line 718
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/BigDialer;->mLastNumberDialed:Ljava/lang/String;

    .line 719
    new-instance v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    new-instance v1, Lcom/android/contacts/BigDialer$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/BigDialer$1;-><init>(Lcom/android/contacts/BigDialer;)V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 729
    .local v0, lastCallArgs:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 730
    return-void
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 244
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 248
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 689
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 694
    .local v0, digitsNotEmpty:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->phoneIsCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mCallPhone:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 703
    :goto_1
    return-void

    .end local v0           #digitsNotEmpty:Z
    :cond_0
    move v0, v4

    .line 689
    goto :goto_0

    .line 701
    .restart local v0       #digitsNotEmpty:Z
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mCallPhone:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/contacts/BigDialer;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .parameter "input"

    .prologue
    const/high16 v9, 0x41f0

    const/4 v8, 0x0

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {p0, v6, v7}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->clear()V

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->isDigitsEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 132
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 133
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0xb

    if-gt v6, v7, :cond_4

    .line 134
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    iget v7, p0, Lcom/android/contacts/BigDialer;->mMaxTextSize:F

    invoke-virtual {v6, v8, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 160
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->updateDialAndDeleteButtonEnabledState()V

    .line 161
    return-void

    .line 129
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .line 136
    .restart local v3       #text:Ljava/lang/CharSequence;
    :cond_4
    const/high16 v6, 0x4130

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const v7, 0x3dcccccd

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 137
    .local v2, step:F
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTextSize()F

    move-result v4

    .line 138
    .local v4, textSize:F
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWidth()I

    move-result v6

    const/16 v7, 0xa

    sub-int v0, v6, v7

    .line 139
    .local v0, maxWidth:I
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 140
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v3, v8, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 141
    .local v5, textWidth:F
    int-to-float v6, v0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_7

    cmpl-float v6, v4, v9

    if-lez v6, :cond_7

    .line 143
    :cond_5
    sub-float/2addr v4, v2

    .line 144
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 145
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v3, v8, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 146
    int-to-float v6, v0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_6

    cmpl-float v6, v4, v9

    if-gtz v6, :cond_5

    .line 147
    :cond_6
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v6, v8, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    goto :goto_1

    .line 148
    :cond_7
    int-to-float v6, v0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    iget v6, p0, Lcom/android/contacts/BigDialer;->mMaxTextSize:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_2

    .line 151
    :cond_8
    move v1, v4

    .line 152
    .local v1, prevSize:F
    add-float/2addr v4, v2

    .line 153
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 154
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v3, v8, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 155
    int-to-float v6, v0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_9

    iget v6, p0, Lcom/android/contacts/BigDialer;->mMaxTextSize:F

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_8

    .line 156
    :cond_9
    iget-object v6, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    iget v7, p0, Lcom/android/contacts/BigDialer;->mMaxTextSize:F

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v6, v8, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 112
    return-void
.end method

.method callVoicemail()V
    .locals 5

    .prologue
    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 549
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0, v0}, Lcom/android/contacts/BigDialer;->startActivity(Landroid/content/Intent;)V

    .line 551
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 552
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->finish()V

    .line 553
    return-void
.end method

.method dialButtonPressed()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "tel"

    .line 556
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, number:Ljava/lang/String;
    const/4 v2, 0x0

    .line 558
    .local v2, sendEmptyFlash:Z
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->isDigitsEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 560
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    const-string v3, "tel"

    const-string v3, ""

    invoke-static {v5, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 565
    const-string v3, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    const/4 v2, 0x1

    .line 581
    :goto_0
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0, v0}, Lcom/android/contacts/BigDialer;->startActivity(Landroid/content/Intent;)V

    .line 583
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 595
    if-nez v2, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->finish()V

    .line 598
    :cond_0
    :goto_1
    return-void

    .line 567
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 570
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/contacts/BigDialer;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 575
    :cond_2
    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/android/contacts/BigDialer;->playTone(I)V

    goto :goto_1

    .line 579
    :cond_3
    const-string v3, "tel"

    invoke-static {v5, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected maybeAddNumberFormatting()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 441
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 442
    invoke-direct {p0, v3}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 446
    :pswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 447
    invoke-direct {p0, v4}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 451
    :pswitch_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 452
    invoke-direct {p0, v5}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 456
    :pswitch_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 457
    invoke-direct {p0, v6}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 461
    :pswitch_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 462
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 466
    :pswitch_5
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 467
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 471
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 472
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 476
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 477
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 481
    :pswitch_8
    invoke-virtual {p0, v4}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 482
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 486
    :pswitch_9
    invoke-virtual {p0, v5}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 487
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 491
    :pswitch_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 492
    invoke-direct {p0, v2}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 496
    :pswitch_b
    invoke-virtual {p0, v6}, Lcom/android/contacts/BigDialer;->playTone(I)V

    .line 497
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 501
    :pswitch_c
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 502
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->dialButtonPressed()V

    goto :goto_0

    .line 506
    :pswitch_d
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    goto :goto_0

    .line 510
    :pswitch_e
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 511
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 512
    .local v0, telUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/BigDialer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x7f070020
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 170
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/android/contacts/BigDialer;->setContentView(I)V

    .line 171
    const v3, 0x7f07001f

    invoke-virtual {p0, v3}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    .line 172
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 173
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 175
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    .line 176
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    iput v3, p0, Lcom/android/contacts/BigDialer;->mMaxTextSize:F

    .line 177
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/contacts/BigDialer;->mMaxTextSize:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 178
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getTextScaleX()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 179
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->maybeAddNumberFormatting()V

    .line 184
    const v3, 0x7f070020

    invoke-virtual {p0, v3}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 185
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->setupKeypad()V

    .line 189
    :cond_0
    const v3, 0x7f07002d

    invoke-virtual {p0, v3}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/BigDialer;->mCallPhone:Landroid/view/View;

    .line 190
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mCallPhone:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/BigDialer;->mDelete:Landroid/view/View;

    .line 194
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 197
    const v3, 0x7f07002c

    invoke-virtual {p0, v3}, Lcom/android/contacts/BigDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/BigDialer;->mAddContact:Landroid/view/View;

    .line 198
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mAddContact:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    const v4, 0x7f0a0005

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 205
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "BigDialer"

    const-string v4, "Vibrate control bool missing."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 435
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 429
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->dialButtonPressed()V

    .line 431
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x7f07001f
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 361
    packed-switch p1, :pswitch_data_0

    .line 384
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 363
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 364
    .local v0, callPressDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-ltz v5, :cond_0

    .line 366
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 369
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/BigDialer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    move v5, v9

    .line 373
    goto :goto_0

    .line 376
    .end local v0           #callPressDiff:J
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 377
    .local v3, timeDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->callVoicemail()V

    :cond_1
    move v5, v9

    .line 381
    goto :goto_0

    .line 370
    .end local v3           #timeDiff:J
    .restart local v0       #callPressDiff:J
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 389
    packed-switch p1, :pswitch_data_0

    .line 417
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 394
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->phoneIsCdma()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/BigDialer;->mIsAddCallMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->finish()V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->dialButtonPressed()V

    .line 414
    const/4 v0, 0x1

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    iget-object v2, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 521
    .local v0, digits:Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 522
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    move v2, v3

    .line 543
    :goto_0
    return v2

    .line 524
    :sswitch_0
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 528
    iget-object v2, p0, Lcom/android/contacts/BigDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    move v2, v4

    .line 529
    goto :goto_0

    .line 532
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->callVoicemail()V

    move v2, v4

    .line 534
    goto :goto_0

    :cond_0
    move v2, v3

    .line 536
    goto :goto_0

    .line 539
    :sswitch_2
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/contacts/BigDialer;->keyPressed(I)V

    move v2, v4

    .line 540
    goto :goto_0

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070020 -> :sswitch_1
        0x7f07002a -> :sswitch_2
        0x7f07002e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 347
    iget-object v0, p0, Lcom/android/contacts/BigDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/BigDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 352
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/BigDialer;->mLastNumberDialed:Ljava/lang/String;

    .line 357
    return-void

    .line 352
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 239
    iget-object v0, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 240
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 270
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->queryLastOutgoingCall()V

    .line 273
    invoke-virtual {p0}, Lcom/android/contacts/BigDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/BigDialer;->mDTMFToneEnabled:Z

    .line 277
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 282
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/BigDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 290
    :try_start_1
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x3

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Lcom/android/contacts/BigDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 291
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/contacts/BigDialer;->setVolumeControlStream(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    const v2, 0x7f0b0060

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 315
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/BigDialer;->updateDialAndDeleteButtonEnabledState()V

    .line 316
    return-void

    .line 273
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 293
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v2, "BigDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/BigDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 297
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 118
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .parameter "hasFocus"

    .prologue
    const-string v5, "BigDialer"

    .line 320
    if-eqz p1, :cond_0

    .line 327
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/contacts/BigDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 328
    .local v2, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 331
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 332
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 333
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 341
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v2       #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const-string v3, "BigDialer"

    const-string v4, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 338
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BigDialer"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 610
    iget-boolean v2, p0, Lcom/android/contacts/BigDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/contacts/BigDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 620
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 621
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 626
    iget-object v2, p0, Lcom/android/contacts/BigDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 627
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_2

    .line 628
    const-string v3, "BigDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    monitor-exit v2

    goto :goto_0

    .line 634
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 633
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/contacts/BigDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v3, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 634
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 735
    if-eqz p4, :cond_0

    .line 736
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

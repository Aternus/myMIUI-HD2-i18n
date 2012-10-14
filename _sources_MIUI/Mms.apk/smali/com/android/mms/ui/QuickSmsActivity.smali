.class public Lcom/android/mms/ui/QuickSmsActivity;
.super Landroid/app/Activity;
.source "QuickSmsActivity.java"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMessageBody:Landroid/widget/EditText;

.field private mMessageSender:Landroid/widget/TextView;

.field private mSenderDetails:Landroid/widget/TextView;

.field private mSenderNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/QuickSmsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/mms/ui/QuickSmsActivity;->exit(Z)V

    return-void
.end method

.method private exit(Z)V
    .locals 3
    .parameter "send"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/mms/ui/QuickSmsActivity;->mMessageBody:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/mms/ui/QuickSmsActivity;->mSenderNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/QuickSmsActivity;->mMessageBody:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/QuickSmsActivity;->sendSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/QuickSmsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 125
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/mms/ui/QuickSmsActivity;->mMessageBody:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 126
    iget-object v1, p0, Lcom/android/mms/ui/QuickSmsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickSmsActivity;->finish()V

    .line 128
    return-void

    .line 118
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const v1, 0x7f09004b

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "smsTo"
    .parameter "msgText"

    .prologue
    .line 131
    invoke-static {p0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 132
    .local v4, threadId:J
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 134
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0}, Lcom/android/mms/transaction/MessageSender;->sendMessage()Z

    .line 136
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    invoke-virtual {v1, p0, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 138
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "QuickSmsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickSmsActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x28

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 47
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickSmsActivity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 53
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickSmsActivity;->finish()V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mSenderNumber:Ljava/lang/String;

    .line 59
    const-string v7, "sms_body"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, msg:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/android/mms/ui/QuickSmsActivity;->finish()V

    goto :goto_0

    .line 65
    :cond_2
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/QuickSmsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 67
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030044

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, layout:Landroid/view/View;
    const v7, 0x7f0d00be

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mMessageSender:Landroid/widget/TextView;

    .line 69
    const v7, 0x7f0d00bf

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mSenderDetails:Landroid/widget/TextView;

    .line 70
    const v7, 0x7f0d00ce

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mMessageBody:Landroid/widget/EditText;

    .line 71
    iget-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mMessageBody:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    .line 74
    .local v5, numberInfo:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mSenderNumber:Ljava/lang/String;

    invoke-static {p0, v7, v5}, Lcom/android/mms/ui/MessageUtils;->getNumberInfo(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    iget-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mMessageSender:Landroid/widget/TextView;

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mSenderDetails:Landroid/widget/TextView;

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mSenderDetails:Landroid/widget/TextView;

    aget-object v8, v5, v9

    if-nez v8, :cond_3

    const/16 v8, 0x8

    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 82
    const v7, 0x7f090037

    new-instance v8, Lcom/android/mms/ui/QuickSmsActivity$1;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/QuickSmsActivity$1;-><init>(Lcom/android/mms/ui/QuickSmsActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    const v7, 0x7f090069

    new-instance v8, Lcom/android/mms/ui/QuickSmsActivity$2;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/QuickSmsActivity$2;-><init>(Lcom/android/mms/ui/QuickSmsActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v7, Lcom/android/mms/ui/QuickSmsActivity$3;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/QuickSmsActivity$3;-><init>(Lcom/android/mms/ui/QuickSmsActivity;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mDialog:Landroid/app/AlertDialog;

    .line 102
    iget-object v7, p0, Lcom/android/mms/ui/QuickSmsActivity;->mMessageBody:Landroid/widget/EditText;

    new-instance v8, Lcom/android/mms/ui/QuickSmsActivity$4;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/QuickSmsActivity$4;-><init>(Lcom/android/mms/ui/QuickSmsActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_3
    move v8, v10

    .line 77
    goto :goto_1
.end method

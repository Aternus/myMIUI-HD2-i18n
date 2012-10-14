.class public Lcom/android/contacts/NickNameEditActivity;
.super Landroid/app/Activity;
.source "NickNameEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Lcom/android/contacts/NickNameEditListAdapter;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnConfirm:Landroid/widget/Button;

.field private mHeaderView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/NickNameEditActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/NickNameEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/contacts/NickNameEditActivity;->hideSoftInput()V

    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 87
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/NickNameEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 88
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 89
    return-void
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f0700a6

    invoke-virtual {p0, v0}, Lcom/android/contacts/NickNameEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mHeaderView:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/contacts/NickNameEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/contacts/NickNameEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/contacts/NickNameEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mBtnCancel:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/android/contacts/NickNameEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    .line 72
    new-instance v0, Lcom/android/contacts/NickNameEditListAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/NickNameEditListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mAdapter:Lcom/android/contacts/NickNameEditListAdapter;

    .line 73
    iget-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/NickNameEditActivity;->mAdapter:Lcom/android/contacts/NickNameEditListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/android/contacts/NickNameEditActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/contacts/NickNameEditActivity$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/NickNameEditActivity$1;-><init>(Lcom/android/contacts/NickNameEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 42
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, hint:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/NickNameEditActivity;->mHeaderView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lcom/android/contacts/NickNameEditActivity;->mAdapter:Lcom/android/contacts/NickNameEditListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/NickNameEditListAdapter;->parseFromPickIntent(Landroid/content/Intent;)V

    .line 45
    return-void

    :cond_0
    move-object v2, v0

    .line 43
    goto :goto_0
.end method

.method private returnPickerResult(Z)V
    .locals 3
    .parameter "succeed"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "numbers"

    iget-object v2, p0, Lcom/android/contacts/NickNameEditActivity;->mAdapter:Lcom/android/contacts/NickNameEditListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/NickNameEditListAdapter;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "names"

    iget-object v2, p0, Lcom/android/contacts/NickNameEditActivity;->mAdapter:Lcom/android/contacts/NickNameEditListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/NickNameEditListAdapter;->getNickNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/NickNameEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditActivity;->finish()V

    .line 58
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/NickNameEditActivity;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/NickNameEditActivity;->mAdapter:Lcom/android/contacts/NickNameEditListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/NickNameEditListAdapter;->saveNickName()I

    move-result v0

    .line 96
    .local v0, saveStatus:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_0
    :goto_1
    if-eq v0, v4, :cond_2

    move v1, v3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/contacts/NickNameEditActivity;->returnPickerResult(Z)V

    goto :goto_0

    .line 100
    :cond_1
    if-ne v0, v4, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 105
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 108
    .end local v0           #saveStatus:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditActivity;->finish()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/android/contacts/NickNameEditActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/android/contacts/NickNameEditActivity;->initResourceRefs()V

    .line 32
    invoke-virtual {p0}, Lcom/android/contacts/NickNameEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/NickNameEditActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/android/contacts/NickNameEditActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

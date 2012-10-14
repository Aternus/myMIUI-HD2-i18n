.class public abstract Lcom/android/settings/cit/CitBaseActivity;
.super Landroid/app/Activity;
.source "CitBaseActivity.java"


# instance fields
.field private mFailButton:Landroid/widget/Button;

.field private mPassButton:Landroid/widget/Button;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mTestPanelStub:Landroid/view/ViewStub;

.field protected mTestPanelTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClassName()Ljava/lang/String;
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f030012

    return v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTestPanelView()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f030013

    return v0
.end method

.method protected initResources()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->getContentView()I

    move-result v0

    const v1, 0x7f030012

    if-ne v0, v1, :cond_1

    .line 81
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mSummaryTextView:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelStub:Landroid/view/ViewStub;

    .line 83
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mPassButton:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mFailButton:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->getTestPanelView()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->getTestPanelView()I

    move-result v0

    const v1, 0x7f030013

    if-ne v0, v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    .line 94
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/cit/CitBaseActivity;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mSummaryTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p0}, Lcom/android/settings/cit/CitBaseActivity;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mPassButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/cit/CitBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cit/CitBaseActivity$1;-><init>(Lcom/android/settings/cit/CitBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mFailButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/cit/CitBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cit/CitBaseActivity$2;-><init>(Lcom/android/settings/cit/CitBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_1
    return-void

    .line 90
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitBaseActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->initResources()V

    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 45
    const/4 v0, 0x0

    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v0, v2

    .line 68
    :goto_0
    return v0

    .line 49
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cit/CitLauncherActivity;->setPassed(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/cit/CitLauncherActivity;->launchNextTest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 63
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/cit/CitLauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->finish()V

    move v0, v2

    .line 68
    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cit/CitLauncherActivity;->setFailed(Ljava/lang/String;)V

    move v0, v2

    .line 57
    goto :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c003f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/cit/CitBaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f030014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method

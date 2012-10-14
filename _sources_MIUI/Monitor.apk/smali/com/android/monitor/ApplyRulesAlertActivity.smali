.class public Lcom/android/monitor/ApplyRulesAlertActivity;
.super Landroid/app/Activity;
.source "ApplyRulesAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showActionDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 32
    const-string v1, "ApplyRulesAlertActivity"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 34
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 35
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 36
    const v1, 0x7f070046

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    packed-switch p2, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/monitor/ApplyRulesAlertActivity;->finish()V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/monitor/ApplyRulesAlertActivity;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/android/monitor/ApplyRulesAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/monitor/ApplyRulesAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 24
    invoke-virtual {p0}, Lcom/android/monitor/ApplyRulesAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 25
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, errorMsg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/monitor/ApplyRulesAlertActivity;->showActionDialog(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/monitor/ApplyRulesAlertActivity;->finish()V

    .line 54
    return-void
.end method

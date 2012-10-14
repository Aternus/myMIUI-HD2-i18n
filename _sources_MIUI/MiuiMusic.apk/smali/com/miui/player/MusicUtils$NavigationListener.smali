.class public Lcom/miui/player/MusicUtils$NavigationListener;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationListener"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    iput-object p1, p0, Lcom/miui/player/MusicUtils$NavigationListener;->mActivity:Landroid/app/Activity;

    .line 1447
    return-void
.end method


# virtual methods
.method changeTab(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 1480
    const/4 v2, 0x0

    .line 1481
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1482
    .local v0, count:I
    packed-switch p1, :pswitch_data_0

    .line 1493
    :goto_0
    if-eqz v2, :cond_1

    .line 1494
    iget-object v4, p0, Lcom/miui/player/MusicUtils$NavigationListener;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/miui/player/ui/OnlineCategoryActivity;

    if-eqz v4, :cond_0

    .line 1495
    iget-object v4, p0, Lcom/miui/player/MusicUtils$NavigationListener;->mActivity:Landroid/app/Activity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1497
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/miui/player/MusicUtils$NavigationListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    .line 1498
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1499
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1502
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/miui/player/MusicUtils$NavigationListener;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->clearAboveBottomOfParent(Landroid/app/Activity;I)Z

    .line 1503
    iget-object v4, p0, Lcom/miui/player/MusicUtils$NavigationListener;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1505
    :cond_1
    return-void

    .line 1484
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "com.miui.music.MEDIA_PLAYER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1485
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1486
    goto :goto_0

    .line 1488
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "com.miui.music.ONLINE_CATEGORY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v0, 0x1

    goto :goto_0

    .line 1482
    :pswitch_data_0
    .packed-switch 0x7f0c006a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1451
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1452
    .local v0, id:I
    const v2, 0x7f0c006b

    if-ne v0, v2, :cond_1

    .line 1453
    iget-object v2, p0, Lcom/miui/player/MusicUtils$NavigationListener;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1454
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_first_to_online"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1455
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/player/MusicUtils$NavigationListener;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/app/AlertDialog$Indicator;->Info:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800e5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080042

    new-instance v4, Lcom/miui/player/MusicUtils$NavigationListener$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/miui/player/MusicUtils$NavigationListener$1;-><init>(Lcom/miui/player/MusicUtils$NavigationListener;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1477
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1472
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/player/MusicUtils$NavigationListener;->changeTab(I)V

    goto :goto_0

    .line 1475
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/player/MusicUtils$NavigationListener;->changeTab(I)V

    goto :goto_0
.end method

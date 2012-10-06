.class final Lcom/miui/player/MusicUtils$1;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/MusicUtils;->updateGoHome(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/miui/player/MusicUtils$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1414
    iget-object v2, p0, Lcom/miui/player/MusicUtils$1;->val$a:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1415
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/miui/player/MusicUtils$1;->val$a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1416
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1417
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1419
    :cond_0
    iget-object v2, p0, Lcom/miui/player/MusicUtils$1;->val$a:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->clearAboveBottomOfParent(Landroid/app/Activity;I)Z

    .line 1420
    iget-object v2, p0, Lcom/miui/player/MusicUtils$1;->val$a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->closeDrawerActivity(Landroid/app/Activity;)V

    .line 1421
    return-void
.end method

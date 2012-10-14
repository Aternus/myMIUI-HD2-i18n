.class Lcom/android/thememanager/LocalThemeResourceListActivity$1;
.super Ljava/lang/Object;
.source "LocalThemeResourceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/LocalThemeResourceListActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/LocalThemeResourceListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    const-class v2, Lcom/android/thememanager/ComponentSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const-string v1, "META_DATA"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListActivity;->access$000(Lcom/android/thememanager/LocalThemeResourceListActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    invoke-virtual {v1, v0}, Lcom/android/thememanager/LocalThemeResourceListActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/LocalThemeResourceListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x10a0036

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 67
    return-void
.end method

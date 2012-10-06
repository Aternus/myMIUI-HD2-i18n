.class Lcom/android/thememanager/LocalThemeResourceListActivity$3;
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
    .line 83
    iput-object p1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    #calls: Lcom/android/thememanager/LocalThemeResourceListActivity;->resolveIntent()V
    invoke-static {v0}, Lcom/android/thememanager/LocalThemeResourceListActivity;->access$200(Lcom/android/thememanager/LocalThemeResourceListActivity;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    const-class v2, Lcom/android/thememanager/ThirdPartyPickersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "android.intent.extra.INTENT"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListActivity;->access$300(Lcom/android/thememanager/LocalThemeResourceListActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    const-string v1, "extra_resource_type"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    iget-wide v2, v2, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    const-string v1, "extra_resolve_info_list"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListActivity;->mThirdAppInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListActivity;->access$400(Lcom/android/thememanager/LocalThemeResourceListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    iget-wide v1, v1, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-static {v1, v2}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/thememanager/LocalThemeResourceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/LocalThemeResourceListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x10a0036

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 100
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListActivity;

    invoke-virtual {v1, v0}, Lcom/android/thememanager/LocalThemeResourceListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

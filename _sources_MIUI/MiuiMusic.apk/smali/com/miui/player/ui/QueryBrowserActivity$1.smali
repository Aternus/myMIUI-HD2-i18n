.class Lcom/miui/player/ui/QueryBrowserActivity$1;
.super Ljava/lang/Object;
.source "QueryBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/QueryBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/miui/player/ui/QueryBrowserActivity$1;->this$0:Lcom/miui/player/ui/QueryBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.music.ONLINE_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "search_key"

    iget-object v2, p0, Lcom/miui/player/ui/QueryBrowserActivity$1;->this$0:Lcom/miui/player/ui/QueryBrowserActivity;

    #getter for: Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/ui/QueryBrowserActivity;->access$300(Lcom/miui/player/ui/QueryBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity$1;->this$0:Lcom/miui/player/ui/QueryBrowserActivity;

    invoke-static {v1, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 491
    return-void
.end method

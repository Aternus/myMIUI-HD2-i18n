.class Lcom/miui/player/ui/QueryBrowserActivity$2;
.super Landroid/database/DataSetObserver;
.source "QueryBrowserActivity.java"


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
    .line 508
    iput-object p1, p0, Lcom/miui/player/ui/QueryBrowserActivity$2;->this$0:Lcom/miui/player/ui/QueryBrowserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 511
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 512
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$2;->this$0:Lcom/miui/player/ui/QueryBrowserActivity;

    #calls: Lcom/miui/player/ui/QueryBrowserActivity;->updateHintText()V
    invoke-static {v0}, Lcom/miui/player/ui/QueryBrowserActivity;->access$400(Lcom/miui/player/ui/QueryBrowserActivity;)V

    .line 513
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 517
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 518
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$2;->this$0:Lcom/miui/player/ui/QueryBrowserActivity;

    #calls: Lcom/miui/player/ui/QueryBrowserActivity;->updateHintText()V
    invoke-static {v0}, Lcom/miui/player/ui/QueryBrowserActivity;->access$400(Lcom/miui/player/ui/QueryBrowserActivity;)V

    .line 519
    return-void
.end method

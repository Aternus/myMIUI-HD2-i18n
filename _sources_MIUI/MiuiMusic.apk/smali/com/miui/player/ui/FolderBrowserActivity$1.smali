.class Lcom/miui/player/ui/FolderBrowserActivity$1;
.super Ljava/lang/Object;
.source "FolderBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/FolderBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/FolderBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/FolderBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/miui/player/ui/FolderBrowserActivity$1;->this$0:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity$1;->this$0:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->refreshAfterRecovery()V

    .line 348
    return-void
.end method

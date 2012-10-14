.class final Lcom/android/mms/data/Conversation$2;
.super Landroid/content/BroadcastReceiver;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 947
    const-string v2, "_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 948
    .local v1, threadIds:[J
    if-eqz v1, :cond_0

    .line 949
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 950
    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 949
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 953
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.class Lcom/android/settings/AllVolumeSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AllVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AllVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AllVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AllVolumeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/AllVolumeSettings$2;->this$0:Lcom/android/settings/AllVolumeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings$2;->this$0:Lcom/android/settings/AllVolumeSettings;

    invoke-virtual {v1}, Lcom/android/settings/AllVolumeSettings;->refresh()V

    .line 182
    :cond_0
    return-void
.end method

.class Lcom/miui/player/ui/PreferencesActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/miui/player/ui/PreferencesActivity$1;->this$0:Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 243
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    .line 244
    .local v0, isExternalStoreageMounted:Z
    iget-object v1, p0, Lcom/miui/player/ui/PreferencesActivity$1;->this$0:Lcom/miui/player/ui/PreferencesActivity;

    iget-object v1, v1, Lcom/miui/player/ui/PreferencesActivity;->mFilterCategoryPref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 245
    iget-object v1, p0, Lcom/miui/player/ui/PreferencesActivity$1;->this$0:Lcom/miui/player/ui/PreferencesActivity;

    iget-object v1, v1, Lcom/miui/player/ui/PreferencesActivity;->mPlayAndDownload:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 246
    return-void
.end method

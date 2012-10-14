.class Lcom/android/settings/AccountPreferenceBase$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccountPreferenceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings/AccountPreferenceBase;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/AccountPreferenceBase$1;->this$0:Lcom/android/settings/AccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/AccountPreferenceBase$1;->this$0:Lcom/android/settings/AccountPreferenceBase;

    #getter for: Lcom/android/settings/AccountPreferenceBase;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/AccountPreferenceBase;->access$000(Lcom/android/settings/AccountPreferenceBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AccountPreferenceBase$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AccountPreferenceBase$1$1;-><init>(Lcom/android/settings/AccountPreferenceBase$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

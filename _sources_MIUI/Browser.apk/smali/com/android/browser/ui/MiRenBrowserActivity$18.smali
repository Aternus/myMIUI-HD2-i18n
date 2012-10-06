.class Lcom/android/browser/ui/MiRenBrowserActivity$18;
.super Ljava/util/TimerTask;
.source "MiRenBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2138
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$18;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iput p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$18;->val$mode:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2141
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2142
    .local v0, message:Landroid/os/Message;
    iget v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$18;->val$mode:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2143
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$18;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1100(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2144
    return-void
.end method

.class Lcom/android/mms/ui/NewMessageActivity$7;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$200(Lcom/android/mms/ui/NewMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$7;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->resetDismissSuggestionListTimer()V
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$800(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 288
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

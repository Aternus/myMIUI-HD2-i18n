.class Lcom/android/calendar/EventInfoActivity$1;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    #calls: Lcom/android/calendar/EventInfoActivity;->updateView()V
    invoke-static {v0}, Lcom/android/calendar/EventInfoActivity;->access$000(Lcom/android/calendar/EventInfoActivity;)V

    goto :goto_0
.end method

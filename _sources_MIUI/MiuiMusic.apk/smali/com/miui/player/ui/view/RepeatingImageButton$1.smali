.class Lcom/miui/player/ui/view/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/view/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/view/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/view/RepeatingImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/player/ui/view/RepeatingImageButton$1;->this$0:Lcom/miui/player/ui/view/RepeatingImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/player/ui/view/RepeatingImageButton$1;->this$0:Lcom/miui/player/ui/view/RepeatingImageButton;

    const/4 v1, 0x0

    #calls: Lcom/miui/player/ui/view/RepeatingImageButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/miui/player/ui/view/RepeatingImageButton;->access$000(Lcom/miui/player/ui/view/RepeatingImageButton;Z)V

    .line 115
    iget-object v0, p0, Lcom/miui/player/ui/view/RepeatingImageButton$1;->this$0:Lcom/miui/player/ui/view/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/miui/player/ui/view/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/view/RepeatingImageButton$1;->this$0:Lcom/miui/player/ui/view/RepeatingImageButton;

    iget-object v1, p0, Lcom/miui/player/ui/view/RepeatingImageButton$1;->this$0:Lcom/miui/player/ui/view/RepeatingImageButton;

    #getter for: Lcom/miui/player/ui/view/RepeatingImageButton;->mInterval:J
    invoke-static {v1}, Lcom/miui/player/ui/view/RepeatingImageButton;->access$100(Lcom/miui/player/ui/view/RepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/player/ui/view/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    :cond_0
    return-void
.end method

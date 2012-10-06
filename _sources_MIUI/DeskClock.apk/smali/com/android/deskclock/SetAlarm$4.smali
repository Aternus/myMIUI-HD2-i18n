.class Lcom/android/deskclock/SetAlarm$4;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SetAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SetAlarm;

.field final synthetic val$revert:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SetAlarm;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    iput-object p2, p0, Lcom/android/deskclock/SetAlarm$4;->val$revert:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    #getter for: Lcom/android/deskclock/SetAlarm;->mId:I
    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$600(Lcom/android/deskclock/SetAlarm;)I

    move-result v0

    .line 156
    .local v0, newId:I
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    iget-object v2, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    #getter for: Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v2}, Lcom/android/deskclock/SetAlarm;->access$700(Lcom/android/deskclock/SetAlarm;)Lcom/android/deskclock/Alarm;

    move-result-object v2

    #calls: Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V
    invoke-static {v1, v2}, Lcom/android/deskclock/SetAlarm;->access$800(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)V

    .line 158
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    #getter for: Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;
    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$700(Lcom/android/deskclock/SetAlarm;)Lcom/android/deskclock/Alarm;

    move-result-object v1

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    invoke-static {v1, v0}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->val$revert:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm$4;->this$0:Lcom/android/deskclock/SetAlarm;

    #calls: Lcom/android/deskclock/SetAlarm;->saveAlarm()J
    invoke-static {v1}, Lcom/android/deskclock/SetAlarm;->access$500(Lcom/android/deskclock/SetAlarm;)J

    goto :goto_0
.end method

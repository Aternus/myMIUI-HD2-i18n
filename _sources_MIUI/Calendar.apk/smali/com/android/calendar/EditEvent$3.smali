.class Lcom/android/calendar/EditEvent$3;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1060
    if-nez p2, :cond_3

    .line 1061
    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$2400(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    #setter for: Lcom/android/calendar/EditEvent;->mModification:I
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$2302(Lcom/android/calendar/EditEvent;I)I

    .line 1072
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mModification:I
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2300(Lcom/android/calendar/EditEvent;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 1073
    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1074
    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1078
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v4

    .line 1061
    goto :goto_0

    .line 1063
    :cond_3
    if-ne p2, v4, :cond_5

    .line 1064
    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$2400(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v5

    :goto_3
    #setter for: Lcom/android/calendar/EditEvent;->mModification:I
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$2302(Lcom/android/calendar/EditEvent;I)I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    .line 1066
    :cond_5
    if-ne p2, v2, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    #setter for: Lcom/android/calendar/EditEvent;->mModification:I
    invoke-static {v0, v5}, Lcom/android/calendar/EditEvent;->access$2302(Lcom/android/calendar/EditEvent;I)I

    goto :goto_1

    .line 1075
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mModification:I
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2300(Lcom/android/calendar/EditEvent;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2500(Lcom/android/calendar/EditEvent;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2
.end method

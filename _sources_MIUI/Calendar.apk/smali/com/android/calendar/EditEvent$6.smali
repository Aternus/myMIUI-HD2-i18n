.class Lcom/android/calendar/EditEvent$6;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->showAllTimezone(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$lv:Landroid/widget/ListView;

.field final synthetic val$row:I


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/android/calendar/EditEvent$6;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$6;->val$lv:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/calendar/EditEvent$6;->val$row:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/calendar/EditEvent$6;->val$lv:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/calendar/EditEvent$6;->val$row:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1317
    iget-object v0, p0, Lcom/android/calendar/EditEvent$6;->val$lv:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/calendar/EditEvent$6;->val$row:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1318
    return-void
.end method

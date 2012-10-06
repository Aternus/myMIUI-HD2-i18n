.class Lcom/android/calendar/CalendarView$DismissPopup;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 3420
    iput-object p1, p0, Lcom/android/calendar/CalendarView$DismissPopup;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/android/calendar/CalendarView$DismissPopup;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/calendar/CalendarView;->access$2000(Lcom/android/calendar/CalendarView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3424
    iget-object v0, p0, Lcom/android/calendar/CalendarView$DismissPopup;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/calendar/CalendarView;->access$2000(Lcom/android/calendar/CalendarView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3426
    :cond_0
    return-void
.end method

.class Lcom/android/calendar/CalendarActivity$1;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$1;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity$1;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$1;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity$1;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 72
    return-void
.end method

.class Lcom/android/calendar/EditEvent$TimeClickListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeClickListener"
.end annotation


# instance fields
.field private mTime:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V
    .locals 0
    .parameter
    .parameter "time"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/calendar/EditEvent$TimeClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/android/calendar/EditEvent$TimeClickListener;->mTime:Landroid/text/format/Time;

    .line 340
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 343
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$TimeClickListener;->this$0:Lcom/android/calendar/EditEvent;

    new-instance v2, Lcom/android/calendar/EditEvent$TimeListener;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$TimeClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/EditEvent$TimeListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/calendar/EditEvent$TimeClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$TimeClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    iget-object v5, p0, Lcom/android/calendar/EditEvent$TimeClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 346
    return-void
.end method

.class Lcom/android/calendar/EditEvent$DateClickListener;
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
    name = "DateClickListener"
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
    .line 410
    iput-object p1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p2, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    .line 412
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 415
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    new-instance v2, Lcom/android/calendar/EditEvent$DateListener;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/EditEvent$DateListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    iget-object v5, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 417
    return-void
.end method

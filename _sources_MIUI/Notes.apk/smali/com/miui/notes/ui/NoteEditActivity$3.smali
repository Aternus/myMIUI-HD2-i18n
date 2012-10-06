.class Lcom/miui/notes/ui/NoteEditActivity$3;
.super Ljava/lang/Object;
.source "NoteEditActivity.java"

# interfaces
.implements Landroid/app/DateTimePickerDialog$OnDateTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NoteEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NoteEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NoteEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditActivity$3;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeSet(Landroid/widget/TimePicker;JII)V
    .locals 4
    .parameter "view"
    .parameter "dayInMillis"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 688
    mul-int/lit8 v2, p4, 0x3c

    add-int/2addr v2, p5

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v0, p2, v2

    .line 689
    .local v0, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 690
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity$3;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    const v3, 0x7f080007

    #calls: Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V
    invoke-static {v2, v3}, Lcom/miui/notes/ui/NoteEditActivity;->access$300(Lcom/miui/notes/ui/NoteEditActivity;I)V

    .line 695
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity$3;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    #getter for: Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;
    invoke-static {v2}, Lcom/miui/notes/ui/NoteEditActivity;->access$200(Lcom/miui/notes/ui/NoteEditActivity;)Lcom/miui/notes/model/WorkingNote;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/miui/notes/model/WorkingNote;->setAlertDate(JZ)V

    .line 693
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity$3;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    const v3, 0x7f080008

    #calls: Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V
    invoke-static {v2, v3}, Lcom/miui/notes/ui/NoteEditActivity;->access$300(Lcom/miui/notes/ui/NoteEditActivity;I)V

    goto :goto_0
.end method

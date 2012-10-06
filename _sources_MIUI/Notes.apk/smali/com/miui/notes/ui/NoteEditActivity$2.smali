.class Lcom/miui/notes/ui/NoteEditActivity$2;
.super Ljava/lang/Object;
.source "NoteEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NoteEditActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 579
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditActivity$2;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity$2;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    #getter for: Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;
    invoke-static {v0}, Lcom/miui/notes/ui/NoteEditActivity;->access$200(Lcom/miui/notes/ui/NoteEditActivity;)Lcom/miui/notes/model/WorkingNote;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/notes/model/WorkingNote;->setAlertDate(JZ)V

    .line 583
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity$2;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    const v1, 0x7f080009

    #calls: Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->access$300(Lcom/miui/notes/ui/NoteEditActivity;I)V

    .line 584
    return-void
.end method

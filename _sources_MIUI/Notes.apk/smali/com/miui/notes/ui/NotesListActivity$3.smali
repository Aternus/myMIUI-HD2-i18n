.class Lcom/miui/notes/ui/NotesListActivity$3;
.super Landroid/os/AsyncTask;
.source "NotesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesListActivity;->batchDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashSet",
        "<",
        "Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$3;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 442
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/HashSet;
    .locals 6
    .parameter "unused"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v5, "NotesListActivity"

    .line 444
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$3;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$1300(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/notes/ui/NotesListAdapter;->getCheckedWidget()Ljava/util/HashSet;

    move-result-object v0

    .line 445
    .local v0, widgets:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$3;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->isSyncMode()Z
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$1500(Lcom/miui/notes/ui/NotesListActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$3;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$3;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$1300(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/notes/ui/NotesListAdapter;->getCheckedItemIds()Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/notes/tool/DataUtils;->batchDeleteNotes(Landroid/content/ContentResolver;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-object v0

    .line 450
    :cond_1
    const-string v1, "NotesListActivity"

    const-string v1, "Delete notes error, should not happens"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :cond_2
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$3;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$3;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$1300(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/notes/ui/NotesListAdapter;->getCheckedItemIds()Ljava/util/HashSet;

    move-result-object v2

    const-wide/16 v3, -0x3

    invoke-static {v1, v2, v3, v4}, Lcom/miui/notes/tool/DataUtils;->batchMoveToFolder(Landroid/content/ContentResolver;Ljava/util/HashSet;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    const-string v1, "NotesListActivity"

    const-string v1, "Move notes to trash folder error, should not happens"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 442
    check-cast p1, Ljava/util/HashSet;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$3;->onPostExecute(Ljava/util/HashSet;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashSet;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, widgets:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    if-eqz p1, :cond_2

    .line 466
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;

    .line 467
    .local v1, widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    iget v2, v1, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 469
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$3;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iget v3, v1, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    iget v4, v1, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    #calls: Lcom/miui/notes/ui/NotesListActivity;->updateWidget(II)V
    invoke-static {v2, v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$1600(Lcom/miui/notes/ui/NotesListActivity;II)V

    goto :goto_0

    .line 472
    .end local v1           #widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    :cond_1
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$3;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 474
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

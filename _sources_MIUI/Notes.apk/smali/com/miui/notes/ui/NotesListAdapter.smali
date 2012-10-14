.class public Lcom/miui/notes/ui/NotesListAdapter;
.super Landroid/widget/CursorAdapter;
.source "NotesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    }
.end annotation


# instance fields
.field private mCheckedIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNotesCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    .line 31
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mContext:Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    .line 33
    return-void
.end method

.method private calcNotesCount()V
    .locals 4

    .prologue
    .line 147
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    .line 148
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 149
    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 150
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 151
    invoke-static {v0}, Lcom/miui/notes/ui/NoteItemData;->getNoteType(Landroid/database/Cursor;)I

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget v2, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    .line 148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const-string v2, "NotesListAdapter"

    const-string v3, "Invalid cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 42
    instance-of v1, p1, Lcom/miui/notes/ui/NotesListItem;

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Lcom/miui/notes/ui/NoteItemData;

    invoke-direct {v0, p2, p3}, Lcom/miui/notes/ui/NoteItemData;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 44
    .local v0, itemData:Lcom/miui/notes/ui/NoteItemData;
    check-cast p1, Lcom/miui/notes/ui/NotesListItem;

    .end local p1
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListAdapter;->isCheckedItem(I)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/notes/ui/NotesListItem;->bind(Landroid/content/Context;Lcom/miui/notes/ui/NoteItemData;Z)V

    .line 47
    .end local v0           #itemData:Lcom/miui/notes/ui/NoteItemData;
    :cond_0
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 143
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListAdapter;->calcNotesCount()V

    .line 144
    return-void
.end method

.method public checkAll(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/miui/notes/ui/NoteItemData;->getNoteType(Landroid/database/Cursor;)I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 120
    return-void
.end method

.method public getCheckedItemIds()Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v2, itemSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 67
    .local v3, position:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 68
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 69
    .local v1, id:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 70
    const-string v4, "NotesListAdapter"

    const-string v5, "Wrong item id, should not happen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v1           #id:Ljava/lang/Long;
    .end local v3           #position:Ljava/lang/Integer;
    :cond_2
    return-object v2
.end method

.method public getCheckedItemsCount()I
    .locals 5

    .prologue
    .line 104
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 105
    .local v2, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Boolean;>;"
    if-nez v2, :cond_0

    .line 106
    const/4 v3, 0x0

    .line 115
    .end local p0
    :goto_0
    return v3

    .line 108
    .restart local p0
    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 109
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 110
    .end local p0
    .local v0, count:I
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 115
    goto :goto_0
.end method

.method public getCheckedWidget()Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 82
    .local v3, itemSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 83
    .local v4, position:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 84
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/notes/ui/NotesListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 85
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 86
    new-instance v5, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;

    invoke-direct {v5}, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;-><init>()V

    .line 87
    .local v5, widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    new-instance v2, Lcom/miui/notes/ui/NoteItemData;

    iget-object v6, p0, Lcom/miui/notes/ui/NotesListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v0}, Lcom/miui/notes/ui/NoteItemData;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 88
    .local v2, item:Lcom/miui/notes/ui/NoteItemData;
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getWidgetId()I

    move-result v6

    iput v6, v5, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    .line 89
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getWidgetType()I

    move-result v6

    iput v6, v5, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    .line 90
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v2           #item:Lcom/miui/notes/ui/NoteItemData;
    .end local v5           #widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    :cond_1
    const-string v6, "NotesListAdapter"

    const-string v7, "Invalid cursor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v6, 0x0

    .line 100
    .end local v0           #c:Landroid/database/Cursor;
    .end local v4           #position:Ljava/lang/Integer;
    :goto_1
    return-object v6

    :cond_2
    move-object v6, v3

    goto :goto_1
.end method

.method public isAllChecked()Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListAdapter;->getCheckedItemsCount()I

    move-result v0

    .line 124
    .local v0, checkedCount:I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCheckedItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 37
    new-instance v0, Lcom/miui/notes/ui/NotesListItem;

    invoke-direct {v0, p1}, Lcom/miui/notes/ui/NotesListItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 137
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListAdapter;->calcNotesCount()V

    .line 138
    return-void
.end method

.method public setCheckedItem(IZ)V
    .locals 3
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCheckedIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

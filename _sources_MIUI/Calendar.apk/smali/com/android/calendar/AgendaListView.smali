.class public Lcom/android/calendar/AgendaListView;
.super Landroid/widget/ListView;
.source "AgendaListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AgendaListView"


# instance fields
.field private mAgendaActivity:Lcom/android/calendar/AgendaActivity;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mLazyTempView:Landroid/view/View;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .locals 2
    .parameter "agendaActivity"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Lcom/android/calendar/AgendaActivity;

    .line 60
    invoke-virtual {p0, p0}, Lcom/android/calendar/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->setChoiceMode(I)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaListView;->setVerticalScrollBarEnabled(Z)V

    .line 63
    new-instance v0, Lcom/android/calendar/AgendaWindowAdapter;

    invoke-direct {v0, p1, p0}, Lcom/android/calendar/AgendaWindowAdapter;-><init>(Lcom/android/calendar/AgendaActivity;Lcom/android/calendar/AgendaListView;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    .line 64
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/AgendaListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 67
    return-void
.end method

.method private shiftPosition(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 217
    .local v0, firstVisibleItem:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 218
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 219
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 223
    .local v1, position:I
    add-int v3, v1, p1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/AgendaListView;->setSelectionFromTop(II)V

    .line 244
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    return-void

    .line 223
    .restart local v1       #position:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 238
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaListView;->setSelection(I)V

    goto :goto_1
.end method


# virtual methods
.method public deleteSelectedEvent()V
    .locals 10

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v9

    .line 139
    .local v9, position:I
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, v9}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v8

    .line 140
    .local v8, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v8, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, v8, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    iget-wide v3, v8, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    iget-wide v5, v8, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 143
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, titlePosition:I
    const/4 v1, 0x0

    .line 79
    .local v1, rowInfo:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    :goto_0
    if-ltz v2, :cond_0

    .line 80
    iget-object v5, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v5, v2}, Lcom/android/calendar/AgendaWindowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, previousItem:Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    if-eqz v5, :cond_2

    .line 86
    .end local v0           #previousItem:Ljava/lang/Object;
    :cond_0
    iget-object v5, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget-object v6, p0, Lcom/android/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/calendar/AgendaWindowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    .line 87
    iget-object v5, p0, Lcom/android/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 88
    iget-object v3, p0, Lcom/android/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 89
    .local v3, weekDayTitleView:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 90
    .local v4, weekDayTitleViewText:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v3           #weekDayTitleView:Landroid/widget/TextView;
    .end local v4           #weekDayTitleViewText:Ljava/lang/CharSequence;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    return v5

    .line 79
    .restart local v0       #previousItem:Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 160
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFirstVisibleTime()J
    .locals 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisiblePosition()I

    move-result v1

    .line 193
    .local v1, position:I
    iget-object v2, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 194
    .local v0, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_0

    .line 195
    iget-wide v2, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 197
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .locals 5

    .prologue
    .line 164
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 165
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getChildCount()I

    move-result v0

    .line 166
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 169
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    move-object v4, v2

    .line 173
    .end local v2           #listItem:Landroid/view/View;
    :goto_1
    return-object v4

    .line 166
    .restart local v2       #listItem:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v2           #listItem:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getSelectedTime()J
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v1

    .line 178
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 180
    .local v0, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_0

    .line 181
    iget-wide v2, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 184
    .end local v0           #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 1
    .parameter "time"
    .parameter "forced"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Z)V

    .line 125
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 71
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->close()V

    .line 72
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v9, -0x1

    cmp-long v9, p4, v9

    if-eqz v9, :cond_1

    .line 99
    iget-object v9, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v9, p3}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v4

    .line 100
    .local v4, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v4, :cond_1

    .line 101
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 102
    .local v8, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v5, intent:Landroid/content/Intent;
    iget-wide v0, v4, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 104
    .local v0, begin:J
    iget-wide v2, v4, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .line 105
    .local v2, end:J
    iget-boolean v9, v4, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->allday:Z

    if-eqz v9, :cond_0

    .line 106
    iget-object v9, p0, Lcom/android/calendar/AgendaListView;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, tz:Ljava/lang/String;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 108
    .local v6, time:Landroid/text/format/Time;
    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 109
    const-string v9, "UTC"

    iput-object v9, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 110
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 111
    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 112
    invoke-virtual {v6, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 113
    const-string v9, "UTC"

    iput-object v9, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 114
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 116
    .end local v6           #time:Landroid/text/format/Time;
    .end local v7           #tz:Ljava/lang/String;
    :cond_0
    const-string v9, "beginTime"

    invoke-virtual {v5, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 117
    const-string v9, "endTime"

    invoke-virtual {v5, v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    iget-object v9, p0, Lcom/android/calendar/AgendaListView;->mAgendaActivity:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v9, v5}, Lcom/android/calendar/AgendaActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    .end local v0           #begin:J
    .end local v2           #end:J
    .end local v4           #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetInvalidated()V

    .line 255
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 252
    return-void
.end method

.method public refresh(Z)V
    .locals 5
    .parameter "forced"

    .prologue
    .line 128
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/AgendaListView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/calendar/AgendaListView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 130
    .local v0, goToTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 134
    iget-object v3, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v3, v2, p1}, Lcom/android/calendar/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Z)V

    .line 135
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 1
    .parameter "hideDeclined"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->setHideDeclinedEvents(Z)V

    .line 248
    return-void
.end method

.method public shiftSelection(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaListView;->shiftPosition(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v0

    .line 205
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 206
    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/AgendaListView;->setSelectionFromTop(II)V

    .line 208
    :cond_0
    return-void
.end method

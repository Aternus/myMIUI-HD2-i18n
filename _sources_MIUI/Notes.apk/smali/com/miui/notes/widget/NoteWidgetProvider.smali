.class public abstract Lcom/miui/notes/widget/NoteWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "NoteWidgetProvider.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bg_color_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/notes/widget/NoteWidgetProvider;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private getNoteWidgetInfo(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/widget/NoteWidgetProvider;->PROJECTION:[Ljava/lang/String;

    const-string v3, "widget_id=? AND parent_id<>?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 61
    aget v1, p3, v0

    if-eqz v1, :cond_3

    .line 62
    invoke-static {p1}, Lcom/miui/notes/tool/ResourceParser;->getDefaultBgId(Landroid/content/Context;)I

    move-result v1

    .line 63
    const-string v2, ""

    .line 64
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    const-string v3, "com.miui.notes.widget_id"

    aget v4, p3, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string v3, "com.miui.notes.widget_type"

    invoke-virtual {p0}, Lcom/miui/notes/widget/NoteWidgetProvider;->getWidgetType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    aget v3, p3, v0

    invoke-direct {p0, p1, v3}, Lcom/miui/notes/widget/NoteWidgetProvider;->getNoteWidgetInfo(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v3

    .line 70
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 72
    const-string v1, "NoteWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple message with same widget id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, p3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 78
    const-string v5, "android.intent.extra.UID"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 79
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :goto_1
    if-eqz v3, :cond_2

    .line 86
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_2
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/notes/widget/NoteWidgetProvider;->getLayoutId()I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 90
    const v5, 0x7f0b003f

    invoke-virtual {p0, v4}, Lcom/miui/notes/widget/NoteWidgetProvider;->getBgResourceId(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 91
    const-string v5, "com.miui.notes.background_color_id"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    if-eqz p4, :cond_5

    .line 97
    const v1, 0x7f0b0040

    const v2, 0x7f080004

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 99
    aget v1, p3, v0

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x800

    invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 107
    :goto_2
    const v2, 0x7f0b0040

    invoke-virtual {v3, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 108
    aget v1, p3, v0

    invoke-virtual {p2, v1, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 60
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 81
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v4

    move v4, v1

    move-object v1, v8

    goto :goto_1

    .line 102
    :cond_5
    const v4, 0x7f0b0040

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    aget v1, p3, v0

    const/high16 v4, 0x800

    invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method protected abstract getBgResourceId(I)I
.end method

.method protected abstract getLayoutId()I
.end method

.method protected abstract getWidgetType()I
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    const/4 v7, 0x0

    .line 36
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 37
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "widget_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const-string v4, "widget_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aget v6, p2, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PRIVACY_MODE_CHANGED"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 125
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 127
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    .line 128
    const-string v2, "privacy_mode_enabled"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/miui/notes/widget/NoteWidgetProvider;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    .line 132
    .end local v0           #appWidgetIds:[I
    .end local v1           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method

.method protected update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/notes/widget/NoteWidgetProvider;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    .line 56
    return-void
.end method

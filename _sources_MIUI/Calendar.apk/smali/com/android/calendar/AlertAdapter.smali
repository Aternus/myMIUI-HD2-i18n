.class public Lcom/android/calendar/AlertAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AlertAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 33
    return-void
.end method

.method public static updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 6
    .parameter "context"
    .parameter "view"
    .parameter "eventName"
    .parameter "location"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "allDay"

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 80
    :cond_0
    const p2, 0x7f080009

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2
    move-result-object p2

    .line 82
    .restart local p2
    :cond_1
    const v0, 0x7f0c000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local v0           #res:Landroid/content/res/Resources;
    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    if-eqz p8, :cond_4

    .line 89
    const/16 v5, 0x2012

    .line 94
    .local v5, flags:I
    :goto_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_2

    .line 95
    or-int/lit16 v5, v5, 0x80

    :cond_2
    move-object v0, p0

    move-wide v1, p4

    move-wide v3, p6

    .line 97
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v0           #textView:Landroid/widget/TextView;
    move-result-object p2

    .line 98
    .local p2, when:Ljava/lang/String;
    const p0, 0x7f0c0004

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local p0
    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 99
    .local p0, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const p0, 0x7f0c0005

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local p0           #textView:Landroid/widget/TextView;
    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 103
    .restart local p0       #textView:Landroid/widget/TextView;
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1
    if-nez p1, :cond_5

    .line 104
    :cond_3
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_1
    return-void

    .line 92
    .end local v5           #flags:I
    .restart local v0       #textView:Landroid/widget/TextView;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p2, eventName:Ljava/lang/String;
    :cond_4
    const/16 v5, 0x11

    .restart local v5       #flags:I
    goto :goto_0

    .line 106
    .end local v0           #textView:Landroid/widget/TextView;
    .end local p1
    .local p0, textView:Landroid/widget/TextView;
    .local p2, when:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 39
    const v2, 0x7f0c000b

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 40
    .local v14, stripe:Landroid/view/View;
    const/4 v2, 0x7

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 41
    .local v11, color:I
    invoke-virtual {v14, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    const v2, 0x7f0c000c

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 43
    .local v15, textView:Landroid/widget/TextView;
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    const v2, 0x7f0c000e

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 47
    .local v12, repeatContainer:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 48
    .local v13, rrule:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, eventName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, location:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 66
    .local v6, startMillis:J
    const/4 v2, 0x5

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 67
    .local v8, endMillis:J
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v10, v2

    .local v10, allDay:Z
    :goto_1
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 69
    invoke-static/range {v2 .. v10}, Lcom/android/calendar/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 70
    return-void

    .line 51
    .end local v4           #eventName:Ljava/lang/String;
    .end local v5           #location:Ljava/lang/String;
    .end local v6           #startMillis:J
    .end local v8           #endMillis:J
    .end local v10           #allDay:Z
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 67
    .restart local v4       #eventName:Ljava/lang/String;
    .restart local v5       #location:Ljava/lang/String;
    .restart local v6       #startMillis:J
    .restart local v8       #endMillis:J
    :cond_1
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1
.end method

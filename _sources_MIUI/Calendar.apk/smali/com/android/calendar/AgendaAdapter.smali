.class public Lcom/android/calendar/AgendaAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mDeclinedColor:I

.field private mNoTitleLabel:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    .line 48
    iget-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/AgendaAdapter;->mDeclinedColor:I

    .line 50
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 54
    const/4 v13, 0x0

    .line 58
    .local v13, holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 59
    .local v16, tag:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    move v5, v0

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    check-cast v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .line 63
    .restart local v13       #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    :cond_0
    if-nez v13, :cond_1

    .line 64
    new-instance v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .end local v13           #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    invoke-direct {v13}, Lcom/android/calendar/AgendaAdapter$ViewHolder;-><init>()V

    .line 65
    .restart local v13       #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    const v5, 0x7f0c0003

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 67
    const v5, 0x7f0c0004

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 68
    const v5, 0x7f0c0005

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v13

    iput-object v0, v1, Lcom/android/calendar/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    .line 72
    :cond_1
    const/16 v5, 0xc

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 73
    .local v15, selfAttendeeStatus:I
    const/4 v5, 0x2

    if-ne v15, v5, :cond_5

    .line 74
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/AgendaAdapter;->mDeclinedColor:I

    move v5, v0

    iput v5, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    .line 79
    :goto_0
    move-object v0, v13

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 80
    .local v17, title:Landroid/widget/TextView;
    move-object v0, v13

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v19, v0

    .line 81
    .local v19, when:Landroid/widget/TextView;
    move-object v0, v13

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v21, v0

    .line 84
    .local v21, where:Landroid/widget/TextView;
    const/4 v5, 0x5

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 85
    .local v12, color:I
    iput v12, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendarColor:I

    .line 88
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 89
    .local v18, titleString:Ljava/lang/String;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 90
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 92
    :cond_3
    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    const/4 v5, 0x7

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 97
    .local v6, begin:J
    const/16 v5, 0x8

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 98
    .local v8, end:J
    const/4 v5, 0x3

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move v11, v5

    .line 101
    .local v11, allDay:Z
    :goto_1
    if-eqz v11, :cond_7

    .line 102
    const/16 v10, 0x2000

    .line 106
    .local v10, flags:I
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 107
    or-int/lit16 v10, v10, 0x80

    :cond_4
    move-object/from16 v5, p2

    .line 110
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    .line 111
    .local v20, whenString:Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/4 v5, 0x6

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 114
    .local v14, rrule:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 115
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .end local v6           #begin:J
    move-result-object v7

    const v8, 0x7f020013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .end local v8           #end:J
    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    const/4 v5, 0x5

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 142
    :goto_3
    const/4 v5, 0x2

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 143
    .local v22, whereString:Ljava/lang/String;
    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 144
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_4
    return-void

    .line 76
    .end local v10           #flags:I
    .end local v11           #allDay:Z
    .end local v12           #color:I
    .end local v14           #rrule:Ljava/lang/String;
    .end local v17           #title:Landroid/widget/TextView;
    .end local v18           #titleString:Ljava/lang/String;
    .end local v19           #when:Landroid/widget/TextView;
    .end local v20           #whenString:Ljava/lang/String;
    .end local v21           #where:Landroid/widget/TextView;
    .end local v22           #whereString:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    iput v5, v13, Lcom/android/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    goto/16 :goto_0

    .line 98
    .restart local v6       #begin:J
    .restart local v8       #end:J
    .restart local v12       #color:I
    .restart local v17       #title:Landroid/widget/TextView;
    .restart local v18       #titleString:Ljava/lang/String;
    .restart local v19       #when:Landroid/widget/TextView;
    .restart local v21       #where:Landroid/widget/TextView;
    :cond_6
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1

    .line 104
    .restart local v11       #allDay:Z
    :cond_7
    const/4 v10, 0x1

    .restart local v10       #flags:I
    goto :goto_2

    .line 119
    .restart local v14       #rrule:Ljava/lang/String;
    .restart local v20       #whenString:Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 147
    .end local v6           #begin:J
    .end local v8           #end:J
    .restart local v22       #whereString:Ljava/lang/String;
    :cond_9
    const/16 v5, 0x8

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.class public Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;
.super Landroid/widget/TextView;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewSnippet"
.end annotation


# static fields
.field private static sEllipsis:Ljava/lang/String;


# instance fields
.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTargetString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "\u2026"

    sput-object v0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 31
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 62
    .local v15, fullTextLower:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    .line 64
    .local v28, targetStringLower:Ljava/lang/String;
    const/16 v27, 0x0

    .line 65
    .local v27, startPos:I
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v20

    .line 66
    .local v20, searchStringLength:I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    .line 68
    .local v11, bodyLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 69
    .local v16, m:Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->start()I

    move-result v27

    .line 73
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->getPaint()Landroid/text/TextPaint;

    move-result-object v30

    .line 75
    .local v30, tp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v21

    .line 76
    .local v21, searchStringWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->getWidth()I

    move-result v6

    move v0, v6

    int-to-float v0, v0

    move/from16 v29, v0

    .line 78
    .local v29, textFieldWidth:F
    const/16 v22, 0x0

    .line 79
    .local v22, snippetString:Ljava/lang/String;
    cmpl-float v6, v21, v29

    if-lez v6, :cond_2

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object v6, v0

    add-int v7, v27, v20

    move-object v0, v6

    move/from16 v1, v27

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 127
    :cond_1
    new-instance v25, Landroid/text/SpannableString;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 128
    .local v25, spannable:Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10300b2

    move-object/from16 v0, v23

    move-object v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 130
    .local v23, span1:Landroid/text/style/TextAppearanceSpan;
    new-instance v24, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10300b3

    move-object/from16 v0, v24

    move-object v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 132
    .local v24, span2:Landroid/text/style/TextAppearanceSpan;
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual/range {v24 .. v24}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v7

    invoke-virtual/range {v24 .. v24}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v8

    invoke-virtual/range {v23 .. v23}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 135
    .local v5, searchingSpan:Landroid/text/style/TextAppearanceSpan;
    const/16 v26, 0x0

    .line 136
    .local v26, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 137
    :goto_0
    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 138
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    const/16 v8, 0x21

    move-object/from16 v0, v25

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 140
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->end()I

    move-result v26

    goto :goto_0

    .line 82
    .end local v5           #searchingSpan:Landroid/text/style/TextAppearanceSpan;
    .end local v23           #span1:Landroid/text/style/TextAppearanceSpan;
    .end local v24           #span2:Landroid/text/style/TextAppearanceSpan;
    .end local v25           #spannable:Landroid/text/SpannableString;
    .end local v26           #start:I
    :cond_2
    sget-object v6, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 83
    .local v13, ellipsisWidth:F
    const/high16 v6, 0x4000

    mul-float/2addr v6, v13

    sub-float v29, v29, v6

    .line 85
    const/16 v19, -0x1

    .line 86
    .local v19, offset:I
    const/16 v26, -0x1

    .line 87
    .restart local v26       #start:I
    const/4 v14, -0x1

    .line 94
    .local v14, end:I
    :goto_1
    add-int/lit8 v19, v19, 0x1

    .line 96
    const/4 v6, 0x0

    sub-int v7, v27, v19

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 97
    .local v18, newstart:I
    add-int v6, v27, v20

    add-int v6, v6, v19

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 99
    .local v17, newend:I
    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    move/from16 v0, v17

    move v1, v14

    if-eq v0, v1, :cond_1

    .line 103
    :cond_3
    move/from16 v26, v18

    .line 104
    move/from16 v14, v17

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v26

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, candidate:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpl-float v6, v6, v29

    if-gtz v6, :cond_1

    .line 119
    const-string v6, "%s%s%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-nez v26, :cond_4

    const-string v9, ""

    :goto_2
    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v12, v7, v8

    const/4 v8, 0x2

    if-ne v14, v11, :cond_5

    const-string v9, ""

    :goto_3
    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 124
    goto :goto_1

    .line 119
    :cond_4
    sget-object v9, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object v9, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_3

    .line 142
    .end local v12           #candidate:Ljava/lang/String;
    .end local v13           #ellipsisWidth:F
    .end local v14           #end:I
    .end local v17           #newend:I
    .end local v18           #newstart:I
    .end local v19           #offset:I
    .restart local v5       #searchingSpan:Landroid/text/style/TextAppearanceSpan;
    .restart local v23       #span1:Landroid/text/style/TextAppearanceSpan;
    .restart local v24       #span2:Landroid/text/style/TextAppearanceSpan;
    .restart local v25       #spannable:Landroid/text/SpannableString;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 146
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "fullText"
    .parameter "target"

    .prologue
    .line 149
    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 150
    iput-object p1, p0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/miui/notes/ui/SearchActivity$TextViewSnippet;->requestLayout()V

    .line 153
    return-void
.end method

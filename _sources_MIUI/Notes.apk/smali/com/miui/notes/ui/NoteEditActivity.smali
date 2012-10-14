.class public Lcom/miui/notes/ui/NoteEditActivity;
.super Landroid/app/Activity;
.source "NoteEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;
.implements Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;
    }
.end annotation


# static fields
.field public static final TAG_CHECKED:Ljava/lang/String;

.field public static final TAG_UNCHECKED:Ljava/lang/String;

.field private static final sBgSelectorBtnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBgSelectorSelectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFontSelectorSelectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFontSizeBtnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEditTextList:Landroid/widget/LinearLayout;

.field private mFontSizeId:I

.field private mFontSizeSelector:Landroid/view/View;

.field private mHeadViewPanel:Landroid/view/View;

.field private mNoteBgColorSelector:Landroid/view/View;

.field private mNoteEditor:Landroid/widget/EditText;

.field private mNoteEditorPanel:Landroid/view/View;

.field private mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field mTimePickerListener:Landroid/app/DateTimePickerDialog$OnDateTimeSetListener;

.field private mUserQuery:Ljava/lang/String;

.field private mWorkingNote:Lcom/miui/notes/model/WorkingNote;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    .line 76
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0b0016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0b001e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0b0018

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0b001c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    const v1, 0x7f0b001a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    .line 85
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    .line 94
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    const v1, 0x7f0b0025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    const v1, 0x7f0b0021

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    const v1, 0x7f0b0023

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    const v1, 0x7f0b0027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    .line 102
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0026

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b0028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 v0, 0x221a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    .line 132
    const/16 v0, 0x25a1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 680
    new-instance v0, Lcom/miui/notes/ui/NoteEditActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/NoteEditActivity$3;-><init>(Lcom/miui/notes/ui/NoteEditActivity;)V

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mTimePickerListener:Landroid/app/DateTimePickerDialog$OnDateTimeSetListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/notes/ui/NoteEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->deleteCurrentNote()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/notes/ui/NoteEditActivity;)Lcom/miui/notes/model/WorkingNote;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/notes/ui/NoteEditActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V

    return-void
.end method

.method private clearSettingState()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 494
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 501
    :goto_0
    return v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 499
    goto :goto_0

    .line 501
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNewNote()V
    .locals 4

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 611
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 612
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 613
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string v1, "com.miui.notes.folder_id"

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getFolderId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 616
    return-void
.end method

.method private deleteCurrentNote()V
    .locals 6

    .prologue
    const-string v5, "NoteEditActivity"

    .line 619
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 621
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v1

    .line 622
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 623
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 627
    :goto_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->isSyncMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 628
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/notes/tool/DataUtils;->batchDeleteNotes(Landroid/content/ContentResolver;Ljava/util/HashSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    const-string v0, "NoteEditActivity"

    const-string v0, "Delete Note error"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/notes/model/WorkingNote;->markDeleted(Z)V

    .line 638
    return-void

    .line 625
    :cond_1
    const-string v1, "NoteEditActivity"

    const-string v1, "Wrong note id, should not happen"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, -0x3

    invoke-static {v1, v0, v2, v3}, Lcom/miui/notes/tool/DataUtils;->batchMoveToFolder(Landroid/content/ContentResolver;Ljava/util/HashSet;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const-string v0, "NoteEditActivity"

    const-string v0, "Move notes to trash folder error, should not happens"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getHighlightQueryResult(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 797
    new-instance v0, Landroid/text/SpannableString;

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 798
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 799
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mPattern:Ljava/util/regex/Pattern;

    .line 800
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 801
    const/4 v2, 0x0

    .line 802
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 807
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_1

    :cond_0
    move-object v1, p1

    .line 797
    goto :goto_0

    .line 810
    :cond_1
    return-object v0
.end method

.method private getListItem(Ljava/lang/String;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 814
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 815
    const v0, 0x7f0b002a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/ui/NoteEditText;

    .line 816
    iget v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v1}, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->getTexAppearanceResource(I)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/notes/ui/NoteEditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 817
    const v1, 0x7f0b0029

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 818
    new-instance v3, Lcom/miui/notes/ui/NoteEditActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/miui/notes/ui/NoteEditActivity$4;-><init>(Lcom/miui/notes/ui/NoteEditActivity;Lcom/miui/notes/ui/NoteEditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 829
    sget-object v3, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 831
    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setPaintFlags(I)V

    .line 832
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 839
    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/notes/ui/NoteEditText;->setOnTextViewChangeListener(Lcom/miui/notes/ui/NoteEditText$OnTextViewChangeListener;)V

    .line 840
    invoke-virtual {v0, p2}, Lcom/miui/notes/ui/NoteEditText;->setIndex(I)V

    .line 841
    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/miui/notes/ui/NoteEditActivity;->getHighlightQueryResult(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 842
    return-object v2

    .line 833
    :cond_0
    sget-object v3, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 834
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 835
    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setPaintFlags(I)V

    .line 836
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method private getWorkingText()Z
    .locals 9

    .prologue
    const-string v8, " "

    const-string v7, "\n"

    .line 874
    const/4 v1, 0x0

    .line 875
    .local v1, hasChecked:Z
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v5}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 878
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 879
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0b002a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/ui/NoteEditText;

    .line 880
    .local v0, edit:Lcom/miui/notes/ui/NoteEditText;
    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 881
    const v5, 0x7f0b0029

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 882
    sget-object v5, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    const/4 v1, 0x1

    .line 877
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 885
    :cond_1
    sget-object v5, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 889
    .end local v0           #edit:Lcom/miui/notes/ui/NoteEditText;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/notes/model/WorkingNote;->setWorkingText(Ljava/lang/String;)V

    .line 893
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return v1

    .line 891
    :cond_3
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/notes/model/WorkingNote;->setWorkingText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 337
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 338
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 339
    aget v1, v0, v5

    .line 340
    .local v1, x:I
    aget v2, v0, v6

    .line 341
    .local v2, y:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v2

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :cond_0
    move v3, v5

    .line 347
    :goto_0
    return v3

    :cond_1
    move v3, v6

    goto :goto_0
.end method

.method private initActivityState(Landroid/content/Intent;)Z
    .locals 13
    .parameter

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    .line 175
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    const-string v0, "android.intent.extra.UID"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 177
    const-string v2, ""

    iput-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    .line 182
    const-string v2, "intent_extra_data_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v0, "intent_extra_data_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 184
    const-string v2, "user_query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    .line 185
    const-string v2, "NoteEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++++++++++++++ The user query string is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/miui/notes/tool/DataUtils;->visibleInNoteDatabase(Landroid/content/ContentResolver;JI)Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    const v0, 0x7f080037

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V

    .line 192
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 193
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 195
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/miui/notes/model/WorkingNote;->load(Landroid/content/Context;J)Lcom/miui/notes/model/WorkingNote;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    .line 196
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    if-nez v2, :cond_2

    .line 197
    const-string v2, "NoteEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load note failed with note id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 199
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 249
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0, p0}, Lcom/miui/notes/model/WorkingNote;->setOnSettingStatusChangedListener(Lcom/miui/notes/model/WorkingNote$NoteSettingChangedListener;)V

    .line 250
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :cond_3
    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 207
    const-string v0, "com.miui.notes.folder_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 208
    const-string v0, "com.miui.notes.widget_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 210
    const-string v0, "com.miui.notes.widget_type"

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 212
    const-string v0, "com.miui.notes.background_color_id"

    invoke-static {p0}, Lcom/miui/notes/tool/ResourceParser;->getDefaultBgId(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 216
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    const-string v0, "com.miui.notes.call_date"

    const-wide/16 v7, 0x0

    invoke-virtual {p1, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 218
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    .line 219
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    const-string v0, "NoteEditActivity"

    const-string v9, "The call record number is null"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v7, v8}, Lcom/miui/notes/tool/DataUtils;->getNoteIdByPhoneNumberAndCallDate(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_5

    .line 225
    invoke-static {p0, v9, v10}, Lcom/miui/notes/model/WorkingNote;->load(Landroid/content/Context;J)Lcom/miui/notes/model/WorkingNote;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    .line 226
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    if-nez v0, :cond_6

    .line 227
    const-string v0, "NoteEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load call note failed with note id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 229
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v0, p0

    .line 232
    invoke-static/range {v0 .. v5}, Lcom/miui/notes/model/WorkingNote;->createEmptyNote(Landroid/content/Context;JIII)Lcom/miui/notes/model/WorkingNote;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    .line 234
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0, v6, v7, v8}, Lcom/miui/notes/model/WorkingNote;->convertToCallNote(Ljava/lang/String;J)V

    .line 241
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_1

    :cond_7
    move-object v0, p0

    .line 237
    invoke-static/range {v0 .. v5}, Lcom/miui/notes/model/WorkingNote;->createEmptyNote(Landroid/content/Context;JIII)Lcom/miui/notes/model/WorkingNote;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    goto :goto_2

    .line 245
    :cond_8
    const-string v0, "NoteEditActivity"

    const-string v1, "Intent not specified action, should not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 247
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private initNoteScreen()V
    .locals 6

    .prologue
    .line 260
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v3}, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->getTexAppearanceResource(I)I

    move-result v3

    invoke-virtual {v2, p0, v3}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 262
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 263
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/notes/ui/NoteEditActivity;->switchToListMode(Ljava/lang/String;)V

    .line 268
    :goto_0
    sget-object v2, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 269
    .local v1, id:Ljava/lang/Integer;
    sget-object v2, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 265
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/miui/notes/ui/NoteEditActivity;->getHighlightQueryResult(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 271
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mHeadViewPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getTitleBgResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 272
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditorPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getBgColorResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 274
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v2, v2, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvModified:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getModifiedDate()J

    move-result-wide v3

    const v5, 0x20015

    invoke-static {p0, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->showAlertHeader()V

    .line 280
    return-void
.end method

.method private initResources()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 351
    const v4, 0x7f0b000d

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mHeadViewPanel:Landroid/view/View;

    .line 352
    new-instance v4, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;-><init>(Lcom/miui/notes/ui/NoteEditActivity;Lcom/miui/notes/ui/NoteEditActivity$1;)V

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    .line 353
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const v4, 0x7f0b000e

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvModified:Landroid/widget/TextView;

    .line 354
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const v4, 0x7f0b000f

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ivAlertIcon:Landroid/widget/ImageView;

    .line 355
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const v4, 0x7f0b0010

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    .line 356
    iget-object v5, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    const v4, 0x7f0b0014

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ibSetBgColor:Landroid/widget/ImageView;

    .line 357
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v4, v4, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ibSetBgColor:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v4, 0x7f0b0012

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    .line 359
    const v4, 0x7f0b0011

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditorPanel:Landroid/view/View;

    .line 360
    const v4, 0x7f0b0015

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    .line 361
    sget-object v4, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 362
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 363
    .local v2, iv:Landroid/widget/ImageView;
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 366
    .end local v1           #id:I
    .end local v2           #iv:Landroid/widget/ImageView;
    :cond_0
    const v4, 0x7f0b0020

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    .line 367
    sget-object v4, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 368
    .restart local v1       #id:I
    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 369
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 371
    .end local v1           #id:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 372
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "pref_font_size"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    .line 378
    iget v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {}, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->getResourcesSize()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 379
    iput v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    .line 381
    :cond_2
    const v4, 0x7f0b0013

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    .line 382
    return-void
.end method

.method private isSyncMode()Z
    .locals 1

    .prologue
    .line 641
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeShortcutIconTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "content"

    .prologue
    const/16 v2, 0xa

    const-string v3, ""

    .line 948
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 949
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 950
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private saveNote()Z
    .locals 2

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWorkingText()Z

    .line 898
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->saveNote()Z

    move-result v0

    .line 899
    .local v0, saved:Z
    if-eqz v0, :cond_0

    .line 907
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->setResult(I)V

    .line 909
    :cond_0
    return v0
.end method

.method private sendTo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 604
    return-void
.end method

.method private sendToDesktop()V
    .locals 5

    .prologue
    .line 918
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 923
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 924
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 925
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string v2, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v3}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 927
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 928
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/notes/ui/NoteEditActivity;->makeShortcutIconTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f020017

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 932
    const-string v1, "duplicate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 933
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    const v1, 0x7f08002f

    invoke-direct {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V

    .line 935
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 945
    :goto_0
    return-void

    .line 942
    :cond_1
    const-string v0, "NoteEditActivity"

    const-string v1, "Send to desktop error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const v0, 0x7f080039

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V

    goto :goto_0
.end method

.method private showAlertHeader()V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v7, 0x0

    .line 283
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->hasClockAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 285
    .local v2, time:J
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getAlertDate()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ivAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    .end local v2           #time:J
    :goto_1
    return-void

    .line 288
    .restart local v2       #time:J
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v6, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getAlertDate()J

    move-result-wide v0

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    .end local v2           #time:J
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->tvAlertDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteHeaderHolder:Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;

    iget-object v0, v0, Lcom/miui/notes/ui/NoteEditActivity$HeadViewHolder;->ivAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private showTimeSettingDialog()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 704
    .local v10, initialDate:J
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getAlertDate()J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-gez v1, :cond_0

    .line 706
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 707
    .local v9, c:Ljava/util/Calendar;
    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 709
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 710
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 711
    new-instance v1, Landroid/app/DateTimePickerDialog;

    iget-object v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mTimePickerListener:Landroid/app/DateTimePickerDialog$OnDateTimeSetListener;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v2, 0xb

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v2, 0xc

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Landroid/app/DateTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DateTimePickerDialog$OnDateTimeSetListener;JIIZ)V

    invoke-virtual {v1}, Landroid/app/DateTimePickerDialog;->show()V

    .line 714
    return-void

    .line 704
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v9           #c:Ljava/util/Calendar;
    :cond_0
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getAlertDate()J

    move-result-wide v1

    move-wide v10, v1

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 955
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(II)V

    .line 956
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 959
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 960
    return-void
.end method

.method private switchToListMode(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 776
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 777
    const-string v6, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 778
    .local v4, items:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 779
    .local v2, index:I
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    .line 780
    .local v3, item:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 781
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v2}, Lcom/miui/notes/ui/NoteEditActivity;->getListItem(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 782
    add-int/lit8 v2, v2, 0x1

    .line 779
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v3           #item:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    const-string v7, ""

    invoke-direct {p0, v7, v2}, Lcom/miui/notes/ui/NoteEditActivity;->getListItem(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 790
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b002a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 792
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 793
    iget-object v6, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 794
    return-void
.end method

.method private updateWidget()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getWidgetType()I

    move-result v1

    if-nez v1, :cond_0

    .line 439
    const-class v1, Lcom/miui/notes/widget/NoteWidgetProvider_2x;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 447
    :goto_0
    const-string v1, "appWidgetIds"

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v4}, Lcom/miui/notes/model/WorkingNote;->getWidgetId()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 452
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/notes/ui/NoteEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 453
    :goto_1
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getWidgetType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 441
    const-class v1, Lcom/miui/notes/widget/NoteWidgetProvider_4x;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 443
    :cond_1
    const-string v0, "NoteEditActivity"

    const-string v1, "Unspported widget type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateWorkingTextAnyWay()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const-string v12, "NoteEditActivity"

    const-string v11, " "

    const-string v10, "\n"

    .line 402
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v7}, Lcom/miui/notes/model/WorkingNote;->getTextDataId()J

    move-result-wide v0

    .line 403
    .local v0, dataId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-nez v7, :cond_1

    .line 404
    const-string v7, "NoteEditActivity"

    const-string v7, "Text data without note id"

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 410
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 427
    :cond_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 428
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "content"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 432
    const-string v7, "NoteEditActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Note data was saved any way with length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_3
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    .line 412
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 413
    iget-object v7, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 414
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0b002a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/notes/ui/NoteEditText;

    .line 415
    .local v2, edit:Lcom/miui/notes/ui/NoteEditText;
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 416
    const v7, 0x7f0b0029

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 417
    sget-object v7, Lcom/miui/notes/ui/NoteEditActivity;->TAG_CHECKED:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 419
    :cond_5
    sget-object v7, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 424
    .end local v2           #edit:Lcom/miui/notes/ui/NoteEditText;
    .end local v3           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_6
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Wrong note editor state"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 322
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/miui/notes/ui/NoteEditActivity;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 333
    :goto_0
    return v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/miui/notes/ui/NoteEditActivity;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 331
    goto :goto_0

    .line 333
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->clearSettingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 490
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBackgroundColorChanged()V
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getBgColorId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditorPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getBgColorResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 509
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mHeadViewPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getTitleBgResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 510
    return-void
.end method

.method public onCheckListModeChanged(II)V
    .locals 4
    .parameter "oldMode"
    .parameter "newMode"

    .prologue
    .line 860
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->switchToListMode(Ljava/lang/String;)V

    .line 871
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWorkingText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/notes/ui/NoteEditActivity;->TAG_UNCHECKED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/notes/model/WorkingNote;->setWorkingText(Ljava/lang/String;)V

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mUserQuery:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/miui/notes/ui/NoteEditActivity;->getHighlightQueryResult(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 458
    .local v0, id:I
    const v1, 0x7f0b0014

    if-ne v0, v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 460
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getBgColorId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorSelectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getBgColorId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sBgSelectorBtnsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/notes/model/WorkingNote;->setBgColorId(I)V

    .line 466
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteBgColorSelector:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 467
    :cond_2
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    iget v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 469
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sFontSizeBtnsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    .line 470
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_font_size"

    iget v3, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    sget-object v1, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    iget v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 473
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWorkingText()Z

    .line 474
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->switchToListMode(Ljava/lang/String;)V

    .line 479
    :goto_1
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 476
    :cond_3
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mNoteEditor:Landroid/widget/EditText;

    iget v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v2}, Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;->getTexAppearanceResource(I)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public onClockAlertChanged(JZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 650
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 654
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/AlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 655
    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 656
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 657
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 658
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->showAlertHeader()V

    .line 659
    if-nez p3, :cond_1

    .line 660
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 673
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 670
    :cond_2
    const-string v0, "NoteEditActivity"

    const-string v1, "Clock alert setting error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const v0, 0x7f080038

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->showToast(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->setContentView(I)V

    .line 144
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->initActivityState(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->initResources()V

    goto :goto_0
.end method

.method public onEditTextDelete(ILjava/lang/String;)V
    .locals 8
    .parameter "index"
    .parameter "text"

    .prologue
    const v7, 0x7f0b002a

    const/4 v6, 0x1

    .line 718
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 722
    .local v0, childCount:I
    if-ne v0, v6, :cond_0

    .line 750
    :goto_0
    return-void

    .line 729
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 730
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/notes/ui/NoteEditText;

    sub-int v5, v2, v6

    invoke-virtual {v4, v5}, Lcom/miui/notes/ui/NoteEditText;->setIndex(I)V

    .line 729
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 737
    :cond_1
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 738
    const/4 v1, 0x0

    .line 739
    .local v1, edit:Lcom/miui/notes/ui/NoteEditText;
    if-nez p1, :cond_2

    .line 740
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #edit:Lcom/miui/notes/ui/NoteEditText;
    check-cast v1, Lcom/miui/notes/ui/NoteEditText;

    .line 746
    .restart local v1       #edit:Lcom/miui/notes/ui/NoteEditText;
    :goto_2
    invoke-virtual {v1}, Lcom/miui/notes/ui/NoteEditText;->length()I

    move-result v3

    .line 747
    .local v3, length:I
    invoke-virtual {v1, p2}, Lcom/miui/notes/ui/NoteEditText;->append(Ljava/lang/CharSequence;)V

    .line 748
    invoke-virtual {v1}, Lcom/miui/notes/ui/NoteEditText;->requestFocus()Z

    .line 749
    invoke-virtual {v1, v3}, Lcom/miui/notes/ui/NoteEditText;->setSelection(I)V

    goto :goto_0

    .line 743
    .end local v3           #length:I
    :cond_2
    iget-object v4, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    sub-int v5, p1, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #edit:Lcom/miui/notes/ui/NoteEditText;
    check-cast v1, Lcom/miui/notes/ui/NoteEditText;

    .restart local v1       #edit:Lcom/miui/notes/ui/NoteEditText;
    goto :goto_2
.end method

.method public onEditTextEnter(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0b002a

    .line 757
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 758
    const-string v0, "NoteEditActivity"

    const-string v1, "Index out of mEditTextList boundrary, should not happen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/miui/notes/ui/NoteEditActivity;->getListItem(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 763
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/ui/NoteEditText;

    .line 764
    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditText;->requestFocus()Z

    .line 765
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setSelection(I)V

    .line 766
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/ui/NoteEditText;

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setIndex(I)V

    .line 766
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 770
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 302
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NoteEditActivity;->initActivityState(Landroid/content/Intent;)Z

    .line 303
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x104

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 592
    :goto_0
    return v3

    .line 538
    :sswitch_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->createNewNote()V

    goto :goto_0

    .line 541
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 543
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 544
    const v1, 0x7f080033

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 545
    const v1, 0x104000a

    new-instance v2, Lcom/miui/notes/ui/NoteEditActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/notes/ui/NoteEditActivity$1;-><init>(Lcom/miui/notes/ui/NoteEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 555
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 558
    :sswitch_2
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 559
    sget-object v0, Lcom/miui/notes/ui/NoteEditActivity;->sFontSelectorSelectionMap:Ljava/util/Map;

    iget v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mFontSizeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 562
    :sswitch_3
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/notes/model/WorkingNote;->setCheckListMode(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 566
    :sswitch_4
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getWorkingText()Z

    .line 567
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->sendTo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :sswitch_5
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->sendToDesktop()V

    goto :goto_0

    .line 573
    :sswitch_6
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->showTimeSettingDialog()V

    goto :goto_0

    .line 576
    :sswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10803bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08005a

    new-instance v2, Lcom/miui/notes/ui/NoteEditActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/notes/ui/NoteEditActivity$2;-><init>(Lcom/miui/notes/ui/NoteEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 536
    :sswitch_data_0
    .sparse-switch
        0x7f0b0002 -> :sswitch_1
        0x7f0b0003 -> :sswitch_2
        0x7f0b0004 -> :sswitch_3
        0x7f0b0005 -> :sswitch_4
        0x7f0b0006 -> :sswitch_5
        0x7f0b0007 -> :sswitch_6
        0x7f0b0008 -> :sswitch_7
        0x7f0b002b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 387
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "NoteEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Note data was saved with length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->clearSettingState()Z

    .line 395
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->updateWorkingTextAnyWay()V

    .line 396
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0b0008

    const v5, 0x7f0b0004

    const/4 v4, 0x1

    .line 514
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->clearSettingState()Z

    .line 515
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 516
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getFolderId()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 521
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->getCheckListMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 522
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 526
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->hasClockAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 531
    :goto_2
    return v4

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 524
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 529
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const-string v3, "android.intent.extra.UID"

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 158
    if-eqz p1, :cond_0

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.UID"

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    invoke-direct {p0, v0}, Lcom/miui/notes/ui/NoteEditActivity;->initActivityState(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 167
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "NoteEditActivity"

    const-string v2, "Restoring from killed activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 256
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->initNoteScreen()V

    .line 257
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v0}, Lcom/miui/notes/model/WorkingNote;->existInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->saveNote()Z

    .line 316
    :cond_0
    const-string v0, "android.intent.extra.UID"

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v1}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 317
    const-string v0, "NoteEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save working note id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NoteEditActivity;->mWorkingNote:Lcom/miui/notes/model/WorkingNote;

    invoke-virtual {v2}, Lcom/miui/notes/model/WorkingNote;->getNoteId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method public onTextChange(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0b0029

    .line 847
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 848
    const-string v0, "NoteEditActivity"

    const-string v1, "Wrong index, should not happen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_0
    return-void

    .line 851
    :cond_0
    if-eqz p2, :cond_1

    .line 852
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity;->mEditTextList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onWidgetChanged()V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/miui/notes/ui/NoteEditActivity;->updateWidget()V

    .line 678
    return-void
.end method

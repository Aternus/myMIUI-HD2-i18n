.class public Lcom/miui/notes/ui/NotesListItem;
.super Landroid/widget/EditableListItem;
.source "NotesListItem.java"


# instance fields
.field private mAlert:Landroid/widget/ImageView;

.field private mCallName:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mIsChecked:Z

.field private mItemData:Lcom/miui/notes/ui/NoteItemData;

.field private mTime:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/EditableListItem;-><init>(Landroid/content/Context;)V

    .line 27
    const v0, 0x7f03000a

    invoke-static {p1, v0, p0}, Lcom/miui/notes/ui/NotesListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    .line 29
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTime:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    .line 32
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 33
    return-void
.end method

.method private setBackground(Lcom/miui/notes/ui/NoteItemData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getBgColorId()I

    move-result v0

    .line 82
    .local v0, id:I
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v1

    if-nez v1, :cond_5

    .line 83
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isSingle()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isOneFollowingFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getNoteBgSingleRes(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isLast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getNoteBgLastRes(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isFirst()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->isMultiFollowingFolder()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    :cond_3
    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getNoteBgFirstRes(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {v0}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getNoteBgNormalRes(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 93
    :cond_5
    invoke-static {}, Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;->getFolderBgRes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListItem;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/miui/notes/ui/NoteItemData;Z)V
    .locals 9
    .parameter "context"
    .parameter "data"
    .parameter "isChecked"

    .prologue
    const v8, 0x7f080015

    const v7, 0x7f020013

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 36
    iput-object p2, p0, Lcom/miui/notes/ui/NotesListItem;->mItemData:Lcom/miui/notes/ui/NoteItemData;

    .line 37
    iput-boolean p3, p0, Lcom/miui/notes/ui/NotesListItem;->mIsChecked:Z

    .line 38
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0004

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 42
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08005e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListItem;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getNotesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getModifiedDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0, p2}, Lcom/miui/notes/ui/NotesListItem;->setBackground(Lcom/miui/notes/ui/NoteItemData;)V

    .line 78
    return-void

    .line 45
    :cond_0
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getParentId()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getCallName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0005

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 49
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/notes/tool/DataUtils;->getFormattedSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0004

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 60
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 61
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListItem;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getNotesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/notes/tool/DataUtils;->getFormattedSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p2}, Lcom/miui/notes/ui/NoteItemData;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mAlert:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public enterEditMode(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mItemData:Lcom/miui/notes/ui/NoteItemData;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/miui/notes/ui/NotesListItem;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public getItemData()Lcom/miui/notes/ui/NoteItemData;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListItem;->mItemData:Lcom/miui/notes/ui/NoteItemData;

    return-object v0
.end method

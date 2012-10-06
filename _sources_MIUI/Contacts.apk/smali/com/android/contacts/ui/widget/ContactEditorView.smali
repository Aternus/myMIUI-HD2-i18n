.class public Lcom/android/contacts/ui/widget/ContactEditorView;
.super Lcom/android/contacts/ui/widget/BaseContactEditorView;
.source "ContactEditorView.java"


# instance fields
.field private mGeneral:Landroid/view/ViewGroup;

.field private mIsSourceReadOnly:Z

.field private mName:Lcom/android/contacts/ui/widget/GenericEditorView;

.field private mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;

.field private mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;

.field private mRawContactId:J

.field private mReadOnly:Landroid/widget/TextView;

.field private mReadOnlyName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/widget/BaseContactEditorView;-><init>(Landroid/content/Context;)V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mRawContactId:J

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ui/widget/BaseContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mRawContactId:J

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/widget/ContactEditorView;)Lcom/android/contacts/ui/widget/GenericEditorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ui/widget/ContactEditorView;)Lcom/android/contacts/ui/widget/GenericEditorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;

    return-object v0
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->onFinishInflate()V

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/ContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/PhotoEditorView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    .line 95
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mReadOnly:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/GenericEditorView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mName:Lcom/android/contacts/ui/widget/GenericEditorView;

    .line 98
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mName:Lcom/android/contacts/ui/widget/GenericEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/ui/widget/GenericEditorView;->setDeletable(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mName:Lcom/android/contacts/ui/widget/GenericEditorView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    .line 101
    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/GenericEditorView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;

    .line 102
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/ui/widget/GenericEditorView;->setDeletable(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    .line 105
    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/GenericEditorView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;

    .line 106
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/ui/widget/GenericEditorView;->setDeletable(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    .line 109
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mReadOnlyName:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/ContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    .line 112
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Lcom/android/contacts/ui/ViewIdGenerator;)V
    .locals 26
    .parameter "state"
    .parameter "source"
    .parameter "vig"

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 123
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mFocus:Landroid/view/View;

    .line 126
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 247
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/ui/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/ContactEditorView;->setId(I)V

    .line 130
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v25

    .line 135
    .local v25, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ContactsSource;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 136
    .local v15, accountType:Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0b00b3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 140
    :cond_2
    const-string v5, "_id"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/ui/widget/ContactEditorView;->mRawContactId:J

    .line 143
    const-string v5, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mHasPhotoEditor:Z

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mHasPhotoEditor:Z

    move v6, v0

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setVisibility(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v6, v0

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setEnabled(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mName:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v6, v0

    if-nez v6, :cond_7

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/contacts/ui/widget/GenericEditorView;->setEnabled(Z)V

    .line 149
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mName:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/contacts/ui/widget/GenericEditorView;->setVisibility(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mReadOnly:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mReadOnly:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0b00f6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mReadOnlyName:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/ContactsSource;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v20

    .line 164
    .local v20, kinds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/ContactsSource$DataKind;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 165
    .local v24, size:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 166
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 168
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    iget-boolean v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->editable:Z

    if-nez v5, :cond_9

    .line 165
    .end local v6           #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    :cond_3
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 143
    .end local v19           #i:I
    .end local v20           #kinds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/ContactsSource$DataKind;>;"
    .end local v24           #size:I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 144
    :cond_5
    const/16 v6, 0x8

    goto/16 :goto_1

    .line 145
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 146
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 156
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mName:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/contacts/ui/widget/GenericEditorView;->setVisibility(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mReadOnly:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mReadOnlyName:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 172
    .restart local v6       #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    .restart local v19       #i:I
    .restart local v20       #kinds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/ContactsSource$DataKind;>;"
    .restart local v24       #size:I
    :cond_9
    move-object v0, v6

    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 173
    .local v21, mimeType:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/name"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 175
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 176
    .local v7, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v5, v0

    if-nez v5, :cond_a

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mName:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v9, v0

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/ui/widget/GenericEditorView;->setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V

    goto :goto_6

    .line 179
    :cond_a
    const-string v5, "data1"

    invoke-virtual {v7, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 180
    .local v16, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mReadOnlyName:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 182
    .end local v7           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v16           #displayName:Ljava/lang/String;
    :cond_b
    const-string v5, "vnd.android.cursor.item/photo"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 184
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 185
    .restart local v7       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v7, :cond_c

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v9, v0

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V

    .line 188
    :cond_c
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v5, v0

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ui/widget/PhotoEditorView;->hasSetPhoto()Z

    move-result v5

    if-nez v5, :cond_e

    .line 189
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setVisibility(I)V

    goto/16 :goto_6

    .line 191
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setVisibility(I)V

    goto/16 :goto_6

    .line 193
    .end local v7           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_f
    const-string v5, "vnd.android.cursor.item/organization"

    iget-object v7, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 195
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 198
    .restart local v7       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v7, :cond_10

    .line 199
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 200
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Lcom/android/contacts/ui/widget/GenericEditorView;->setVisibility(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    const v8, 0x7f020064

    invoke-virtual {v5, v8}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    .line 204
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v5, v0

    if-nez v5, :cond_3

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v8, v0

    iget-object v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/ContactsSource$EditField;

    const/4 v13, 0x0

    move-object v9, v6

    move-object v11, v7

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Lcom/android/contacts/ui/widget/GenericEditorView;->setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditField;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v8, v0

    iget-object v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    const/4 v9, 0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/ContactsSource$EditField;

    const/4 v13, 0x1

    move-object v9, v6

    move-object v11, v7

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Lcom/android/contacts/ui/widget/GenericEditorView;->setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditField;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationCompany:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .end local v6           #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 212
    .local v17, fieldCompanyView:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mOrganizationTitle:Lcom/android/contacts/ui/widget/GenericEditorView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 213
    .local v18, fieldTitleView:Landroid/widget/EditText;
    if-eqz v17, :cond_3

    if-eqz v18, :cond_3

    .line 214
    new-instance v5, Lcom/android/contacts/ui/widget/ContactEditorView$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/widget/ContactEditorView$1;-><init>(Lcom/android/contacts/ui/widget/ContactEditorView;)V

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_6

    .line 232
    .end local v7           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v17           #fieldCompanyView:Landroid/widget/EditText;
    .end local v18           #fieldTitleView:Landroid/widget/EditText;
    .restart local v6       #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v5, v0

    if-nez v5, :cond_3

    .line 234
    iget-object v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    .line 236
    .local v22, parent:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    const v7, 0x7f030022

    const/4 v8, 0x0

    move-object v0, v5

    move v1, v7

    move-object/from16 v2, v22

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/ui/widget/KindSectionView;

    .line 239
    .local v23, section:Lcom/android/contacts/ui/widget/KindSectionView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/ContactEditorView;->mIsSourceReadOnly:Z

    move v5, v0

    move-object/from16 v0, v23

    move-object v1, v6

    move-object/from16 v2, p1

    move v3, v5

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/ui/widget/KindSectionView;->setState(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V

    .line 240
    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 242
    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/ui/widget/KindSectionView;->getInputFocus()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 243
    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/ui/widget/KindSectionView;->getInputFocus()Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mFocus:Landroid/view/View;

    goto/16 :goto_6
.end method

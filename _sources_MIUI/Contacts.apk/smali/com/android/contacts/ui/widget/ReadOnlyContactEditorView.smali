.class Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;
.super Lcom/android/contacts/ui/widget/BaseContactEditorView;
.source "ReadOnlyContactEditorView.java"


# instance fields
.field private mGeneral:Landroid/view/ViewGroup;

.field private mName:Landroid/widget/TextView;

.field private mPhotoStub:Landroid/view/View;

.field private mRawContactId:J

.field private mReadOnlyWarning:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/widget/BaseContactEditorView;-><init>(Landroid/content/Context;)V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mRawContactId:J

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ui/widget/BaseContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mRawContactId:J

    .line 62
    return-void
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/contacts/ui/widget/BaseContactEditorView;->onFinishInflate()V

    .line 69
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/PhotoEditorView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    .line 73
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mName:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f07009d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mReadOnlyWarning:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    .line 76
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Lcom/android/contacts/ui/ViewIdGenerator;)V
    .locals 19
    .parameter "state"
    .parameter "source"
    .parameter "vig"

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v18

    .line 98
    .local v18, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "account_name"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ContactsSource;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 100
    .local v10, accountType:Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0b00b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 104
    :cond_2
    const-string v3, "_id"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mRawContactId:J

    .line 109
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v4

    .line 110
    .local v4, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-eqz v4, :cond_6

    .line 111
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)V

    .line 112
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mHasPhotoEditor:Z

    .line 113
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 114
    .local v5, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    move v7, v0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V

    .line 115
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mHasPhotoEditor:Z

    move v3, v0

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mPhoto:Lcom/android/contacts/ui/widget/PhotoEditorView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/contacts/ui/widget/PhotoEditorView;->hasSetPhoto()Z

    move-result v3

    if-nez v3, :cond_5

    .line 116
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mPhotoStub:Landroid/view/View;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .end local v4           #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_2
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 126
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mName:Landroid/widget/TextView;

    move-object v3, v0

    const-string v4, "data1"

    invoke-virtual {v5, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mReadOnlyWarning:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0b00f6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const/4 v7, 0x0

    aput-object v10, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 133
    .local v16, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v16, :cond_7

    .line 134
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 135
    .local v15, phone:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    move-object v3, v0

    const v4, 0x7f030025

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 138
    .local v13, field:Landroid/view/View;
    const v3, 0x7f07009e

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 139
    .local v17, v:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v3, 0x7f070002

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/TextView;
    check-cast v17, Landroid/widget/TextView;

    .line 141
    .restart local v17       #v:Landroid/widget/TextView;
    const-string v3, "data1"

    invoke-virtual {v15, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 112
    .end local v13           #field:Landroid/view/View;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #phone:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v16           #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v17           #v:Landroid/widget/TextView;
    .restart local v4       #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 118
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mPhotoStub:Landroid/view/View;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 121
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mPhotoStub:Landroid/view/View;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 147
    .end local v4           #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    .restart local v16       #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_7
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 148
    .local v12, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v12, :cond_8

    .line 149
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 150
    .local v11, email:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/BaseContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    move-object v3, v0

    const v4, 0x7f030025

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 153
    .restart local v13       #field:Landroid/view/View;
    const v3, 0x7f07009e

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 154
    .restart local v17       #v:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0b003c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const v3, 0x7f070002

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/TextView;
    check-cast v17, Landroid/widget/TextView;

    .line 156
    .restart local v17       #v:Landroid/widget/TextView;
    const-string v3, "data1"

    invoke-virtual {v11, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 162
    .end local v11           #email:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13           #field:Landroid/view/View;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #v:Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 165
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/ReadOnlyContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

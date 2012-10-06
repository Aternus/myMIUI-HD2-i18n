.class public Lcom/android/contacts/ui/widget/KindSectionView;
.super Landroid/widget/LinearLayout;
.source "KindSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/contacts/model/Editor$EditorListener;


# instance fields
.field public mEditors:Landroid/view/ViewGroup;

.field private mFocus:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

.field private mReadOnly:Z

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getInputFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mFocus:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 252
    iget-object v3, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-boolean v3, v3, Lcom/android/contacts/model/ContactsSource$DataKind;->isList:Z

    if-nez v3, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    invoke-static {v3, v4}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 257
    .local v2, newValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/KindSectionView;->rebuildFromState()V

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/KindSectionView;->updateEditorsVisible()V

    .line 261
    iget-object v3, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    iget-object v4, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v5, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/android/contacts/ui/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v1

    .line 262
    .local v1, newFieldId:I
    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/widget/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, newField:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public onDeleted(Lcom/android/contacts/model/Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/KindSectionView;->updateEditorsVisible()V

    .line 97
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/KindSectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/contacts/ui/widget/KindSectionView;->setDrawingCacheEnabled(Z)V

    .line 89
    invoke-virtual {p0, v2}, Lcom/android/contacts/ui/widget/KindSectionView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 91
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 92
    return-void
.end method

.method public onRequest(I)V
    .locals 0
    .parameter "request"

    .prologue
    .line 102
    return-void
.end method

.method public rebuildFromState()V
    .locals 14

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 145
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v10

    .line 147
    .local v10, hasEntries:Z
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-boolean v1, v1, Lcom/android/contacts/model/ContactsSource$DataKind;->isList:Z

    if-nez v1, :cond_2

    .line 148
    if-eqz v10, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 151
    .local v2, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const/4 v10, 0x0

    .line 158
    .end local v2           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_1
    if-nez v10, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    invoke-static {v1, v2}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 160
    const/4 v10, 0x1

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-boolean v1, v1, Lcom/android/contacts/model/ContactsSource$DataKind;->headless:Z

    if-eqz v1, :cond_3

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/widget/KindSectionView;->setMinimumHeight(I)V

    .line 168
    :cond_3
    if-eqz v10, :cond_f

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v6, entriesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 172
    .local v13, valuesEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v13           #valuesEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_5
    const/4 v8, 0x0

    .line 177
    .local v8, entryIndex:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 178
    .local v7, entryCount:I
    :goto_1
    if-ge v8, v7, :cond_f

    .line 179
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 181
    .restart local v2       #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030021

    iget-object v4, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/GenericEditorView;

    .line 183
    .local v0, editor:Lcom/android/contacts/ui/widget/GenericEditorView;
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-boolean v4, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ui/widget/GenericEditorView;->setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V

    .line 187
    iget-object v1, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDelete:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-boolean v3, v3, Lcom/android/contacts/model/ContactsSource$DataKind;->isList:Z

    if-nez v3, :cond_6

    if-eqz v8, :cond_9

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-virtual {v0, p0}, Lcom/android/contacts/ui/widget/GenericEditorView;->setEditorListener(Lcom/android/contacts/model/Editor$EditorListener;)V

    .line 193
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    iget-object v3, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v3, v3, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 194
    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    .line 210
    :goto_3
    const-string v1, "vnd.android.cursor.item/note"

    iget-object v3, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v3, v3, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 211
    iget-object v1, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    .local v12, iconParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x30

    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 213
    const/16 v1, 0xa

    iput v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 214
    const/16 v1, 0xa

    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 215
    iget-object v1, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v1, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    .local v9, fieldParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0xa

    iput v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 219
    const/16 v1, 0xa

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 220
    iget-object v1, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .end local v9           #fieldParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #iconParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 231
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCreationTime()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCreationTime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getLastItemCreationTime()J

    move-result-wide v9

    cmp-long v1, v3, v9

    if-nez v1, :cond_8

    .line 232
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->findFirstEditText(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mFocus:Landroid/view/View;

    .line 178
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 187
    :cond_9
    const/16 v3, 0x8

    goto :goto_2

    .line 196
    :cond_a
    const/4 v1, 0x1

    if-le v7, v1, :cond_d

    .line 197
    if-nez v8, :cond_b

    .line 198
    const v1, 0x1080535

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    goto :goto_3

    .line 199
    :cond_b
    const/4 v1, 0x1

    sub-int v1, v7, v1

    if-ne v8, v1, :cond_c

    .line 200
    const v1, 0x1080532

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    goto :goto_3

    .line 202
    :cond_c
    const v1, 0x1080531

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 205
    :cond_d
    const v1, 0x1080533

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 221
    :cond_e
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    iget-object v3, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v3, v3, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    iget-object v1, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 223
    .restart local v12       #iconParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x30

    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 224
    const/16 v1, 0xa

    iput v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 225
    const/16 v1, 0xa

    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 226
    iget-object v1, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 236
    .end local v0           #editor:Lcom/android/contacts/ui/widget/GenericEditorView;
    .end local v2           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #entriesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v7           #entryCount:I
    .end local v8           #entryIndex:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #iconParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    return-void
.end method

.method public setState(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V
    .locals 3
    .parameter "kind"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    const/4 v2, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 106
    iput-object p2, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 107
    iput-boolean p3, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mReadOnly:Z

    .line 108
    iput-object p4, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    .line 110
    iget-object v0, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/android/contacts/ui/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/KindSectionView;->setId(I)V

    .line 112
    iput-object v2, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mFocus:Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/KindSectionView;->rebuildFromState()V

    .line 114
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/KindSectionView;->updateEditorsVisible()V

    .line 115
    return-void
.end method

.method protected updateEditorsVisible()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 239
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 240
    .local v0, hasChildren:Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-boolean v1, v1, Lcom/android/contacts/model/ContactsSource$DataKind;->headless:Z

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p0, v3}, Lcom/android/contacts/ui/widget/KindSectionView;->setVisibility(I)V

    .line 246
    :goto_1
    return-void

    .end local v0           #hasChildren:Z
    :cond_0
    move v0, v2

    .line 239
    goto :goto_0

    .line 243
    .restart local v0       #hasChildren:Z
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/ui/widget/KindSectionView;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/android/contacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

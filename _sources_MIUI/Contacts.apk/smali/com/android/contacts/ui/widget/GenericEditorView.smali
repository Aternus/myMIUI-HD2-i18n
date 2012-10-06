.class public Lcom/android/contacts/ui/widget/GenericEditorView;
.super Landroid/widget/LinearLayout;
.source "GenericEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/contacts/model/Editor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;
    }
.end annotation


# instance fields
.field protected mDeletable:Z

.field protected mDelete:Landroid/view/View;

.field protected mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field public mFields:Landroid/view/ViewGroup;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

.field protected mLabel:Landroid/widget/ImageView;

.field protected mListener:Lcom/android/contacts/model/Editor$EditorListener;

.field private mPendingType:Lcom/android/contacts/model/ContactsSource$EditType;

.field protected mReadOnly:Z

.field protected mState:Lcom/android/contacts/model/EntityDelta;

.field protected mType:Lcom/android/contacts/model/ContactsSource$EditType;

.field private mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDeletable:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDeletable:Z

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/widget/GenericEditorView;)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/contacts/model/ContactsSource$EditType;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/ui/widget/GenericEditorView;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/contacts/model/ContactsSource$EditType;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/ui/widget/GenericEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/contacts/ui/widget/GenericEditorView;->rebuildLabel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/ui/widget/GenericEditorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/contacts/ui/widget/GenericEditorView;->createCustomDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ui/widget/GenericEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/contacts/ui/widget/GenericEditorView;->rebuildValues()V

    return-void
.end method

.method private builedFieldView(Lcom/android/contacts/model/ContactsSource$EditField;Lcom/android/contacts/ui/ViewIdGenerator;I)Landroid/widget/EditText;
    .locals 11
    .parameter "field"
    .parameter "vig"
    .parameter "n"

    .prologue
    const/4 v10, -0x2

    .line 273
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 274
    .local v2, fieldView:Landroid/widget/EditText;
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p2, v0, v1, v3, p3}, Lcom/android/contacts/ui/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setId(I)V

    .line 275
    iget v0, p1, Lcom/android/contacts/model/ContactsSource$EditField;->titleRes:I

    if-lez v0, :cond_5

    .line 276
    iget v0, p1, Lcom/android/contacts/model/ContactsSource$EditField;->titleRes:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 281
    :cond_0
    :goto_0
    iget v8, p1, Lcom/android/contacts/model/ContactsSource$EditField;->inputType:I

    .line 282
    .local v8, inputType:I
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 283
    and-int/lit8 v0, v8, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 284
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    :cond_1
    :goto_1
    iget v0, p1, Lcom/android/contacts/model/ContactsSource$EditField;->minLines:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setMinLines(I)V

    .line 296
    iget-boolean v0, p1, Lcom/android/contacts/model/ContactsSource$EditField;->inline:Z

    if-eqz v0, :cond_2

    .line 297
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    const/high16 v0, -0x100

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 299
    const v0, -0x333334

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-boolean v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->centered:Z

    if-eqz v0, :cond_3

    .line 302
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    :cond_3
    iget-object v7, p1, Lcom/android/contacts/model/ContactsSource$EditField;->column:Ljava/lang/String;

    .line 307
    .local v7, column:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 308
    .local v9, value:Ljava/lang/String;
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v0, Lcom/android/contacts/ui/widget/GenericEditorView$1;

    invoke-direct {v0, p0, v7}, Lcom/android/contacts/ui/widget/GenericEditorView$1;-><init>(Lcom/android/contacts/ui/widget/GenericEditorView;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 324
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v1, v1, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    const/16 v0, 0x4b

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 328
    :cond_4
    return-object v2

    .line 277
    .end local v7           #column:Ljava/lang/String;
    .end local v8           #inputType:I
    .end local v9           #value:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget v0, v0, Lcom/android/contacts/model/ContactsSource$EditType;->labelRes:I

    if-lez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget v0, v0, Lcom/android/contacts/model/ContactsSource$EditType;->labelRes:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 286
    .restart local v8       #inputType:I
    :cond_6
    and-int/lit8 v0, v8, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 287
    const-string v0, "vnd.android.cursor.item/contact_event"

    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v1, v1, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 289
    new-instance v0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget-object v5, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v6, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;-><init>(Landroid/content/Context;Landroid/widget/TextView;ZLcom/android/contacts/model/ContactsSource$EditType;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 291
    :cond_7
    new-instance v0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1
.end method

.method private createCustomDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 339
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, customType:Landroid/widget/EditText;
    const/16 v2, 0x2001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 341
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 343
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0041

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 347
    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/ui/widget/GenericEditorView$2;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView$2;-><init>(Lcom/android/contacts/ui/widget/GenericEditorView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private rebuildLabel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget v0, v0, Lcom/android/contacts/model/ContactsSource$EditType;->labelIconRes:I

    if-lez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget v1, v1, Lcom/android/contacts/model/ContactsSource$EditType;->labelIconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 158
    :cond_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->iconRes:I

    if-lez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget v1, v1, Lcom/android/contacts/model/ContactsSource$DataKind;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private rebuildValues()V
    .locals 6

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-boolean v4, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ui/widget/GenericEditorView;->setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V

    .line 182
    return-void
.end method


# virtual methods
.method public createLabelDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;)Ljava/util/ArrayList;

    move-result-object v4

    .line 377
    .local v4, validTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/ContactsSource$EditType;>;"
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 380
    .local v5, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/ui/widget/GenericEditorView$3;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    const v3, 0x7f030017

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/ui/widget/GenericEditorView$3;-><init>(Lcom/android/contacts/ui/widget/GenericEditorView;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V

    .line 399
    .local v0, typeAdapter:Landroid/widget/ListAdapter;
    new-instance v7, Lcom/android/contacts/ui/widget/GenericEditorView$4;

    invoke-direct {v7, p0, v4}, Lcom/android/contacts/ui/widget/GenericEditorView$4;-><init>(Lcom/android/contacts/ui/widget/GenericEditorView;Ljava/util/List;)V

    .line 424
    .local v7, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 426
    const/16 v1, 0x50

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 467
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 434
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/GenericEditorView;->createLabelDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 439
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 442
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/GenericEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 443
    .local v1, parent:Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 445
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 446
    .local v0, count:I
    if-le v0, v5, :cond_2

    .line 447
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1080535

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 449
    sub-int v2, v0, v5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1080532

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 460
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mListener:Lcom/android/contacts/model/Editor$EditorListener;

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mListener:Lcom/android/contacts/model/Editor$EditorListener;

    invoke-interface {v2, p0}, Lcom/android/contacts/model/Editor$EditorListener;->onDeleted(Lcom/android/contacts/model/Editor;)V

    goto :goto_0

    .line 451
    :cond_2
    if-ne v0, v5, :cond_1

    .line 452
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    iget-object v3, v3, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0200df

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 455
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1080533

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 432
    :pswitch_data_0
    .packed-switch 0x7f070095
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "column"
    .parameter "value"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mListener:Lcom/android/contacts/model/Editor$EditorListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mListener:Lcom/android/contacts/model/Editor$EditorListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/contacts/model/Editor$EditorListener;->onRequest(I)V

    .line 167
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/GenericEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/GenericEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/GenericEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    .line 117
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/GenericEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDelete:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 523
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;

    move-object v3, v0

    .line 524
    .local v3, ss:Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;
    invoke-virtual {v3}, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 526
    iget-object v4, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    iget-object v5, v3, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->mVisibilities:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 527
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 528
    iget-object v4, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, v3, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->mVisibilities:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 506
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 507
    .local v3, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 509
    .local v2, ss:Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;
    iget-object v4, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 510
    .local v1, numChildren:I
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->mVisibilities:[I

    .line 511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 512
    iget-object v4, v2, Lcom/android/contacts/ui/widget/GenericEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_0
    return-object v2
.end method

.method public setDeletable(Z)V
    .locals 0
    .parameter "deletable"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDeletable:Z

    .line 129
    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/model/Editor$EditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mListener:Lcom/android/contacts/model/Editor$EditorListener;

    .line 125
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 133
    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 135
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, pos:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 137
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditField;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V
    .locals 3
    .parameter "kind"
    .parameter "field"
    .parameter "entry"
    .parameter "state"
    .parameter "option"
    .parameter "vig"

    .prologue
    const/16 v2, 0x8

    .line 258
    iput-object p1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 259
    iput-object p3, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 260
    iput-object p4, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 261
    iput-object p6, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    .line 262
    const/4 v1, -0x1

    invoke-virtual {p6, p4, p1, p3, v1}, Lcom/android/contacts/ui/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setId(I)V

    .line 263
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 266
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    const/4 v1, 0x0

    invoke-direct {p0, p2, p6, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->builedFieldView(Lcom/android/contacts/model/ContactsSource$EditField;Lcom/android/contacts/ui/ViewIdGenerator;I)Landroid/widget/EditText;

    move-result-object v0

    .line 269
    .local v0, fieldView:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    return-void
.end method

.method public setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V
    .locals 18
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 190
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 191
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 192
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 193
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mViewIdGenerator:Lcom/android/contacts/ui/ViewIdGenerator;

    .line 194
    const/4 v14, -0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/ui/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v14

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setId(I)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v14

    if-nez v14, :cond_1

    .line 198
    const/16 v14, 0x8

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setVisibility(I)V

    .line 254
    :cond_0
    return-void

    .line 201
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/GenericEditorView;->setVisibility(I)V

    .line 205
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result v10

    .line 206
    .local v10, hasTypes:Z
    if-eqz v10, :cond_2

    .line 207
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityModifier;->getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/widget/GenericEditorView;->mType:Lcom/android/contacts/model/ContactsSource$EditType;

    .line 209
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mLabel:Landroid/widget/ImageView;

    move-object v14, v0

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ui/widget/GenericEditorView;->rebuildLabel()V

    .line 212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDeletable:Z

    move v14, v0

    if-eqz v14, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDelete:Landroid/view/View;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->centered:Z

    move v14, v0

    if-eqz v14, :cond_3

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    move-object v14, v0

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 224
    const/4 v12, 0x0

    .line 226
    .local v12, n:I
    const/4 v13, 0x0

    .line 228
    .local v13, structuredPostalView:Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/ContactsSource$EditField;

    .line 229
    .local v5, field:Lcom/android/contacts/model/ContactsSource$EditField;
    add-int/lit8 v12, v12, 0x1

    .line 231
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p5

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ui/widget/GenericEditorView;->builedFieldView(Lcom/android/contacts/model/ContactsSource$EditField;Lcom/android/contacts/ui/ViewIdGenerator;I)Landroid/widget/EditText;

    move-result-object v6

    .line 233
    .local v6, fieldView:Landroid/widget/EditText;
    const-string v14, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 234
    if-nez v13, :cond_5

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f030048

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 238
    :cond_5
    const v14, 0x7f0700e9

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 239
    .local v7, group1:Landroid/widget/LinearLayout;
    const v14, 0x7f0700ea

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 240
    .local v8, group2:Landroid/widget/LinearLayout;
    const v14, 0x7f0700eb

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 242
    .local v9, group3:Landroid/widget/LinearLayout;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ge v12, v14, :cond_8

    .line 243
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 215
    .end local v5           #field:Lcom/android/contacts/model/ContactsSource$EditField;
    .end local v6           #fieldView:Landroid/widget/EditText;
    .end local v7           #group1:Landroid/widget/LinearLayout;
    .end local v8           #group2:Landroid/widget/LinearLayout;
    .end local v9           #group3:Landroid/widget/LinearLayout;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #n:I
    .end local v13           #structuredPostalView:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mDelete:Landroid/view/View;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    const/4 v15, 0x4

    :goto_2
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const/16 v15, 0x8

    goto :goto_2

    .line 244
    .restart local v5       #field:Lcom/android/contacts/model/ContactsSource$EditField;
    .restart local v6       #fieldView:Landroid/widget/EditText;
    .restart local v7       #group1:Landroid/widget/LinearLayout;
    .restart local v8       #group2:Landroid/widget/LinearLayout;
    .restart local v9       #group3:Landroid/widget/LinearLayout;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #n:I
    .restart local v13       #structuredPostalView:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v12, v14, :cond_9

    .line 245
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 246
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ne v12, v14, :cond_4

    .line 247
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 251
    .end local v7           #group1:Landroid/widget/LinearLayout;
    .end local v8           #group2:Landroid/widget/LinearLayout;
    .end local v9           #group3:Landroid/widget/LinearLayout;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/widget/GenericEditorView;->mFields:Landroid/view/ViewGroup;

    move-object v14, v0

    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

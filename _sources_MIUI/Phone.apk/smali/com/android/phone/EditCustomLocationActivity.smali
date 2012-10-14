.class public Lcom/android/phone/EditCustomLocationActivity;
.super Landroid/app/Activity;
.source "EditCustomLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditCustomLocationActivity$TextChangeListener;,
        Lcom/android/phone/EditCustomLocationActivity$QueryHandler;
    }
.end annotation


# instance fields
.field private isCreateNew:Z

.field private mBtnDone:Landroid/widget/Button;

.field private mId:I

.field private mLocationView:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;

.field private mQueryHandler:Lcom/android/phone/EditCustomLocationActivity$QueryHandler;

.field private mType:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/phone/EditCustomLocationActivity;->isCreateNew:Z

    .line 42
    iput v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mId:I

    .line 206
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EditCustomLocationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/EditCustomLocationActivity;->resetDoneButtonEnabled()V

    return-void
.end method

.method private getTypeId()I
    .locals 2

    .prologue
    .line 140
    const/4 v0, -0x1

    .line 142
    .local v0, id:I
    iget-object v1, p0, Lcom/android/phone/EditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    return v0

    .line 144
    :pswitch_0
    const/4 v0, 0x0

    .line 145
    goto :goto_0

    .line 147
    :pswitch_1
    const/4 v0, 0x1

    .line 148
    goto :goto_0

    .line 150
    :pswitch_2
    const/4 v0, 0x2

    .line 151
    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x7f07005b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetDoneButtonEnabled()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EditCustomLocationActivity;->getTypeId()I

    move-result v0

    if-ltz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private save()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, location:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/EditCustomLocationActivity;->getTypeId()I

    move-result v7

    .line 172
    .local v7, id:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "number"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "location"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    iget-boolean v0, p0, Lcom/android/phone/EditCustomLocationActivity;->isCreateNew:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mId:I

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/EditCustomLocationActivity$QueryHandler;

    sget-object v3, Landroid/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    new-array v6, v1, [Ljava/lang/String;

    iget v10, p0, Lcom/android/phone/EditCustomLocationActivity;->mId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/EditCustomLocationActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/EditCustomLocationActivity$QueryHandler;

    sget-object v1, Landroid/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v11, v2, v1, v4}, Lcom/android/phone/EditCustomLocationActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v9, 0x7f0c0283

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 104
    .local v3, number:Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/phone/EditCustomLocationActivity;->getTypeId()I

    move-result v4

    .line 105
    .local v4, typeId:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 106
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 107
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_1

    const/16 v5, 0x39

    if-le v0, v5, :cond_2

    :cond_1
    if-ne v4, v7, :cond_3

    const/16 v5, 0x23

    if-ne v0, v5, :cond_3

    .line 105
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_3
    const/4 v1, 0x0

    .line 111
    .local v1, errorMsg:Ljava/lang/String;
    if-ne v4, v7, :cond_5

    .line 112
    const v5, 0x7f0c0284

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f0c0279

    invoke-virtual {p0, v7}, Lcom/android/phone/EditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/EditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_4
    :goto_2
    if-eqz v1, :cond_0

    .line 123
    iget-object v5, p0, Lcom/android/phone/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_5
    if-nez v4, :cond_6

    .line 115
    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0c0277

    invoke-virtual {p0, v6}, Lcom/android/phone/EditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v9, v5}, Lcom/android/phone/EditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 117
    :cond_6
    if-ne v4, v6, :cond_4

    .line 118
    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0c0278

    invoke-virtual {p0, v6}, Lcom/android/phone/EditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v9, v5}, Lcom/android/phone/EditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 128
    .end local v0           #c:C
    .end local v1           #errorMsg:Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/EditCustomLocationActivity;->save()V

    goto :goto_0

    .line 131
    .end local v2           #i:I
    .end local v3           #number:Ljava/lang/CharSequence;
    .end local v4           #typeId:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/EditCustomLocationActivity;->finish()V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f07005b

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v3, 0x7f030009

    invoke-virtual {p0, v3}, Lcom/android/phone/EditCustomLocationActivity;->setContentView(I)V

    .line 49
    const v3, 0x7f070058

    invoke-virtual {p0, v3}, Lcom/android/phone/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    .line 50
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/android/phone/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    .line 52
    new-instance v1, Lcom/android/phone/EditCustomLocationActivity$TextChangeListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/phone/EditCustomLocationActivity$TextChangeListener;-><init>(Lcom/android/phone/EditCustomLocationActivity;Lcom/android/phone/EditCustomLocationActivity$1;)V

    .line 54
    .local v1, textChangeListener:Lcom/android/phone/EditCustomLocationActivity$TextChangeListener;
    iget-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 55
    iget-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    const v3, 0x7f07001d

    invoke-virtual {p0, v3}, Lcom/android/phone/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    .line 58
    iget-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    const v3, 0x7f07001e

    invoke-virtual {p0, v3}, Lcom/android/phone/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v3, 0x7f07005a

    invoke-virtual {p0, v3}, Lcom/android/phone/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    .line 63
    iget-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    new-instance v4, Lcom/android/phone/EditCustomLocationActivity$1;

    invoke-direct {v4, p0}, Lcom/android/phone/EditCustomLocationActivity$1;-><init>(Lcom/android/phone/EditCustomLocationActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/EditCustomLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action_add_custom_location"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/EditCustomLocationActivity;->isCreateNew:Z

    .line 75
    iget-boolean v3, p0, Lcom/android/phone/EditCustomLocationActivity;->isCreateNew:Z

    if-nez v3, :cond_0

    .line 76
    const-string v3, "_id"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mId:I

    .line 77
    iget-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    const-string v4, "location"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-string v3, "type"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 91
    invoke-virtual {p0, v7}, Lcom/android/phone/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    .end local v2           #type:I
    :cond_0
    :goto_0
    new-instance v3, Lcom/android/phone/EditCustomLocationActivity$QueryHandler;

    invoke-direct {v3, p0, p0}, Lcom/android/phone/EditCustomLocationActivity$QueryHandler;-><init>(Lcom/android/phone/EditCustomLocationActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/EditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/EditCustomLocationActivity$QueryHandler;

    .line 97
    return-void

    .line 82
    .restart local v2       #type:I
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/android/phone/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 85
    :pswitch_1
    const v3, 0x7f07005c

    invoke-virtual {p0, v3}, Lcom/android/phone/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 88
    :pswitch_2
    const v3, 0x7f07005d

    invoke-virtual {p0, v3}, Lcom/android/phone/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

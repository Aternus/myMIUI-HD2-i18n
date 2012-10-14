.class Lcom/android/settings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final info:Z

.field private mEvent:Ljava/lang/String;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsMethod:I

.field private mWpsPin:Landroid/widget/TextView;

.field private mWpsSsid:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;IZ)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "event"
    .parameter "info"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object p2, p0, Lcom/android/settings/wifi/WpsDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    .line 74
    iput-boolean p4, p0, Lcom/android/settings/wifi/WpsDialog;->info:Z

    .line 75
    if-eqz p4, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mEvent:Ljava/lang/String;

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030065

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    const v1, 0x7f0c00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method private loadWpsSsid(Landroid/widget/Spinner;)V
    .locals 10
    .parameter "spinner"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 241
    .local v1, context:Landroid/content/Context;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v7, wpsSsidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v8, 0x7f09013d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v0, v1, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 246
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 247
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 249
    iget-object v8, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 250
    .local v5, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v5, :cond_3

    .line 251
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 253
    .local v4, result:Landroid/net/wifi/ScanResult;
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "[IBSS]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "-EAP-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 259
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "WPS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 261
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 263
    .local v6, wpsSsid:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int v3, v8, v9

    .local v3, j:I
    :goto_1
    if-lez v3, :cond_1

    .line 264
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 269
    :cond_1
    if-nez v3, :cond_0

    .line 270
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 263
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 275
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #j:I
    .end local v4           #result:Landroid/net/wifi/ScanResult;
    .end local v6           #wpsSsid:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private showWpsFields()V
    .locals 2

    .prologue
    const v1, 0x7f0c014f

    .line 220
    iget v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->loadWpsSsid(Landroid/widget/Spinner;)V

    goto :goto_0
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 147
    iget v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getWpsPin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->wpsPinCheck(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private wpsPinCheck(Ljava/lang/String;)I
    .locals 12
    .parameter "pin"

    .prologue
    .line 157
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 161
    .local v0, PIN:J
    const-wide/16 v2, 0x0

    .line 162
    .local v2, accum:J
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 164
    .local v5, len:I
    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 165
    const/4 v6, -0x1

    .line 183
    .end local v0           #PIN:J
    .end local v2           #accum:J
    .end local v5           #len:I
    :goto_0
    return v6

    .line 158
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 159
    .local v4, ex:Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    goto :goto_0

    .line 167
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #PIN:J
    .restart local v2       #accum:J
    .restart local v5       #len:I
    :cond_0
    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 168
    const-wide/16 v6, 0x3

    const-wide/32 v8, 0x989680

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 169
    const-wide/16 v6, 0x1

    const-wide/32 v8, 0xf4240

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 170
    const-wide/16 v6, 0x3

    const-wide/32 v8, 0x186a0

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 171
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x2710

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 172
    const-wide/16 v6, 0x3

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 173
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x64

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 174
    const-wide/16 v6, 0x3

    const-wide/16 v8, 0xa

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 175
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 177
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 178
    const/4 v6, 0x0

    goto :goto_0

    .line 180
    :cond_1
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 181
    const/4 v6, 0x0

    goto :goto_0

    .line 183
    :cond_2
    const/4 v6, -0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->validate()V

    .line 201
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 197
    return-void
.end method

.method getWpsMethod()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    return v0
.end method

.method getWpsPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getWpsSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 86
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 191
    return-void

    .line 187
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030067

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 101
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->setView(Landroid/view/View;)V

    .line 102
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->setInverseBackgroundForced(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 106
    .local v2, resources:Landroid/content/res/Resources;
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 108
    iget-boolean v3, p0, Lcom/android/settings/wifi/WpsDialog;->info:Z

    if-nez v3, :cond_1

    .line 109
    const v3, 0x7f090132

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->setTitle(I)V

    .line 110
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v4, 0x7f0c014c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v4, 0x7f0c016c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    const v3, 0x7f090147

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WpsDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v3, v4}, Lcom/android/settings/wifi/WpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    const v3, 0x7f090166

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WpsDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v3, v4}, Lcom/android/settings/wifi/WpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->validate()V

    .line 130
    :cond_0
    return-void

    .line 116
    :cond_1
    const v3, 0x7f090140

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->setTitle(I)V

    .line 117
    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v4, 0x7f0c014b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 119
    .local v1, group:Landroid/view/ViewGroup;
    const v3, 0x7f09014c

    iget-object v4, p0, Lcom/android/settings/wifi/WpsDialog;->mEvent:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/wifi/WpsDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 121
    const v3, 0x7f090148

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WpsDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v3, v4}, Lcom/android/settings/wifi/WpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 204
    iput p3, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    .line 205
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->showWpsFields()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->validate()V

    .line 207
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 210
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 194
    return-void
.end method

.class public Lcom/android/phone/SmscAddressSettingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SmscAddressSettingActivity.java"


# instance fields
.field private final WAIT_TIMEOUT:I

.field private isShowing:Z

.field private mEditTextSmscAddress:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mNeedAddressType:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSmscAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 45
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->WAIT_TIMEOUT:I

    .line 50
    iput-boolean v1, p0, Lcom/android/phone/SmscAddressSettingActivity;->isShowing:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/phone/SmscAddressSettingActivity;->mNeedAddressType:Z

    .line 61
    new-instance v0, Lcom/android/phone/SmscAddressSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SmscAddressSettingActivity$1;-><init>(Lcom/android/phone/SmscAddressSettingActivity;)V

    iput-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SmscAddressSettingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->isShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/SmscAddressSettingActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SmscAddressSettingActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/phone/SmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/SmscAddressSettingActivity;->smscToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SmscAddressSettingActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/SmscAddressSettingActivity;->stringToSmsc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SmscAddressSettingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SmscAddressSettingActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getSmscChars(Ljava/lang/String;I)[C
    .locals 3
    .parameter "str"
    .parameter "byteIndex"

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 207
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 208
    .local v0, chars:[C
    const/4 v1, 0x0

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 209
    const/4 v1, 0x1

    mul-int/lit8 v2, p2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    move-object v1, v0

    .line 213
    .end local v0           #chars:[C
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSmscInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "str"
    .parameter "byteIndex"

    .prologue
    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 199
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private smscToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "smsc"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 162
    const/16 v8, 0x2c

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 163
    .local v4, indexOfComma:I
    if-lez v4, :cond_0

    .line 164
    iput-boolean v10, p0, Lcom/android/phone/SmscAddressSettingActivity;->mNeedAddressType:Z

    .line 165
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 166
    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    :cond_0
    if-eqz p1, :cond_5

    sget-boolean v8, Landroid/os/Build;->IS_NEXUS_S:Z

    if-nez v8, :cond_1

    sget-boolean v8, Landroid/os/Build;->IS_I9000:Z

    if-eqz v8, :cond_5

    .line 171
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/android/phone/SmscAddressSettingActivity;->getSmscInt(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, byteCount:I
    if-lt v0, v10, :cond_5

    .line 174
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/phone/SmscAddressSettingActivity;->getSmscInt(Ljava/lang/String;I)I

    move-result v7

    .line 175
    .local v7, ton_npi:I
    const/16 v8, 0x5b

    if-ne v7, v8, :cond_5

    .line 176
    const/16 v8, 0x2b

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 178
    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/phone/SmscAddressSettingActivity;->getSmscChars(Ljava/lang/String;I)[C

    move-result-object v2

    .line 179
    .local v2, chars:[C
    if-eqz v2, :cond_3

    .line 180
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    array-length v8, v2

    if-ge v5, v8, :cond_3

    .line 181
    aget-char v1, v2, v5

    .line 182
    .local v1, c:C
    const/16 v8, 0x66

    if-eq v1, v8, :cond_2

    const/16 v8, 0x46

    if-eq v1, v8, :cond_2

    .line 183
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 177
    .end local v1           #c:C
    .end local v5           #j:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    .end local v2           #chars:[C
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 194
    .end local v0           #byteCount:I
    .end local v3           #i:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #ton_npi:I
    :cond_5
    :goto_2
    return-object p1

    .line 191
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private stringToSmsc(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "string"

    .prologue
    const/16 v11, 0x30

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "\","

    const-string v12, "\""

    .line 218
    if-eqz p1, :cond_3

    sget-boolean v7, Landroid/os/Build;->IS_NEXUS_S:Z

    if-nez v7, :cond_0

    sget-boolean v7, Landroid/os/Build;->IS_I9000:Z

    if-eqz v7, :cond_3

    .line 219
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v4

    .line 220
    .local v4, number:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, effective:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 225
    .local v2, effectiveLength:I
    div-int/lit8 v0, v2, 0x2

    .line 226
    .local v0, byteLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 227
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_1
    and-int/lit8 v7, v2, 0x1

    if-ne v7, v10, :cond_2

    .line 231
    const/16 v7, 0x66

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    sub-int v7, v2, v10

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    :cond_2
    const-string v7, "91"

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    div-int/lit8 v6, v7, 0x2

    .line 236
    .local v6, totalLength:I
    const/16 v7, 0xa

    if-lt v6, v7, :cond_7

    .line 237
    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 242
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    .end local v0           #byteLength:I
    .end local v1           #effective:Ljava/lang/String;
    .end local v2           #effectiveLength:I
    .end local v3           #i:I
    .end local v4           #number:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #totalLength:I
    :cond_3
    iget-boolean v7, p0, Lcom/android/phone/SmscAddressSettingActivity;->mNeedAddressType:Z

    if-eqz v7, :cond_6

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_4

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_5

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_8

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_8

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_8

    .line 249
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "145"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    :cond_6
    :goto_2
    return-object p1

    .line 239
    .restart local v0       #byteLength:I
    .restart local v1       #effective:Ljava/lang/String;
    .restart local v2       #effectiveLength:I
    .restart local v3       #i:I
    .restart local v4       #number:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    .restart local v6       #totalLength:I
    :cond_7
    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v5, v9, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 251
    .end local v0           #byteLength:I
    .end local v1           #effective:Ljava/lang/String;
    .end local v2           #effectiveLength:I
    .end local v3           #i:I
    .end local v4           #number:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #totalLength:I
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "129"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 259
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 261
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 262
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/SmscAddressSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 265
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    .line 266
    iget-object v1, p0, Lcom/android/phone/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 267
    iget-object v1, p0, Lcom/android/phone/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 270
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0c01ce

    invoke-virtual {p0, v1}, Lcom/android/phone/SmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 271
    iget-object v1, p0, Lcom/android/phone/SmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 272
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/phone/SmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 273
    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 274
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/phone/SmscAddressSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 275
    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/SmscAddressSettingActivity;->setupAlert()V

    .line 278
    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/phone/SmscAddressSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/SmscAddressSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/SmscAddressSettingActivity$2;-><init>(Lcom/android/phone/SmscAddressSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->isShowing:Z

    .line 310
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 298
    iget-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 299
    iget-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SmscAddressSettingActivity;->isShowing:Z

    .line 303
    return-void
.end method

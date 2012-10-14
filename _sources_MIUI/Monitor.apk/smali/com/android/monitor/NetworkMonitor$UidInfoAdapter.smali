.class Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UidInfoAdapter"
.end annotation


# instance fields
.field private mActiveUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisplaySystemApp:Z

.field private mMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mNonSystemUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/android/monitor/NetworkMonitor;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mDisplaySystemApp:Z

    .line 316
    new-instance v0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$1;-><init>(Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 338
    new-instance v0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$2;-><init>(Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 192
    iput-object p2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "display_system_app"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mDisplaySystemApp:Z

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mAllUids:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mNonSystemUids:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    .line 198
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 13
    .parameter "position"
    .parameter "view"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getItem(I)Lcom/android/monitor/NetworkMonitor$UidInfo;

    move-result-object v2

    .line 276
    .local v2, u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-nez v2, :cond_0

    .line 314
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/NetworkMonitor$ListEntry;

    .line 281
    .local v1, entry:Lcom/android/monitor/NetworkMonitor$ListEntry;
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$100(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/monitor/NetworkMonitor$UidInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mNetworkMonitorEnable:Z
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$200(Lcom/android/monitor/NetworkMonitor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    const v3, 0x7f090009

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    sget-boolean v3, Lcom/android/monitor/NetworkMonitor;->mSupportUidNetwork:Z

    if-eqz v3, :cond_1

    .line 286
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text1:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$300(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f070021

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileRxBytes:[J

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    iget-object v11, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileTxBytes:[J

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    add-long/2addr v9, v11

    invoke-static {v8, v9, v10}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text2:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$400(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f070022

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mRxBytes:[J

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    iget-object v11, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mTxBytes:[J

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    add-long/2addr v9, v11

    invoke-static {v8, v9, v10}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_1
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->icon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$500(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/monitor/NetworkMonitor$UidInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v3}, Lcom/android/monitor/Firewall;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 308
    .local v0, enabled:Z
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$600(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 309
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$700(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 310
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$600(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableMobile:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$700(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 312
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$700(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 313
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$600(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 294
    .end local v0           #enabled:Z
    :cond_1
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text1:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$300(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f07002f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mTxBytes:[J

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-static {v8, v9, v10}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text2:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$400(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f070030

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mRxBytes:[J

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-static {v8, v9, v10}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 302
    :cond_2
    const v3, 0x7f090009

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private createView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 361
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 363
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 364
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/android/monitor/NetworkMonitor$ListEntry;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;-><init>(Lcom/android/monitor/NetworkMonitor$1;)V

    .line 365
    .local v0, entry:Lcom/android/monitor/NetworkMonitor$ListEntry;
    const v3, 0x1020041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text:Landroid/widget/TextView;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$102(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 366
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text1:Landroid/widget/TextView;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$302(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 367
    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->text2:Landroid/widget/TextView;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$402(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 368
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->icon:Landroid/widget/ImageView;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$502(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 369
    const v3, 0x7f090005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$602(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 370
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    #setter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v0, v3}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$702(Lcom/android/monitor/NetworkMonitor$ListEntry;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 371
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->mobile:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$600(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mMobileListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 372
    #getter for: Lcom/android/monitor/NetworkMonitor$ListEntry;->wifi:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor$ListEntry;->access$700(Lcom/android/monitor/NetworkMonitor$ListEntry;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 373
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 374
    return-object v2
.end method

.method private getCheckedMode(I)I
    .locals 1
    .parameter "checkedCount"

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 245
    const/4 v0, 0x2

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setData()V
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mDisplaySystemApp:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mAllUids:Ljava/util/List;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$1400(Lcom/android/monitor/NetworkMonitor;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->sort(Ljava/util/Comparator;)V

    .line 397
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mNonSystemUids:Ljava/util/List;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public enableMobile(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 412
    .local v1, u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 413
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableMobile:Z

    goto :goto_0

    .line 415
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableMobile:Z

    goto :goto_0

    .line 418
    .end local v1           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->notifyDataSetChanged()V

    .line 419
    return-void
.end method

.method public enableWifi(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 400
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 401
    .local v1, u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 402
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    goto :goto_0

    .line 404
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    goto :goto_0

    .line 407
    .end local v1           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->notifyDataSetChanged()V

    .line 408
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/monitor/NetworkMonitor$UidInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 253
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 254
    :cond_0
    const/4 v0, 0x0

    .line 257
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/monitor/NetworkMonitor$UidInfo;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getItem(I)Lcom/android/monitor/NetworkMonitor$UidInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 262
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMobileCheckedMode()I
    .locals 4

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 223
    .local v2, u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    iget-boolean v3, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableMobile:Z

    if-eqz v3, :cond_0

    .line 224
    add-int/lit8 v0, v0, 0x1

    .line 221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v2           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCheckedMode(I)I

    move-result v3

    return v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 267
    if-nez p2, :cond_0

    .line 268
    invoke-direct {p0, p1, p3}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 270
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->bindView(ILandroid/view/View;)V

    .line 271
    return-object p2
.end method

.method public getWifiCheckedMode()I
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 234
    .local v2, u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    iget-boolean v3, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    if-eqz v3, :cond_0

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 232
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v2           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->getCheckedMode(I)I

    move-result v3

    return v3
.end method

.method public refresh(Landroid/util/SparseArray;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/NetworkMonitor$UidInfo;>;"
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mAllUids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 202
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mNonSystemUids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 203
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 204
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 205
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 206
    .local v2, u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mAllUids:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-boolean v3, v2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIsSystemApp:Z

    if-nez v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mNonSystemUids:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v2           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->setData()V

    .line 212
    return-void
.end method

.method public setDisplaySystemApp(Z)V
    .locals 1
    .parameter "display"

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mDisplaySystemApp:Z

    if-eq p1, v0, :cond_0

    .line 385
    iput-boolean p1, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mDisplaySystemApp:Z

    .line 386
    invoke-direct {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->setData()V

    .line 388
    :cond_0
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/monitor/NetworkMonitor$UidInfo;>;"
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->mActiveUids:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 379
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->this$0:Lcom/android/monitor/NetworkMonitor;

    #setter for: Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;
    invoke-static {v0, p1}, Lcom/android/monitor/NetworkMonitor;->access$1402(Lcom/android/monitor/NetworkMonitor;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 380
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->notifyDataSetChanged()V

    .line 381
    return-void
.end method

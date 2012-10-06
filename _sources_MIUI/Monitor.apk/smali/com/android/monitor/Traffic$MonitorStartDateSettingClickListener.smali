.class Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorStartDateSettingClickListener"
.end annotation


# instance fields
.field private mBeforeChanged:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/monitor/Traffic;


# direct methods
.method private constructor <init>(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;-><init>(Lcom/android/monitor/Traffic;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->mBeforeChanged:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->mBeforeChanged:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/monitor/Traffic;->access$1000(Lcom/android/monitor/Traffic;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 272
    .local v1, view:Landroid/view/View;
    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 273
    .local v0, date:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-virtual {v2}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_traffic_day"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    new-instance v2, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;

    invoke-direct {v2, p0, v0}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener$1;-><init>(Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 317
    iget-object v2, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;
    invoke-static {v2}, Lcom/android/monitor/Traffic;->access$1400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/DialogTrafficSettingItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/monitor/DialogTrafficSettingItem;->showDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.class Lcom/android/monitor/Traffic$TrafficSettingClickListener;
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
    name = "TrafficSettingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/Traffic;


# direct methods
.method private constructor <init>(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/monitor/Traffic$TrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/monitor/Traffic$TrafficSettingClickListener;-><init>(Lcom/android/monitor/Traffic;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 221
    iget-object v7, p0, Lcom/android/monitor/Traffic$TrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-virtual {v7}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 222
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "mobile_traffic_limit"

    const-wide/32 v8, 0x3200000

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 225
    .local v1, limit:J
    const-string v7, "mobile_traffic_threshold"

    const-wide/32 v8, 0x2800000

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 229
    .local v4, threshold:J
    iget-object v7, p0, Lcom/android/monitor/Traffic$TrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/android/monitor/Traffic;->access$1000(Lcom/android/monitor/Traffic;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 230
    .local v6, view:Landroid/view/View;
    const v7, 0x7f09002d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/monitor/Traffic;->byteToMib(J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const v7, 0x7f09002e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 233
    .local v3, sb:Landroid/widget/SeekBar;
    const/16 v7, 0x64

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 234
    iget-object v7, p0, Lcom/android/monitor/Traffic$TrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #calls: Lcom/android/monitor/Traffic;->convertValueToSeekBarProgress(JJ)I
    invoke-static {v7, v1, v2, v4, v5}, Lcom/android/monitor/Traffic;->access$1100(Lcom/android/monitor/Traffic;JJ)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 235
    new-instance v7, Lcom/android/monitor/Traffic$TrafficSettingClickListener$1;

    invoke-direct {v7, p0}, Lcom/android/monitor/Traffic$TrafficSettingClickListener$1;-><init>(Lcom/android/monitor/Traffic$TrafficSettingClickListener;)V

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 262
    iget-object v7, p0, Lcom/android/monitor/Traffic$TrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;
    invoke-static {v7}, Lcom/android/monitor/Traffic;->access$1200(Lcom/android/monitor/Traffic;)Lcom/android/monitor/DialogTrafficSettingItem;

    move-result-object v7

    iget-object v8, p0, Lcom/android/monitor/Traffic$TrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    const v9, 0x7f07000d

    invoke-virtual {v8, v9}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/monitor/DialogTrafficSettingItem;->showDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 263
    return-void
.end method

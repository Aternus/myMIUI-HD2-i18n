.class Lcom/android/monitor/Traffic$AdjustTrafficSettingClickListener;
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
    name = "AdjustTrafficSettingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/Traffic;


# direct methods
.method private constructor <init>(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/monitor/Traffic$AdjustTrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/android/monitor/Traffic$AdjustTrafficSettingClickListener;-><init>(Lcom/android/monitor/Traffic;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/monitor/Traffic$AdjustTrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$1000(Lcom/android/monitor/Traffic;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/monitor/Traffic$AdjustTrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mAdjustUsedTraffic:Lcom/android/monitor/DialogTrafficSettingItem;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$1500(Lcom/android/monitor/Traffic;)Lcom/android/monitor/DialogTrafficSettingItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/Traffic$AdjustTrafficSettingClickListener;->this$0:Lcom/android/monitor/Traffic;

    const v3, 0x7f07003b

    invoke-virtual {v2, v3}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/monitor/DialogTrafficSettingItem;->showDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.class Lcom/android/monitor/Traffic$AutoTurnOffMobileChangedListener;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/widget/SlidingButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoTurnOffMobileChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/Traffic;


# direct methods
.method private constructor <init>(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/monitor/Traffic$AutoTurnOffMobileChangedListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/monitor/Traffic$AutoTurnOffMobileChangedListener;-><init>(Lcom/android/monitor/Traffic;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/monitor/Traffic$AutoTurnOffMobileChangedListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-virtual {v0}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_turn_off_mobile"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    return-void

    .line 204
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

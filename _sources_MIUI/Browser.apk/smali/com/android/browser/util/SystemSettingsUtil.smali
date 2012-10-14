.class public Lcom/android/browser/util/SystemSettingsUtil;
.super Ljava/lang/Object;
.source "SystemSettingsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDayOrNightModeSetting(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 11
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/BrowserSettings;->getScreenBrightness()F

    move-result v1

    .line 12
    .local v1, screenBrightness:F
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 14
    return-void
.end method

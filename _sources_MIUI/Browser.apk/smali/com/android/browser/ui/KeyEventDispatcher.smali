.class public Lcom/android/browser/ui/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/content/Context;Landroid/view/View;Lcom/android/browser/ui/MiRenWebViewListener;)Z
    .locals 2
    .parameter "event"
    .parameter "context"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 17
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_0

    .line 24
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 20
    :sswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/browser/ui/KeyEventDispatcher;->onVolumeButtonPressed(Landroid/view/KeyEvent;Landroid/content/Context;Landroid/view/View;Lcom/android/browser/ui/MiRenWebViewListener;)Z

    move-result v1

    goto :goto_0

    .line 22
    :sswitch_1
    invoke-static {p0, p2}, Lcom/android/browser/ui/KeyEventDispatcher;->onSpacebarPressed(Landroid/view/KeyEvent;Landroid/view/View;)Z

    move-result v1

    goto :goto_0

    .line 17
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static onSpacebarPressed(Landroid/view/KeyEvent;Landroid/view/View;)Z
    .locals 1
    .parameter "event"
    .parameter "view"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public static onVolumeButtonPressed(Landroid/view/KeyEvent;Landroid/content/Context;Landroid/view/View;Lcom/android/browser/ui/MiRenWebViewListener;)Z
    .locals 9
    .parameter "event"
    .parameter "context"
    .parameter "view"
    .parameter "listener"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 43
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    .line 74
    :goto_0
    return v5

    .line 47
    :cond_0
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/BrowserSettings;->getVolumeButtonMode()Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    move-result-object v3

    .line 50
    .local v3, option:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;
    sget-object v5, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_DEFAULT:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    if-ne v3, v5, :cond_1

    move v5, v7

    .line 51
    goto :goto_0

    .line 55
    :cond_1
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 56
    .local v2, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/BrowserSettings;->getVolumeButtonEnableOption()Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;

    move-result-object v1

    .line 58
    .local v1, alwaysEnableVolumeSetting:Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;
    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;->VOLUME_BUTTON_ENABLE_ONLY_NO_MUSIC:Lcom/android/browser/controller/BrowserSettings$VolumeSettingEnableOption;

    if-ne v1, v5, :cond_2

    move v5, v7

    .line 59
    goto :goto_0

    .line 63
    :cond_2
    sget-object v5, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_SCROLL_PAGE:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    if-ne v3, v5, :cond_5

    .line 64
    instance-of v5, p2, Lcom/android/browser/ui/MiRenWebViewCore;

    if-eqz v5, :cond_3

    .line 65
    move-object v0, p2

    check-cast v0, Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v4, v0

    .line 66
    .local v4, webView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x18

    if-ne v5, v6, :cond_4

    move v5, v8

    :goto_1
    invoke-static {v4, v5}, Lcom/android/browser/ui/KeyEventDispatcher;->scrollPage(Lcom/android/browser/ui/MiRenWebViewCore;Z)V

    .end local v4           #webView:Lcom/android/browser/ui/MiRenWebViewCore;
    :cond_3
    :goto_2
    move v5, v8

    .line 74
    goto :goto_0

    .restart local v4       #webView:Lcom/android/browser/ui/MiRenWebViewCore;
    :cond_4
    move v5, v7

    .line 66
    goto :goto_1

    .line 70
    .end local v4           #webView:Lcom/android/browser/ui/MiRenWebViewCore;
    :cond_5
    sget-object v5, Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;->VOLUME_BUTTON_SWITCH_TAB:Lcom/android/browser/controller/BrowserSettings$VolumeButtonSettingOption;

    if-ne v3, v5, :cond_3

    if-eqz p3, :cond_3

    .line 71
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_6

    move v5, v8

    :goto_3
    invoke-interface {p3, v5}, Lcom/android/browser/ui/MiRenWebViewListener;->switchTab(Z)V

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_3
.end method

.method private static scrollPage(Lcom/android/browser/ui/MiRenWebViewCore;Z)V
    .locals 1
    .parameter "webView"
    .parameter "isUp"

    .prologue
    const/4 v0, 0x0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->pageUp(Z)Z

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->pageDown(Z)Z

    goto :goto_0
.end method

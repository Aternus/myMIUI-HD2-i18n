.class Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;
.super Ljava/lang/Object;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashSupportSetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/BrowserSettings;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/BrowserSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;->this$0:Lcom/android/browser/controller/BrowserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/BrowserSettings;Lcom/android/browser/controller/BrowserSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;-><init>(Lcom/android/browser/controller/BrowserSettings;)V

    return-void
.end method


# virtual methods
.method public setFlashSupport(Landroid/webkit/WebSettings;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 773
    :try_start_0
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    .line 774
    .local v1, state:Landroid/webkit/WebSettings$PluginState;
    iget-object v2, p0, Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;->this$0:Lcom/android/browser/controller/BrowserSettings;

    iget-object v2, v2, Lcom/android/browser/controller/BrowserSettings;->flashSupport:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    sget-object v3, Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;->DISPLAY_PLUGIN_OFF:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    if-ne v2, v3, :cond_1

    .line 775
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    .line 780
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 785
    .end local v1           #state:Landroid/webkit/WebSettings$PluginState;
    :goto_1
    return-void

    .line 777
    .restart local v1       #state:Landroid/webkit/WebSettings$PluginState;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/BrowserSettings$FlashSupportSetter;->this$0:Lcom/android/browser/controller/BrowserSettings;

    iget-object v2, v2, Lcom/android/browser/controller/BrowserSettings;->flashSupport:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    sget-object v3, Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;->DISPLAY_PLUGIN_ON_DEMAND:Lcom/android/browser/controller/BrowserSettings$DisplayPluginOption;

    if-ne v2, v3, :cond_0

    .line 778
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    .end local v1           #state:Landroid/webkit/WebSettings$PluginState;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 783
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const-string v2, "com.android.browser.controller.BrowserSettings"

    const-string v3, "Error, the plugin state class is not implemented"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

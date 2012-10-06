.class Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebBackForwardListClient;
.super Landroid/webkit/WebBackForwardListClient;
.source "MiRenWebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenWebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiRenWebBackForwardListClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method private constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebBackForwardListClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-direct {p0}, Landroid/webkit/WebBackForwardListClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;Lcom/android/browser/ui/MiRenWebViewCore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1742
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebBackForwardListClient;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    return-void
.end method


# virtual methods
.method public onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 1746
    invoke-super {p0, p1}, Landroid/webkit/WebBackForwardListClient;->onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 1747
    return-void
.end method

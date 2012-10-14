.class public Lcom/android/browser/ui/MiRenWebViewBase;
.super Landroid/webkit/WebView;
.source "MiRenWebViewBase.java"


# instance fields
.field protected mDestroyed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    .line 17
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    .line 24
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    return v0
.end method

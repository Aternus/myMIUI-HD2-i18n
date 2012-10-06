.class Lcom/android/browser/ui/UrlTitleBarView$1;
.super Ljava/lang/Object;
.source "UrlTitleBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/UrlTitleBarView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/UrlTitleBarView;

.field final synthetic val$finalActivity:Lcom/android/browser/ui/MiRenBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/UrlTitleBarView;Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/browser/ui/UrlTitleBarView$1;->this$0:Lcom/android/browser/ui/UrlTitleBarView;

    iput-object p2, p0, Lcom/android/browser/ui/UrlTitleBarView$1;->val$finalActivity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/browser/ui/UrlTitleBarView$1;->val$finalActivity:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchTitleViewMode(I)V

    .line 272
    return-void
.end method

.class Lcom/android/browser/ui/TitleView$12;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/TitleView;->onFinishLoadingNewSuggestion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/TitleView;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/TitleView;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/browser/ui/TitleView$12;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$12;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mLoadingSuggestionProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$1700(Lcom/android/browser/ui/TitleView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 580
    return-void
.end method

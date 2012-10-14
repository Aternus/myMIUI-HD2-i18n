.class Lcom/android/browser/ui/WebViewHolderActivity$Copy;
.super Ljava/lang/Object;
.source "WebViewHolderActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/WebViewHolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Copy"
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/browser/ui/WebViewHolderActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "toCopy"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/browser/ui/WebViewHolderActivity$Copy;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p2, p0, Lcom/android/browser/ui/WebViewHolderActivity$Copy;->mText:Ljava/lang/CharSequence;

    .line 342
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$Copy;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    iget-object v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$Copy;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/WebViewHolderActivity;->copy(Ljava/lang/CharSequence;)V

    .line 337
    const/4 v0, 0x1

    return v0
.end method

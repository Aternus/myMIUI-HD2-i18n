.class Lcom/android/browser/ui/WebViewHolderActivity$Share;
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
    name = "Share"
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/browser/ui/WebViewHolderActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "toShare"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/browser/ui/WebViewHolderActivity$Share;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p2, p0, Lcom/android/browser/ui/WebViewHolderActivity$Share;->mText:Ljava/lang/CharSequence;

    .line 355
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$Share;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    const-string v1, ""

    iget-object p0, p0, Lcom/android/browser/ui/WebViewHolderActivity$Share;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x1

    return v0
.end method

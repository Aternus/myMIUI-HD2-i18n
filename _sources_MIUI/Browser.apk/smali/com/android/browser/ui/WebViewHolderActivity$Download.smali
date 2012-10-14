.class Lcom/android/browser/ui/WebViewHolderActivity$Download;
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
    name = "Download"
.end annotation


# instance fields
.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/ui/WebViewHolderActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "toDownload"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/browser/ui/WebViewHolderActivity$Download;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p2, p0, Lcom/android/browser/ui/WebViewHolderActivity$Download;->mText:Ljava/lang/String;

    .line 372
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$Download;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    iget-object v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$Download;->mText:Ljava/lang/String;

    const-wide/16 v5, -0x1

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/ui/WebViewHolderActivity;->onDownloadImageStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 367
    const/4 v0, 0x1

    return v0
.end method

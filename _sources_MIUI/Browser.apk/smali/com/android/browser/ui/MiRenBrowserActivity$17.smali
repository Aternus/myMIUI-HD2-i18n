.class Lcom/android/browser/ui/MiRenBrowserActivity$17;
.super Landroid/os/AsyncTask;
.source "MiRenBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

.field final synthetic val$_mode:I

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$newUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$17;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$17;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$17;->val$newUrl:Ljava/lang/String;

    iput p4, p0, Lcom/android/browser/ui/MiRenBrowserActivity$17;->val$_mode:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1563
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$17;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "unused"

    .prologue
    const/4 v3, 0x0

    .line 1565
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$17;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$17;->val$cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$17;->val$newUrl:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity$17;->val$_mode:I

    invoke-static/range {v0 .. v5}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->updateVisitedHistory(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZI)J

    .line 1567
    return-object v3
.end method

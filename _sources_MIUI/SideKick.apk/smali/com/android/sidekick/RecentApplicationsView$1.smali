.class Lcom/android/sidekick/RecentApplicationsView$1;
.super Landroid/os/AsyncTask;
.source "RecentApplicationsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sidekick/RecentApplicationsView;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sidekick/RecentApplicationsView;

.field final synthetic val$beforeMemSize:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/sidekick/RecentApplicationsView;JLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/sidekick/RecentApplicationsView$1;->this$0:Lcom/android/sidekick/RecentApplicationsView;

    iput-wide p2, p0, Lcom/android/sidekick/RecentApplicationsView$1;->val$beforeMemSize:J

    iput-object p4, p0, Lcom/android/sidekick/RecentApplicationsView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 296
    const-wide/16 v0, 0x44c

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 297
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/sidekick/RecentApplicationsView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 12
    .parameter "result"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x1

    .line 303
    iget-object v4, p0, Lcom/android/sidekick/RecentApplicationsView$1;->this$0:Lcom/android/sidekick/RecentApplicationsView;

    #calls: Lcom/android/sidekick/RecentApplicationsView;->getAvailableMemory()J
    invoke-static {v4}, Lcom/android/sidekick/RecentApplicationsView;->access$000(Lcom/android/sidekick/RecentApplicationsView;)J

    move-result-wide v0

    .line 304
    .local v0, currentAvaMem:J
    cmp-long v4, v0, v6

    if-gez v4, :cond_0

    .line 305
    const-wide/16 v0, 0x0

    .line 307
    :cond_0
    iget-wide v4, p0, Lcom/android/sidekick/RecentApplicationsView$1;->val$beforeMemSize:J

    sub-long v2, v0, v4

    .line 308
    .local v2, memCleaned:J
    cmp-long v4, v2, v6

    if-gez v4, :cond_1

    .line 309
    const-wide/16 v2, 0x0

    .line 311
    :cond_1
    iget-object v4, p0, Lcom/android/sidekick/RecentApplicationsView$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView$1;->val$context:Landroid/content/Context;

    const v6, 0x7f07001e

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/sidekick/RecentApplicationsView$1;->this$0:Lcom/android/sidekick/RecentApplicationsView;

    iget-object v10, p0, Lcom/android/sidekick/RecentApplicationsView$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/sidekick/RecentApplicationsView;->formatMemsize(JLandroid/content/Context;)Ljava/lang/String;
    invoke-static {v9, v2, v3, v10}, Lcom/android/sidekick/RecentApplicationsView;->access$100(Lcom/android/sidekick/RecentApplicationsView;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    iget-object v8, p0, Lcom/android/sidekick/RecentApplicationsView$1;->this$0:Lcom/android/sidekick/RecentApplicationsView;

    iget-object v9, p0, Lcom/android/sidekick/RecentApplicationsView$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/sidekick/RecentApplicationsView;->formatMemsize(JLandroid/content/Context;)Ljava/lang/String;
    invoke-static {v8, v0, v1, v9}, Lcom/android/sidekick/RecentApplicationsView;->access$100(Lcom/android/sidekick/RecentApplicationsView;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 318
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/sidekick/RecentApplicationsView$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

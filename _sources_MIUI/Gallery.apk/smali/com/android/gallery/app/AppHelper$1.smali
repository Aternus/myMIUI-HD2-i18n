.class final Lcom/android/gallery/app/AppHelper$1;
.super Ljava/lang/Object;
.source "AppHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/app/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bucket:Lcom/android/gallery/data/FileBucket;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$metas:Ljava/util/ArrayList;

.field final synthetic val$post:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/gallery/app/AppHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery/app/AppHelper$1;->val$post:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/gallery/app/AppHelper$1;->val$bucket:Lcom/android/gallery/data/FileBucket;

    iput-object p4, p0, Lcom/android/gallery/app/AppHelper$1;->val$metas:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dlg"
    .parameter "sumthin"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery/app/AppHelper$1;->val$post:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/gallery/app/AppHelper$1;->val$bucket:Lcom/android/gallery/data/FileBucket;

    iget-object v3, p0, Lcom/android/gallery/app/AppHelper$1;->val$metas:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery/app/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;)V

    .line 252
    return-void
.end method

.class Lcom/android/gallery/ui/InformationDialog$1;
.super Ljava/lang/Object;
.source "InformationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/InformationDialog;-><init>(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/InformationDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/InformationDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery/ui/InformationDialog$1;->this$0:Lcom/android/gallery/ui/InformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery/ui/InformationDialog$1;->this$0:Lcom/android/gallery/ui/InformationDialog;

    invoke-virtual {v0}, Lcom/android/gallery/ui/InformationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/ui/InformationDialog$1;->this$0:Lcom/android/gallery/ui/InformationDialog;

    #getter for: Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;
    invoke-static {v1}, Lcom/android/gallery/ui/InformationDialog;->access$000(Lcom/android/gallery/ui/InformationDialog;)Lcom/android/gallery/data/BaseMeta;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/gallery/data/BaseMeta;->mLatitude:D

    iget-object v3, p0, Lcom/android/gallery/ui/InformationDialog$1;->this$0:Lcom/android/gallery/ui/InformationDialog;

    #getter for: Lcom/android/gallery/ui/InformationDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;
    invoke-static {v3}, Lcom/android/gallery/ui/InformationDialog;->access$000(Lcom/android/gallery/ui/InformationDialog;)Lcom/android/gallery/data/BaseMeta;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/gallery/data/BaseMeta;->mLongitude:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery/util/Utils;->openMaps(Landroid/content/Context;DD)V

    .line 47
    return-void
.end method

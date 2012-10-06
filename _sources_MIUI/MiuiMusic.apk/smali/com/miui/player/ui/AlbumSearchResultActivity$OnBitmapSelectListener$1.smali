.class Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener$1;
.super Ljava/lang/Object;
.source "AlbumSearchResultActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener$1;->this$1:Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener$1;->this$1:Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;

    iget-object v0, v0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$502(Lcom/miui/player/ui/AlbumSearchResultActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 293
    return-void
.end method

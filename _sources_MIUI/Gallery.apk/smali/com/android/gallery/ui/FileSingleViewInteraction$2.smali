.class Lcom/android/gallery/ui/FileSingleViewInteraction$2;
.super Landroid/os/AsyncTask;
.source "FileSingleViewInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/FileSingleViewInteraction;->onRotate(I)V
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
.field final synthetic this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;

.field final synthetic val$meta:Lcom/android/gallery/data/FileInfo;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/FileSingleViewInteraction;Lcom/android/gallery/data/FileInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$2;->this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;

    iput-object p2, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$2;->val$meta:Lcom/android/gallery/data/FileInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/FileSingleViewInteraction$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$2;->val$meta:Lcom/android/gallery/data/FileInfo;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileInfo;->updateOrientation()V

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

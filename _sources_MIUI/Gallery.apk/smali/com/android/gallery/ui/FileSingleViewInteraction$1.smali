.class Lcom/android/gallery/ui/FileSingleViewInteraction$1;
.super Ljava/lang/Object;
.source "FileSingleViewInteraction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/FileSingleViewInteraction;->onDeleteItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/FileSingleViewInteraction;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$1;->this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction$1;->this$0:Lcom/android/gallery/ui/FileSingleViewInteraction;

    iget-object v0, v0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v0}, Lcom/android/gallery/ui/SingleViewActivity;->refreshUI()V

    .line 170
    return-void
.end method

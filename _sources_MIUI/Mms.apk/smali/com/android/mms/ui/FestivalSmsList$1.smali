.class Lcom/android/mms/ui/FestivalSmsList$1;
.super Ljava/lang/Object;
.source "FestivalSmsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FestivalSmsList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FestivalSmsList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FestivalSmsList;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/FestivalSmsList$1;->this$0:Lcom/android/mms/ui/FestivalSmsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList$1;->this$0:Lcom/android/mms/ui/FestivalSmsList;

    #getter for: Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/FestivalSmsList;->access$000(Lcom/android/mms/ui/FestivalSmsList;)Lcom/android/mms/ui/FestivalSmsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->shuffle()V

    .line 61
    return-void
.end method

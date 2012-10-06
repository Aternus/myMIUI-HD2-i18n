.class Lcom/android/settings/cit/CitDisplayCheckActivity$2;
.super Ljava/lang/Object;
.source "CitDisplayCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitDisplayCheckActivity;->showNextPicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitDisplayCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitDisplayCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$2;->this$0:Lcom/android/settings/cit/CitDisplayCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/cit/CitDisplayCheckActivity$2;->this$0:Lcom/android/settings/cit/CitDisplayCheckActivity;

    #calls: Lcom/android/settings/cit/CitDisplayCheckActivity;->showNextPicture()V
    invoke-static {v0}, Lcom/android/settings/cit/CitDisplayCheckActivity;->access$000(Lcom/android/settings/cit/CitDisplayCheckActivity;)V

    .line 101
    return-void
.end method

.class Lcom/android/contacts/ViewContactActivity$2;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$2;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$2;->this$0:Lcom/android/contacts/ViewContactActivity;

    #calls: Lcom/android/contacts/ViewContactActivity;->gotoEditor()V
    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->access$200(Lcom/android/contacts/ViewContactActivity;)V

    .line 379
    return-void
.end method

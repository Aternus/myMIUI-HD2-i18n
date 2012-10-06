.class Lcom/android/contacts/TwelveKeyDialer$3;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$3;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 672
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 675
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$3;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    .line 680
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$3;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$700(Lcom/android/contacts/TwelveKeyDialer;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->pause()V

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$3;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$700(Lcom/android/contacts/TwelveKeyDialer;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->resume()V

    goto :goto_0
.end method

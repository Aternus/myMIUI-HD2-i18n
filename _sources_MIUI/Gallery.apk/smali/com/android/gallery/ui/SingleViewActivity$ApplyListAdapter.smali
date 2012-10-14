.class Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SingleViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/SingleViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/SingleViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    .line 680
    const/high16 v0, 0x7f03

    const v1, 0x7f0c0001

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mInfos:[Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;
    invoke-static {p1}, Lcom/android/gallery/ui/SingleViewActivity;->access$1300(Lcom/android/gallery/ui/SingleViewActivity;)[Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 681
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 685
    move-object v1, p2

    .line 686
    .local v1, resultView:Landroid/view/View;
    if-nez v1, :cond_0

    .line 687
    iget-object v3, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/gallery/ui/SingleViewActivity;->access$1400(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 689
    :cond_0
    const v3, 0x7f0c0001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 690
    .local v2, tv:Landroid/widget/TextView;
    const/high16 v3, 0x7f0c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 691
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

    iget v3, v3, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;->mIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

    iget v3, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 693
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;
    invoke-static {v3}, Lcom/android/gallery/ui/SingleViewActivity;->access$000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/ui/ISingleViewInteraction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery/ui/ISingleViewInteraction;->getCurrentItemUri()Landroid/net/Uri;

    move-result-object v0

    .line 699
    .local v0, dataUri:Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    const/16 v2, 0x8

    .line 702
    .local v2, requestCode:I
    const/4 v1, 0x0

    .line 703
    .local v1, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 722
    :goto_1
    if-eqz v1, :cond_0

    .line 723
    iget-object v3, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;
    invoke-static {v3}, Lcom/android/gallery/ui/SingleViewActivity;->access$000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/ui/ISingleViewInteraction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery/ui/ISingleViewInteraction;->getCurrentItemMIMEType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    iget-object v3, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v3, v1, v2}, Lcom/android/gallery/ui/SingleViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 706
    :pswitch_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;
    invoke-static {v4}, Lcom/android/gallery/ui/SingleViewActivity;->access$000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/ui/ISingleViewInteraction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery/ui/ISingleViewInteraction;->getCurrentItemMIMEType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/gallery/app/AppHelper;->prepareWallpaper(ZLandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 707
    goto :goto_1

    .line 711
    :pswitch_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;
    invoke-static {v4}, Lcom/android/gallery/ui/SingleViewActivity;->access$000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/ui/ISingleViewInteraction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery/ui/ISingleViewInteraction;->getCurrentItemMIMEType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/gallery/app/AppHelper;->prepareWallpaper(ZLandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 712
    goto :goto_1

    .line 716
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.AttachImage"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 718
    const/4 v2, 0x0

    goto :goto_1

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

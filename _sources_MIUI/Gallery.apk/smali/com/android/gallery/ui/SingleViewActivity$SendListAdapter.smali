.class final Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SingleViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/SingleViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SendListAdapter"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/gallery/ui/SingleViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 789
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->sCollator:Ljava/text/Collator;

    .line 737
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mIntent:Landroid/content/Intent;

    .line 738
    invoke-virtual {p1}, Lcom/android/gallery/ui/SingleViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 740
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mList:Ljava/util/List;

    .line 741
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mList:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 742
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 780
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v1, v0

    .line 781
    .local v1, a:Landroid/content/pm/ResolveInfo;
    move-object v0, p2

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v2, v0

    .line 782
    .local v2, b:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 783
    .local v3, sa:Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 784
    :cond_0
    iget-object v5, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 785
    .local v4, sb:Ljava/lang/CharSequence;
    if-nez v4, :cond_1

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 787
    :cond_1
    iget-object v5, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->sCollator:Ljava/text/Collator;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 768
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 748
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 752
    move-object v4, p2

    .line 753
    .local v4, resultView:Landroid/view/View;
    if-nez v4, :cond_0

    .line 754
    iget-object v6, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/android/gallery/ui/SingleViewActivity;->access$1400(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x7f03

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 756
    :cond_0
    iget-object v6, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 757
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, label:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 759
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const v6, 0x7f0c0001

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 760
    .local v5, tv:Landroid/widget/TextView;
    const/high16 v6, 0x7f0c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 761
    .local v1, img:Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    return-object v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 773
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 774
    .local v1, resolvedIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 775
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 776
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v2, v1}, Lcom/android/gallery/ui/SingleViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 777
    return-void
.end method

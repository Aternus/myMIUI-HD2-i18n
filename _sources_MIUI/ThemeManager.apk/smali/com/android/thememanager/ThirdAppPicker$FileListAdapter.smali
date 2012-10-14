.class Lcom/android/thememanager/ThirdAppPicker$FileListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ThirdAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThirdAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/thememanager/ThirdAppPicker;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThirdAppPicker;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/thememanager/ThirdAppPicker$FileListAdapter;->this$0:Lcom/android/thememanager/ThirdAppPicker;

    .line 56
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 57
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ThirdAppPicker$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 64
    move-object v3, p2

    .line 68
    :goto_0
    iget-object v4, p0, Lcom/android/thememanager/ThirdAppPicker$FileListAdapter;->this$0:Lcom/android/thememanager/ThirdAppPicker;

    #getter for: Lcom/android/thememanager/ThirdAppPicker;->mAllApps:Ljava/util/List;
    invoke-static {v4}, Lcom/android/thememanager/ThirdAppPicker;->access$000(Lcom/android/thememanager/ThirdAppPicker;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 70
    .local v1, item:Landroid/content/pm/ResolveInfo;
    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, icon:Landroid/widget/ImageView;
    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    .local v2, name:Landroid/widget/TextView;
    if-nez v1, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    if-eqz v1, :cond_2

    .line 74
    iget-object v4, p0, Lcom/android/thememanager/ThirdAppPicker$FileListAdapter;->this$0:Lcom/android/thememanager/ThirdAppPicker;

    #getter for: Lcom/android/thememanager/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/thememanager/ThirdAppPicker;->access$100(Lcom/android/thememanager/ThirdAppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_2
    return-object v3

    .line 66
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #item:Landroid/content/pm/ResolveInfo;
    .end local v2           #name:Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/android/thememanager/ThirdAppPicker$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v5, 0x7f03

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 72
    .restart local v0       #icon:Landroid/widget/ImageView;
    .restart local v1       #item:Landroid/content/pm/ResolveInfo;
    .restart local v2       #name:Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/android/thememanager/ThirdAppPicker$FileListAdapter;->this$0:Lcom/android/thememanager/ThirdAppPicker;

    #getter for: Lcom/android/thememanager/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/thememanager/ThirdAppPicker;->access$100(Lcom/android/thememanager/ThirdAppPicker;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    .line 76
    :cond_2
    const v4, 0x7f07000a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

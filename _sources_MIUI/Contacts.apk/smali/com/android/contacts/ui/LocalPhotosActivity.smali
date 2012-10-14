.class public Lcom/android/contacts/ui/LocalPhotosActivity;
.super Landroid/app/Activity;
.source "LocalPhotosActivity.java"


# instance fields
.field private mColor:I

.field private mGridAdapter:Lcom/android/contacts/ui/ContactPhotoAdapter;

.field private mManager:Lcom/android/contacts/ui/ContactPhotoItemManager;

.field protected mMetaData:Landroid/os/Bundle;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPhotoGrid:Landroid/widget/GridView;

.field protected mResource:Lcom/miui/android/resourcebrowser/Resource;

.field protected mResourceIndex:I

.field protected mResourceSet:Lcom/miui/android/resourcebrowser/ResourceSet;

.field protected mResourceSetPackage:Ljava/lang/String;

.field protected mResourceSetSubPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Lcom/android/contacts/ui/LocalPhotosActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/LocalPhotosActivity$1;-><init>(Lcom/android/contacts/ui/LocalPhotosActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/LocalPhotosActivity;)Lcom/android/contacts/ui/ContactPhotoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mGridAdapter:Lcom/android/contacts/ui/ContactPhotoAdapter;

    return-object v0
.end method

.method public static tryParseColor(Lcom/miui/android/resourcebrowser/Resource;)I
    .locals 8
    .parameter "res"

    .prologue
    const-string v7, "color"

    const-string v6, "LocalPhotosActivity"

    .line 101
    invoke-virtual {p0}, Lcom/miui/android/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "RESOURCE_NVP"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 103
    .local v3, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    const-string v4, "color"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const-string v4, "color"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, colorString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    .end local v1           #colorString:Ljava/lang/String;
    .local v0, color:I
    :goto_0
    return v0

    .line 108
    .end local v0           #color:I
    .restart local v1       #colorString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 109
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "LocalPhotosActivity"

    const-string v4, "parse color failed, use default color"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, -0x1

    .restart local v0       #color:I
    goto :goto_0

    .line 113
    .end local v0           #color:I
    .end local v1           #colorString:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const-string v4, "LocalPhotosActivity"

    const-string v4, "Do not specify color, use default color"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, -0x1

    .restart local v0       #color:I
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f070044

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/LocalPhotosActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/ui/LocalPhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "META_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mMetaData:Landroid/os/Bundle;

    .line 61
    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResourceSetPackage:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResourceSetSubPackage:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResourceSetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResourceSetSubPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/android/resourcebrowser/ResourceSet;->getInstance(Ljava/lang/String;)Lcom/miui/android/resourcebrowser/ResourceSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResourceSet:Lcom/miui/android/resourcebrowser/ResourceSet;

    .line 64
    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_INDEX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResourceIndex:I

    .line 66
    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResourceSet:Lcom/miui/android/resourcebrowser/ResourceSet;

    iget v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResourceIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/android/resourcebrowser/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/android/resourcebrowser/Resource;

    iput-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResource:Lcom/miui/android/resourcebrowser/Resource;

    .line 68
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/LocalPhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mPhotoGrid:Landroid/widget/GridView;

    .line 69
    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResource:Lcom/miui/android/resourcebrowser/Resource;

    invoke-virtual {v1}, Lcom/miui/android/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "m_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/LocalPhotosActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResource:Lcom/miui/android/resourcebrowser/Resource;

    invoke-static {v1}, Lcom/android/contacts/ui/LocalPhotosActivity;->tryParseColor(Lcom/miui/android/resourcebrowser/Resource;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mColor:I

    .line 73
    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mMetaData:Landroid/os/Bundle;

    sget-object v2, Lcom/android/contacts/ui/PhotoTabActivity;->DISPLAY_NAME_EXTRA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, contact_name:Ljava/lang/String;
    new-instance v1, Lcom/android/contacts/ui/ContactPhotoItemManager;

    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mResource:Lcom/miui/android/resourcebrowser/Resource;

    invoke-virtual {v2}, Lcom/miui/android/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mColor:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/contacts/ui/ContactPhotoItemManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mManager:Lcom/android/contacts/ui/ContactPhotoItemManager;

    .line 75
    new-instance v1, Lcom/android/contacts/ui/ContactPhotoAdapter;

    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mManager:Lcom/android/contacts/ui/ContactPhotoItemManager;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ui/ContactPhotoAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/ui/ContactPhotoItemManager;)V

    iput-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mGridAdapter:Lcom/android/contacts/ui/ContactPhotoAdapter;

    .line 76
    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mPhotoGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mGridAdapter:Lcom/android/contacts/ui/ContactPhotoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mPhotoGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/ui/LocalPhotosActivity;->mManager:Lcom/android/contacts/ui/ContactPhotoItemManager;

    invoke-virtual {v1}, Lcom/android/contacts/ui/ContactPhotoItemManager;->containWordPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/LocalPhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/LocalPhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

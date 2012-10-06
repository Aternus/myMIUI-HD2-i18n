.class public Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;
.super Landroid/app/ListActivity;
.source "LiveWallpaperListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;,
        Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/WallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mThumbnails:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findLiveWallpapers()V
    .locals 28

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.service.wallpaper.WallpaperService"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v26, 0x80

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 83
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 85
    .local v14, listSize:I
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move v1, v14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mThumbnails:Ljava/util/ArrayList;

    .line 86
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move v1, v14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperIntents:Ljava/util/ArrayList;

    .line 87
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move v1, v14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperInfos:Ljava/util/ArrayList;

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 90
    .local v17, res:Landroid/content/res/Resources;
    const v24, 0x7f020001

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 92
    .local v9, galleryIcon:Landroid/graphics/drawable/Drawable;
    new-instance v16, Landroid/graphics/Paint;

    const/16 v24, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 93
    .local v16, paint:Landroid/graphics/Paint;
    sget-object v24, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 95
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 97
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v24, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$1;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)V

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 110
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v14, :cond_1

    .line 111
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 112
    .local v18, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v6, v0

    .line 115
    .local v6, ci:Landroid/content/pm/ComponentInfo;
    :try_start_0
    new-instance v11, Landroid/app/WallpaperInfo;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    .local v11, info:Landroid/app/WallpaperInfo;
    invoke-virtual {v11}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, packageName:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, className:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.service.wallpaper.WallpaperService"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12, v15, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperIntents:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 134
    .local v19, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v19, :cond_0

    .line 135
    const v24, 0x7f050002

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 136
    .local v21, thumbWidth:I
    const v24, 0x7f050003

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 138
    .local v20, thumbHeight:I
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 141
    .local v22, thumbnail:Landroid/graphics/Bitmap;
    const/high16 v24, 0x7f04

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 145
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v0, v9

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v21

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    move-object v0, v9

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v12, v0

    .end local v12           #intent:Landroid/content/Intent;
    const/16 v24, 0x11

    move-object v0, v12

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 147
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 151
    .local v23, title:Ljava/lang/String;
    const v24, 0x7f040001

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    const/high16 v24, 0x7f05

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3fe0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x7f050001

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    sub-int v25, v20, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object v0, v5

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 159
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    .end local v19           #thumb:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 162
    .end local v20           #thumbHeight:I
    .end local v21           #thumbWidth:I
    .end local v22           #thumbnail:Landroid/graphics/Bitmap;
    .end local v23           #title:Ljava/lang/String;
    .restart local v19       #thumb:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mThumbnails:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v7           #className:Ljava/lang/String;
    .end local v11           #info:Landroid/app/WallpaperInfo;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v19           #thumb:Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 116
    :catch_0
    move-exception v24

    move-object/from16 v8, v24

    .line 117
    .local v8, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v24, "LiveWallpapersPicker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skipping wallpaper "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 119
    .end local v8           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v24

    move-object/from16 v8, v24

    .line 120
    .local v8, e:Ljava/io/IOException;
    const-string v24, "LiveWallpapersPicker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Skipping wallpaper "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 165
    .end local v6           #ci:Landroid/content/pm/ComponentInfo;
    .end local v8           #e:Ljava/io/IOException;
    .end local v18           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 171
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 172
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->finish()V

    .line 174
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 71
    invoke-direct {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->findLiveWallpapers()V

    .line 73
    new-instance v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 177
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 178
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    .line 179
    .local v0, info:Landroid/app/WallpaperInfo;
    const/16 v2, 0x64

    invoke-static {p0, v2, v1, v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->showPreview(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/WallpaperInfo;)V

    .line 180
    return-void
.end method

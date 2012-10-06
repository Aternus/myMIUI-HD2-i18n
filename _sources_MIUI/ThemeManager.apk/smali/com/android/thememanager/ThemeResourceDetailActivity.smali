.class public Lcom/android/thememanager/ThemeResourceDetailActivity;
.super Lcom/miui/android/resourcebrowser/ResourceDetailActivity;
.source "ThemeResourceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;
    }
.end annotation


# instance fields
.field private mComponentGridView:Landroid/widget/GridView;

.field private mComponentTitle:Landroid/widget/TextView;

.field private mDetailFlag:J

.field private mFromFileExplorer:Z

.field private mResourceType:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mFromFileExplorer:Z

    .line 405
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ThemeResourceDetailActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/ThemeResourceDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/ThemeResourceDetailActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/ThemeResourceDetailActivity;->cutAndSetWallpapers(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/thememanager/ThemeResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->updateComponentTitle()V

    return-void
.end method

.method private bindComponentGridView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 150
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_0
    const v0, 0x1020251

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    .line 155
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    new-instance v0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    iget-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getCurrentResource()Lcom/miui/android/resourcebrowser/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/android/resourcebrowser/Resource;->getPlatformVersion()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;-><init>(Lcom/android/thememanager/ThemeResourceDetailActivity;JZI)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 160
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setVisibility(I)V

    .line 161
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->updateComponentGridViewHeight()V

    .line 162
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->updateComponentTitle()V

    goto :goto_0
.end method

.method private cutAndSetWallpapers(Ljava/lang/String;Z)V
    .locals 12
    .parameter "filepath"
    .parameter "isLockscreen"

    .prologue
    const v10, 0x3f8ccccd

    const/4 v11, 0x1

    .line 329
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 330
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 331
    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 333
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 334
    .local v2, display:Landroid/view/Display;
    if-eqz p2, :cond_1

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v9

    move v6, v9

    .line 335
    .local v6, maxNeedWidth:I
    :goto_0
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 336
    .local v5, maxNeedHeight:I
    const v0, 0x3f8ccccd

    .line 337
    .local v0, EXPAND_FACTOR:F
    int-to-float v9, v6

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 338
    int-to-float v9, v5

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 340
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v9, v6, :cond_0

    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v9, v5, :cond_4

    .line 341
    :cond_0
    new-instance v4, Landroid/content/Intent;

    if-eqz p2, :cond_2

    const-string v9, "android.intent.action.CROP_SET_LOCKSCREEN_WALLPAPER"

    :goto_1
    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v4, intent:Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "image/*"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v9, "noFaceDetection"

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    if-eqz p2, :cond_3

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {p0, v4, v9}, Lcom/android/thememanager/ThemeResourceDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 357
    .end local v4           #intent:Landroid/content/Intent;
    :goto_3
    return-void

    .line 334
    .end local v0           #EXPAND_FACTOR:F
    .end local v5           #maxNeedHeight:I
    .end local v6           #maxNeedWidth:I
    :cond_1
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    move v6, v9

    goto :goto_0

    .line 341
    .restart local v0       #EXPAND_FACTOR:F
    .restart local v5       #maxNeedHeight:I
    .restart local v6       #maxNeedWidth:I
    :cond_2
    const-string v9, "android.intent.action.CROP_SET_WALLPAPER"

    goto :goto_1

    .restart local v4       #intent:Landroid/content/Intent;
    :cond_3
    move v9, v11

    .line 345
    goto :goto_2

    .line 347
    .end local v4           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x1

    .line 349
    .local v1, changed:Z
    :try_start_0
    const-string v9, "wallpaper"

    invoke-virtual {p0, v9}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/WallpaperManager;

    .line 350
    .local v8, wm:Landroid/app/WallpaperManager;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Z)V

    .line 351
    iget-wide v9, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    iget-object v11, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {p0, v9, v10, v11}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v8           #wm:Landroid/app/WallpaperManager;
    :goto_4
    invoke-static {p0, v1}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    goto :goto_3

    .line 352
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 353
    .local v3, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private getSelectComponentResourceType()J
    .locals 5

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    if-nez v1, :cond_1

    .line 385
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v3, 0x1000

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const-wide/16 v1, 0x1004

    .line 395
    :goto_0
    return-wide v1

    .line 388
    :cond_0
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    goto :goto_0

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    .line 392
    .local v0, adapter:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->isSelectAllComponent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    goto :goto_0

    .line 395
    :cond_2
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->getSelectComponentFlag()J

    move-result-wide v1

    goto :goto_0
.end method

.method private giveTipForLockscreenPaper()V
    .locals 5

    .prologue
    .line 360
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ThemeResource;->containAwesomeLockscreenResource()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 364
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/thememanager/ThemeResourceDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/android/thememanager/ThemeResourceDetailActivity$3;-><init>(Lcom/android/thememanager/ThemeResourceDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 372
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/thememanager/ThemeResourceDetailActivity;->cutAndSetWallpapers(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private needRemoveAllOldTheme()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 402
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->needRemoveAllOldTheme()Z

    move-result v0

    goto :goto_0
.end method

.method private setComponentGridViewClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    .line 263
    .end local p0
    :goto_0
    return-void

    .line 262
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->setClickable(Z)V

    goto :goto_0
.end method

.method private setComponentTitleEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 268
    const v0, 0x102024e

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 272
    :cond_1
    return-void
.end method

.method private updateComponentGridViewHeight()V
    .locals 4

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    if-nez v2, :cond_0

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    invoke-virtual {v2}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->getLineHeight()I

    move-result v1

    .line 171
    .local v1, lineHeightForGrid:I
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 172
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    mul-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateComponentTitle()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 178
    const v4, 0x102024e

    invoke-virtual {p0, v4}, Lcom/android/thememanager/ThemeResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    .line 179
    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 180
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    .line 181
    .local v0, adapter:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->getSelectComponentFlag()J

    move-result-wide v2

    .line 182
    .local v2, selectFlags:J
    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->getComponentNumber(J)I

    move-result v1

    .line 183
    .local v1, componentNum:I
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    const v5, 0x7f07002f

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v0           #adapter:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;
    .end local v1           #componentNum:I
    .end local v2           #selectFlags:J
    :goto_0
    return-void

    .line 186
    .restart local v0       #adapter:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;
    .restart local v1       #componentNum:I
    .restart local v2       #selectFlags:J
    :cond_0
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    const v5, 0x7f070030

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    .end local v0           #adapter:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;
    .end local v1           #componentNum:I
    .end local v2           #selectFlags:J
    :cond_1
    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v6, 0x1000

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 191
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    const v5, 0x7f070031

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    const v5, 0x7f020004

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 193
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 195
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    new-instance v5, Lcom/android/thememanager/ThemeResourceDetailActivity$1;

    invoke-direct {v5, p0}, Lcom/android/thememanager/ThemeResourceDetailActivity$1;-><init>(Lcom/android/thememanager/ThemeResourceDetailActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_2
    iget-boolean v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mFromFileExplorer:Z

    if-eqz v4, :cond_3

    .line 203
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    invoke-static {v5, v6}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mComponentTitle:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected apply()V
    .locals 13

    .prologue
    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, changed:Z
    const/4 v6, 0x1

    .line 279
    .local v6, toastNeeded:Z
    iget-wide v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 280
    const/4 v6, 0x0

    .line 281
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/thememanager/ThemeResourceDetailActivity;->cutAndSetWallpapers(Ljava/lang/String;Z)V

    .line 320
    :goto_0
    if-eqz v6, :cond_0

    .line 321
    invoke-static {p0, v2}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 324
    :cond_0
    const-string v7, "r=xmXshare/apply&xid=%s&aid=%s"

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getCurrentResourceInformation()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v7, v8, p0}, Lcom/miui/android/resourcebrowser/OnlineHelper;->sendUserAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 326
    :goto_1
    return-void

    .line 282
    :cond_1
    iget-wide v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v9, 0x4

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 283
    const/4 v6, 0x0

    .line 284
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->giveTipForLockscreenPaper()V

    goto :goto_0

    .line 285
    :cond_2
    iget-wide v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v9, 0x40

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 286
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/android/thememanager/ThemeHelper;->applyBootAudio(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 287
    :cond_3
    iget-wide v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v9, 0x100

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    .line 288
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {p0, v7, v8}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 289
    :cond_4
    iget-wide v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v9, 0x200

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 290
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {p0, v7, v8}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 291
    :cond_5
    iget-wide v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/16 v9, 0x400

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    .line 292
    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {p0, v7, v8}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 294
    :cond_6
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->needRemoveAllOldTheme()Z

    move-result v5

    .line 295
    .local v5, needRemoveAllOld:Z
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getSelectComponentResourceType()J

    move-result-wide v0

    .line 297
    .local v0, applyResourceFlags:J
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getComponentNumber(J)I

    move-result v7

    if-gtz v7, :cond_7

    .line 298
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f070023

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    .line 301
    .local v3, dialog:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/thememanager/ThemeResourceDetailActivity$2;

    invoke-direct {v7, p0}, Lcom/android/thememanager/ThemeResourceDetailActivity$2;-><init>(Lcom/android/thememanager/ThemeResourceDetailActivity;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1

    .line 310
    .end local v3           #dialog:Landroid/app/AlertDialog;
    :cond_7
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {p0, v7, v8, v9}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lcom/miui/android/resourcebrowser/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v4

    .line 311
    .local v4, info:Lcom/android/thememanager/ThemeInfo;
    if-eqz v4, :cond_8

    .line 312
    const/4 v6, 0x0

    .line 313
    const/4 v7, 0x0

    invoke-static {v5, v0, v1, v7, v4}, Lcom/android/thememanager/ThemeHelper;->applyTheme(ZJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;)V

    goto/16 :goto_0

    .line 315
    :cond_8
    const/4 v6, 0x1

    .line 316
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "metaData"
    .parameter "action"

    .prologue
    .line 57
    invoke-static {p1, p2, p0}, Lcom/android/thememanager/UIHelper;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    .line 58
    invoke-super {p0, p1, p2}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected changeCurrentResource()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 99
    invoke-super {p0}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->changeCurrentResource()Z

    move-result v1

    .line 101
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getCurrentResource()Lcom/miui/android/resourcebrowser/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/android/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "modules"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    .line 103
    iget-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    .line 104
    new-instance v2, Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->bindComponentGridView()V

    .line 110
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->updateComponentTitle()V

    .line 111
    return v1

    .line 106
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 107
    .local v0, e:Ljava/lang/Exception;
    iput-wide v5, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mDetailFlag:J

    goto :goto_0
.end method

.method protected getConfirmedDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "originDowloadUrl"

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, newFormatUrl:Ljava/lang/String;
    const-string v2, ".mtz"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 216
    .local v0, lastDot:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .end local v0           #lastDot:I
    :goto_0
    return-object v1

    .line 218
    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method protected getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 124
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 128
    :cond_0
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->getHumanNameForAudioEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, name:Ljava/lang/String;
    const-string v1, "%s (%d/%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFormatTitleBeforePlayingRingtone()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 117
    const v0, 0x7f070025

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getCurrentResource()Lcom/miui/android/resourcebrowser/Resource;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getMusicPlayList(Lcom/miui/android/resourcebrowser/Resource;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->getFormatTitleBeforePlayingRingtone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMusicPlayList(Lcom/miui/android/resourcebrowser/Resource;)Ljava/util/List;
    .locals 5
    .parameter "resourceItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/android/resourcebrowser/Resource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-wide v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 136
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->getMusicPlayList(Lcom/miui/android/resourcebrowser/Resource;)Ljava/util/List;

    move-result-object v1

    .line 146
    .end local p0
    :goto_0
    return-object v1

    .line 138
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Lcom/miui/android/resourcebrowser/Resource;->getLocalPreviews()Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/miui/android/resourcebrowser/Resource;->getOnlinePreviews()Ljava/util/List;

    move-result-object v0

    .line 142
    :cond_2
    if-nez v0, :cond_3

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v1, v0

    .line 146
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 376
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 377
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 378
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 381
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->updateComponentTitle()V

    .line 95
    return-void
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 4
    .parameter "metaData"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->pickMetaData(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    .line 65
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    invoke-static {p0, v0, v1}, Lcom/android/thememanager/ThemeHelper;->setMusicVolumeType(Landroid/app/Activity;J)V

    .line 66
    return-void
.end method

.method protected responseToViewAction()Lcom/miui/android/resourcebrowser/Resource;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    iput-boolean v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mFromFileExplorer:Z

    .line 71
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, resource:Lcom/miui/android/resourcebrowser/Resource;
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p0, v2, v11, v3}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lcom/miui/android/resourcebrowser/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v1

    .line 75
    .local v1, themeInfo:Lcom/android/thememanager/ThemeInfo;
    if-eqz v1, :cond_0

    .line 76
    iget-wide v2, v1, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->getResourceTypeFromFlags(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    .line 77
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.android.thememanager.extra_theme_apply_flags"

    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 78
    iget-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity;->mResourceType:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    iget-wide v4, v1, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p0, v2, v11, v3}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lcom/miui/android/resourcebrowser/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v1

    .line 80
    new-instance v0, Lcom/miui/android/resourcebrowser/Resource;

    .end local v0           #resource:Lcom/miui/android/resourcebrowser/Resource;
    invoke-direct {v0}, Lcom/miui/android/resourcebrowser/Resource;-><init>()V

    .line 81
    .restart local v0       #resource:Lcom/miui/android/resourcebrowser/Resource;
    invoke-virtual {v1}, Lcom/android/thememanager/ThemeInfo;->getInformation()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/android/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 85
    :cond_0
    if-nez v0, :cond_1

    .line 86
    const v2, 0x7f070032

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 88
    :cond_1
    return-object v0
.end method

.method protected setApplyStatus(Z)V
    .locals 1
    .parameter "showDeleted"

    .prologue
    const/4 v0, 0x1

    .line 253
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->setApplyStatus(Z)V

    .line 254
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentGridViewClickable(Z)V

    .line 255
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentTitleEnable(Z)V

    .line 256
    return-void
.end method

.method protected setDownloadStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-super {p0}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->setDownloadStatus()V

    .line 226
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentGridViewClickable(Z)V

    .line 227
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentTitleEnable(Z)V

    .line 228
    return-void
.end method

.method protected setDownloadingStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-super {p0}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->setDownloadingStatus()V

    .line 240
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentGridViewClickable(Z)V

    .line 241
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentTitleEnable(Z)V

    .line 242
    return-void
.end method

.method protected setPickStatus(Z)V
    .locals 1
    .parameter "showDeleted"

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->setPickStatus(Z)V

    .line 247
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentGridViewClickable(Z)V

    .line 248
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentTitleEnable(Z)V

    .line 249
    return-void
.end method

.method protected setUpdateStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-super {p0}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;->setUpdateStatus()V

    .line 233
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentGridViewClickable(Z)V

    .line 234
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->setComponentTitleEnable(Z)V

    .line 235
    return-void
.end method

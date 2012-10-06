.class public Lcom/android/thememanager/WallpaperPreference;
.super Landroid/preference/Preference;
.source "WallpaperPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesktopMask:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mLockScreenMask:Landroid/graphics/drawable/Drawable;

.field private mNonePreviewImage:Landroid/graphics/drawable/Drawable;

.field private mRequestCode:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperType:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/thememanager/WallpaperPreference;->setLayoutResource(I)V

    .line 46
    const v1, 0x109006c

    invoke-virtual {p0, v1}, Lcom/android/thememanager/WallpaperPreference;->setWidgetLayoutResource(I)V

    .line 47
    iput-object p1, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    .line 48
    const-string v1, "wallpaper"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 49
    sget-object v1, Lcom/android/thememanager/R$styleable;->WallpaperPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mLockScreenMask:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mDesktopMask:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mNonePreviewImage:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mLockScreenMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWidth:I

    .line 57
    iget-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mLockScreenMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/thememanager/WallpaperPreference;->mHeight:I

    .line 58
    return-void
.end method

.method private getFirstLiveWallpapersThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 181
    iget-object v5, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 183
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.service.wallpaper.WallpaperService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 186
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Lcom/android/thememanager/WallpaperPreference$1;

    invoke-direct {v5, p0, v4}, Lcom/android/thememanager/WallpaperPreference$1;-><init>(Lcom/android/thememanager/WallpaperPreference;Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, info:Landroid/app/WallpaperInfo;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 202
    :try_start_0
    new-instance v2, Landroid/app/WallpaperInfo;

    iget-object v5, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v5, p0}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #info:Landroid/app/WallpaperInfo;
    .local v2, info:Landroid/app/WallpaperInfo;
    move-object v1, v2

    .line 208
    .end local v2           #info:Landroid/app/WallpaperInfo;
    .restart local v1       #info:Landroid/app/WallpaperInfo;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1
    return-object v5

    .line 203
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 204
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getFirstStaticWallpapersThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 165
    const-string v1, "/system/media/wallpaper"

    .line 166
    .local v1, systemWallpaperDirPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 168
    :cond_0
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    .line 169
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 173
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 177
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getFirstWallpapersThumbnail(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "type"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, ret:Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperPreference;->getFirstStaticWallpapersThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperPreference;->getFirstLiveWallpapersThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected createWallpaperIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    if-nez v1, :cond_1

    .line 123
    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    iget v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 125
    const-string v1, "android.intent.action.SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/thememanager/WallpaperPreference;->mRequestCode:I

    if-ne p1, v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperPreference;->notifyChanged()V

    .line 145
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 137
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 138
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/WallpaperPreference;->mRequestCode:I

    .line 139
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 63
    const v6, 0x7f06000c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    .local v1, bottomImage:Landroid/widget/ImageView;
    const v6, 0x7f06000d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 65
    .local v3, topImage:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p0, Lcom/android/thememanager/WallpaperPreference;->mWidth:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p0, Lcom/android/thememanager/WallpaperPreference;->mHeight:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    iget v6, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 71
    iget-object v6, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLockScreen()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 73
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :goto_0
    iget-object v6, p0, Lcom/android/thememanager/WallpaperPreference;->mLockScreenMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 75
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const v6, 0x1080184

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v6, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v5

    .line 80
    .local v5, wpi:Landroid/app/WallpaperInfo;
    const/4 v2, 0x0

    .line 82
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 83
    .local v4, usedBySystem:Z
    iget v6, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    if-nez v6, :cond_5

    .line 84
    if-nez v5, :cond_2

    .line 85
    iget-object v6, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 86
    iget-object v6, p0, Lcom/android/thememanager/WallpaperPreference;->mDesktopMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    const/4 v4, 0x1

    .line 97
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 98
    iget v6, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    invoke-direct {p0, v6}, Lcom/android/thememanager/WallpaperPreference;->getFirstWallpapersThumbnail(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 100
    :cond_3
    if-nez v2, :cond_4

    .line 101
    iget-object v2, p0, Lcom/android/thememanager/WallpaperPreference;->mNonePreviewImage:Landroid/graphics/drawable/Drawable;

    .line 104
    :cond_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 90
    :cond_5
    if-eqz v5, :cond_2

    .line 91
    iget-object v6, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 92
    iget-object v6, p0, Lcom/android/thememanager/WallpaperPreference;->mDesktopMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    const/4 v4, 0x1

    goto :goto_2
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperPreference;->createWallpaperIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    if-ne v1, v2, :cond_0

    .line 112
    const-string v1, "com.android.wallpaper.livepicker"

    const-string v2, "com.android.wallpaper.livepicker.LiveWallpaperListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/thememanager/WallpaperPreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    return-void

    .line 114
    :cond_0
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.ThemeResourceTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

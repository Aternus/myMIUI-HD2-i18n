.class public Lcom/android/browser/controller/FavoriteItem;
.super Ljava/lang/Object;
.source "FavoriteItem.java"


# instance fields
.field public _favicon:Landroid/graphics/Bitmap;

.field public _folderFlag:I

.field public _folderId:I

.field public _id:I

.field public _isFolder:Z

.field public _isModified:Z

.field public _mode:I

.field public _position:F

.field public _title:Ljava/lang/String;

.field public _touchicon:Landroid/graphics/Bitmap;

.field public _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "folderId"
    .parameter "mode"
    .parameter "folderFlag"
    .parameter "position"
    .parameter "isFolder"
    .parameter "favicon"
    .parameter "touchicon"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/browser/controller/FavoriteItem;->_id:I

    .line 22
    iput p2, p0, Lcom/android/browser/controller/FavoriteItem;->_folderId:I

    .line 23
    iput p3, p0, Lcom/android/browser/controller/FavoriteItem;->_mode:I

    .line 24
    iput p4, p0, Lcom/android/browser/controller/FavoriteItem;->_folderFlag:I

    .line 25
    iput p5, p0, Lcom/android/browser/controller/FavoriteItem;->_position:F

    .line 26
    iput-boolean p6, p0, Lcom/android/browser/controller/FavoriteItem;->_isFolder:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/controller/FavoriteItem;->_isModified:Z

    .line 28
    iput-object p7, p0, Lcom/android/browser/controller/FavoriteItem;->_favicon:Landroid/graphics/Bitmap;

    .line 29
    iput-object p8, p0, Lcom/android/browser/controller/FavoriteItem;->_touchicon:Landroid/graphics/Bitmap;

    .line 30
    iput-object p9, p0, Lcom/android/browser/controller/FavoriteItem;->_title:Ljava/lang/String;

    .line 31
    iput-object p10, p0, Lcom/android/browser/controller/FavoriteItem;->_url:Ljava/lang/String;

    .line 32
    return-void
.end method

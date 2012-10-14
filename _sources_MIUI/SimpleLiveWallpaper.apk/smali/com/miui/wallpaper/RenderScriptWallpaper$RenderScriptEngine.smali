.class Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/wallpaper/RenderScriptWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mRenderer:Lcom/miui/wallpaper/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRs:Landroid/renderscript/RenderScriptGL;

.field final synthetic this$0:Lcom/miui/wallpaper/RenderScriptWallpaper;


# direct methods
.method private constructor <init>(Lcom/miui/wallpaper/RenderScriptWallpaper;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iput-object p1, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/miui/wallpaper/RenderScriptWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/wallpaper/RenderScriptWallpaper;Lcom/miui/wallpaper/RenderScriptWallpaper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-direct {p0, p1}, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;-><init>(Lcom/miui/wallpaper/RenderScriptWallpaper;)V

    return-void
.end method

.method private destroyRenderer()V
    .locals 2

    .prologue
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/miui/wallpaper/RenderScriptScene;->stop()V

    .line 58
    iput-object v1, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 62
    iput-object v1, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 7
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 120
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/wallpaper/RenderScriptScene;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 40
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->setTouchEventsEnabled(Z)V

    .line 42
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 44
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/miui/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v0}, Lcom/miui/wallpaper/RenderScriptWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 51
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 52
    invoke-direct {p0}, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 53
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 96
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/miui/wallpaper/RenderScriptScene;->setOffset(FFII)V

    .line 97
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 80
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 81
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Landroid/renderscript/RenderScriptGL;->contextSetSurface(IILandroid/view/Surface;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/miui/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v0, p3, p4}, Lcom/miui/wallpaper/RenderScriptWallpaper;->createScene(II)Lcom/miui/wallpaper/RenderScriptScene;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    .line 86
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    iget-object v1, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/miui/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v2}, Lcom/miui/wallpaper/RenderScriptWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->isPreview()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/wallpaper/RenderScriptScene;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V

    .line 87
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/miui/wallpaper/RenderScriptScene;->start()V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    invoke-virtual {v0, p3, p4}, Lcom/miui/wallpaper/RenderScriptScene;->resize(II)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, surface:Landroid/view/Surface;
    :goto_0
    if-nez v0, :cond_0

    .line 105
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v2, v2}, Landroid/renderscript/RenderScriptGL;-><init>(ZZ)V

    iput-object v1, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 108
    iget-object v1, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->contextSetPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 109
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 113
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 114
    invoke-direct {p0}, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 115
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 68
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 69
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/miui/wallpaper/RenderScriptScene;->start()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/miui/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/miui/wallpaper/RenderScriptScene;->stop()V

    goto :goto_0
.end method

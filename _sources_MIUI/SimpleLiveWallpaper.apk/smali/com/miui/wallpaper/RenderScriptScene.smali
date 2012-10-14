.class public abstract Lcom/miui/wallpaper/RenderScriptScene;
.super Ljava/lang/Object;
.source "RenderScriptScene.java"


# instance fields
.field protected mHeight:I

.field protected mPreview:Z

.field protected mRS:Landroid/renderscript/RenderScriptGL;

.field protected mResources:Landroid/content/res/Resources;

.field protected mScript:Landroid/renderscript/ScriptC;

.field protected mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mWidth:I

    .line 35
    iput p2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mHeight:I

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract createScript()Landroid/renderscript/ScriptC;
.end method

.method public init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V
    .locals 1
    .parameter "rs"
    .parameter "res"
    .parameter "isPreview"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 40
    iput-object p2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    .line 41
    iput-boolean p3, p0, Lcom/miui/wallpaper/RenderScriptScene;->mPreview:Z

    .line 42
    invoke-virtual {p0}, Lcom/miui/wallpaper/RenderScriptScene;->createScript()Landroid/renderscript/ScriptC;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/wallpaper/RenderScriptScene;->mScript:Landroid/renderscript/ScriptC;

    .line 43
    return-void
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/miui/wallpaper/RenderScriptScene;->mPreview:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public resize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 80
    iput p1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mWidth:I

    .line 81
    iput p2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mHeight:I

    .line 82
    return-void
.end method

.method public setOffset(FFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 86
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mScript:Landroid/renderscript/ScriptC;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->contextBindRootScript(Landroid/renderscript/Script;)V

    .line 77
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->contextBindRootScript(Landroid/renderscript/Script;)V

    .line 73
    return-void
.end method

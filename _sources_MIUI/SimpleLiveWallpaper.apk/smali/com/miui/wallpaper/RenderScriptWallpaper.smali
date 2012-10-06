.class public abstract Lcom/miui/wallpaper/RenderScriptWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/wallpaper/RenderScriptWallpaper$1;,
        Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/wallpaper/RenderScriptScene;",
        ">",
        "Landroid/service/wallpaper/WallpaperService;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>;"
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract createScene(II)Lcom/miui/wallpaper/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    .prologue
    .line 29
    .local p0, this:Lcom/miui/wallpaper/RenderScriptWallpaper;,"Lcom/miui/wallpaper/RenderScriptWallpaper<TT;>;"
    new-instance v0, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/wallpaper/RenderScriptWallpaper$RenderScriptEngine;-><init>(Lcom/miui/wallpaper/RenderScriptWallpaper;Lcom/miui/wallpaper/RenderScriptWallpaper$1;)V

    return-object v0
.end method

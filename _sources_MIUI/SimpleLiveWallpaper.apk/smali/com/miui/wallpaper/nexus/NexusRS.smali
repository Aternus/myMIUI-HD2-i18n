.class Lcom/miui/wallpaper/nexus/NexusRS;
.super Lcom/miui/wallpaper/RenderScriptScene;
.source "NexusRS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/wallpaper/nexus/NexusRS$CommandState;,
        Lcom/miui/wallpaper/nexus/NexusRS$WorldState;
    }
.end annotation


# instance fields
.field private mClampSampler:Landroid/renderscript/Sampler;

.field private mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

.field private mCommandAllocation:Landroid/renderscript/Allocation;

.field private mCommandType:Landroid/renderscript/Type;

.field private final mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

.field private mPfColor:Landroid/renderscript/ProgramFragment;

.field private mPfTexture:Landroid/renderscript/ProgramFragment;

.field private mPfTexture565:Landroid/renderscript/ProgramFragment;

.field private mPsBlend:Landroid/renderscript/ProgramStore;

.field private mPsSolid:Landroid/renderscript/ProgramStore;

.field private mPvOrtho:Landroid/renderscript/ProgramVertex;

.field private mPvOrthoAlloc:Landroid/renderscript/ProgramVertex$MatrixAllocation;

.field private mState:Landroid/renderscript/Allocation;

.field private mStateType:Landroid/renderscript/Type;

.field private mTextures:[Landroid/renderscript/Allocation;

.field private mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

.field private mWrapSampler:Landroid/renderscript/Sampler;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/miui/wallpaper/RenderScriptScene;-><init>(II)V

    .line 56
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/renderscript/Allocation;

    iput-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mTextures:[Landroid/renderscript/Allocation;

    .line 91
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 92
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 93
    return-void
.end method

.method private createProgramFragment()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 219
    new-instance v1, Landroid/renderscript/Sampler$Builder;

    iget-object v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v2}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 220
    .local v1, sampleBuilder:Landroid/renderscript/Sampler$Builder;
    sget-object v2, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setMin(Landroid/renderscript/Sampler$Value;)V

    .line 221
    sget-object v2, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setMag(Landroid/renderscript/Sampler$Value;)V

    .line 222
    sget-object v2, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 223
    sget-object v2, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 224
    invoke-virtual {v1}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWrapSampler:Landroid/renderscript/Sampler;

    .line 225
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 226
    .local v0, builder:Landroid/renderscript/ProgramFragment$Builder;
    sget-object v2, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    sget-object v3, Landroid/renderscript/ProgramFragment$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragment$Builder$Format;

    invoke-virtual {v0, v2, v3, v4}, Landroid/renderscript/ProgramFragment$Builder;->setTexture(Landroid/renderscript/ProgramFragment$Builder$EnvMode;Landroid/renderscript/ProgramFragment$Builder$Format;I)V

    .line 228
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPfTexture:Landroid/renderscript/ProgramFragment;

    .line 229
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPfTexture:Landroid/renderscript/ProgramFragment;

    const-string v3, "PFTexture"

    invoke-virtual {v2, v3}, Landroid/renderscript/ProgramFragment;->setName(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPfTexture:Landroid/renderscript/ProgramFragment;

    iget-object v3, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWrapSampler:Landroid/renderscript/Sampler;

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 232
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 233
    .restart local v0       #builder:Landroid/renderscript/ProgramFragment$Builder;
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPfColor:Landroid/renderscript/ProgramFragment;

    .line 234
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPfColor:Landroid/renderscript/ProgramFragment;

    const-string v3, "PFColor"

    invoke-virtual {v2, v3}, Landroid/renderscript/ProgramFragment;->setName(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPfColor:Landroid/renderscript/ProgramFragment;

    iget-object v3, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWrapSampler:Landroid/renderscript/Sampler;

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 238
    sget-object v2, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 239
    sget-object v2, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    invoke-virtual {v1, v2}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 240
    invoke-virtual {v1}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mClampSampler:Landroid/renderscript/Sampler;

    .line 241
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v2}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 242
    .restart local v0       #builder:Landroid/renderscript/ProgramFragment$Builder;
    sget-object v2, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    sget-object v3, Landroid/renderscript/ProgramFragment$Builder$Format;->RGB:Landroid/renderscript/ProgramFragment$Builder$Format;

    invoke-virtual {v0, v2, v3, v4}, Landroid/renderscript/ProgramFragment$Builder;->setTexture(Landroid/renderscript/ProgramFragment$Builder$EnvMode;Landroid/renderscript/ProgramFragment$Builder$Format;I)V

    .line 244
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPfTexture565:Landroid/renderscript/ProgramFragment;

    .line 245
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPfTexture565:Landroid/renderscript/ProgramFragment;

    const-string v3, "PFTextureBG"

    invoke-virtual {v2, v3}, Landroid/renderscript/ProgramFragment;->setName(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPfTexture565:Landroid/renderscript/ProgramFragment;

    iget-object v3, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mClampSampler:Landroid/renderscript/Sampler;

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 247
    return-void
.end method

.method private createProgramFragmentStore()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 250
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    iget-object v1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;Landroid/renderscript/Element;)V

    .line 251
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)V

    .line 252
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)V

    .line 253
    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnable(Z)V

    .line 254
    invoke-virtual {v0, v5}, Landroid/renderscript/ProgramStore$Builder;->setDepthMask(Z)V

    .line 255
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPsSolid:Landroid/renderscript/ProgramStore;

    .line 256
    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPsSolid:Landroid/renderscript/ProgramStore;

    const-string v2, "PSSolid"

    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramStore;->setName(Ljava/lang/String;)V

    .line 258
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    .end local v0           #builder:Landroid/renderscript/ProgramStore$Builder;
    iget-object v1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;Landroid/renderscript/Element;)V

    .line 259
    .restart local v0       #builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)V

    .line 261
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)V

    .line 263
    invoke-virtual {v0, v4}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnable(Z)V

    .line 264
    invoke-virtual {v0, v5}, Landroid/renderscript/ProgramStore$Builder;->setDepthMask(Z)V

    .line 265
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPsBlend:Landroid/renderscript/ProgramStore;

    .line 266
    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPsBlend:Landroid/renderscript/ProgramStore;

    const-string v2, "PSBlend"

    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramStore;->setName(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private createProgramVertex()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    new-instance v1, Landroid/renderscript/ProgramVertex$MatrixAllocation;

    iget-object v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v2}, Landroid/renderscript/ProgramVertex$MatrixAllocation;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertex$MatrixAllocation;

    .line 271
    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertex$MatrixAllocation;

    iget v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mWidth:I

    iget v3, p0, Lcom/miui/wallpaper/RenderScriptScene;->mHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/ProgramVertex$MatrixAllocation;->setupOrthoWindow(II)V

    .line 273
    new-instance v0, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;Landroid/renderscript/Element;)V

    .line 274
    .local v0, pvb:Landroid/renderscript/ProgramVertex$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertex$Builder;->setTextureMatrixEnable(Z)V

    .line 275
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPvOrtho:Landroid/renderscript/ProgramVertex;

    .line 276
    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPvOrtho:Landroid/renderscript/ProgramVertex;

    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertex$MatrixAllocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramVertex;->bindAllocation(Landroid/renderscript/ProgramVertex$MatrixAllocation;)V

    .line 277
    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPvOrtho:Landroid/renderscript/ProgramVertex;

    const-string v2, "PVOrtho"

    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramVertex;->setName(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method private createState()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    new-instance v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    invoke-direct {v0}, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;-><init>()V

    iput-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    .line 166
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iget v1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mWidth:I

    iput v1, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->width:I

    .line 167
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iget v1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mHeight:I

    iput v1, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->height:I

    .line 168
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iget v1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mWidth:I

    iget v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mHeight:I

    if-le v1, v2, :cond_0

    move v1, v4

    :goto_0
    iput v1, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->rotate:I

    .line 169
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    invoke-virtual {p0}, Lcom/miui/wallpaper/nexus/NexusRS;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    iput v1, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->isPreview:I

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iget-object v1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->mode:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_2
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    const-class v1, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    const-string v2, "WorldState"

    invoke-static {v0, v1, v4, v2}, Landroid/renderscript/Type;->createFromClass(Landroid/renderscript/RenderScript;Ljava/lang/Class;ILjava/lang/String;)Landroid/renderscript/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mStateType:Landroid/renderscript/Type;

    .line 178
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mStateType:Landroid/renderscript/Type;

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mState:Landroid/renderscript/Allocation;

    .line 179
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mState:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->data(Ljava/lang/Object;)V

    .line 181
    new-instance v0, Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    invoke-direct {v0}, Lcom/miui/wallpaper/nexus/NexusRS$CommandState;-><init>()V

    iput-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    .line 182
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    iput v5, v0, Lcom/miui/wallpaper/nexus/NexusRS$CommandState;->x:I

    .line 183
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    iput v5, v0, Lcom/miui/wallpaper/nexus/NexusRS$CommandState;->y:I

    .line 184
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    iput v3, v0, Lcom/miui/wallpaper/nexus/NexusRS$CommandState;->command:I

    .line 186
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    const-class v1, Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    const-string v2, "DropState"

    invoke-static {v0, v1, v4, v2}, Landroid/renderscript/Type;->createFromClass(Landroid/renderscript/RenderScript;Ljava/lang/Class;ILjava/lang/String;)Landroid/renderscript/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommandType:Landroid/renderscript/Type;

    .line 187
    iget-object v0, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommandType:Landroid/renderscript/Type;

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommandAllocation:Landroid/renderscript/Allocation;

    .line 188
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommandAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->data(Ljava/lang/Object;)V

    .line 189
    return-void

    :cond_0
    move v1, v3

    .line 168
    goto :goto_0

    :cond_1
    move v1, v3

    .line 169
    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iput v3, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->mode:I

    goto :goto_2
.end method

.method private loadTextureARGB(ILjava/lang/String;)Landroid/renderscript/Allocation;
    .locals 5
    .parameter "id"
    .parameter "name"

    .prologue
    .line 211
    iget-object v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mOptionsARGB:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 212
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Element;Z)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 213
    .local v0, allocation:Landroid/renderscript/Allocation;
    invoke-virtual {v0, p2}, Landroid/renderscript/Allocation;->setName(Ljava/lang/String;)V

    .line 214
    return-object v0
.end method

.method private loadTextures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 192
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mTextures:[Landroid/renderscript/Allocation;

    const v3, 0x7f020011

    const-string v4, "TBackground"

    invoke-direct {p0, v3, v4}, Lcom/miui/wallpaper/nexus/NexusRS;->loadTextureARGB(ILjava/lang/String;)Landroid/renderscript/Allocation;

    move-result-object v3

    aput-object v3, v2, v6

    .line 193
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v3, 0x1

    const v4, 0x7f02000f

    const-string v5, "TPulse"

    invoke-direct {p0, v4, v5}, Lcom/miui/wallpaper/nexus/NexusRS;->loadTextureARGB(ILjava/lang/String;)Landroid/renderscript/Allocation;

    move-result-object v4

    aput-object v4, v2, v3

    .line 194
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v3, 0x2

    const v4, 0x7f020010

    const-string v5, "TPulseVert"

    invoke-direct {p0, v4, v5}, Lcom/miui/wallpaper/nexus/NexusRS;->loadTextureARGB(ILjava/lang/String;)Landroid/renderscript/Allocation;

    move-result-object v4

    aput-object v4, v2, v3

    .line 195
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mTextures:[Landroid/renderscript/Allocation;

    const/4 v3, 0x3

    const v4, 0x7f020002

    const-string v5, "TGlow"

    invoke-direct {p0, v4, v5}, Lcom/miui/wallpaper/nexus/NexusRS;->loadTextureARGB(ILjava/lang/String;)Landroid/renderscript/Allocation;

    move-result-object v4

    aput-object v4, v2, v3

    .line 197
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mTextures:[Landroid/renderscript/Allocation;

    array-length v0, v2

    .line 198
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mTextures:[Landroid/renderscript/Allocation;

    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Landroid/renderscript/Allocation;->uploadToTexture(I)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method private sendCommand(III)V
    .locals 2
    .parameter "command"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    iput p2, v0, Lcom/miui/wallpaper/nexus/NexusRS$CommandState;->x:I

    .line 305
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    iput p3, v0, Lcom/miui/wallpaper/nexus/NexusRS$CommandState;->y:I

    .line 306
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    iput p1, v0, Lcom/miui/wallpaper/nexus/NexusRS$CommandState;->command:I

    .line 307
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommandAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommand:Lcom/miui/wallpaper/nexus/NexusRS$CommandState;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->data(Ljava/lang/Object;)V

    .line 308
    return-void
.end method


# virtual methods
.method protected createScript()Landroid/renderscript/ScriptC;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    invoke-direct {p0}, Lcom/miui/wallpaper/nexus/NexusRS;->createProgramVertex()V

    .line 123
    invoke-direct {p0}, Lcom/miui/wallpaper/nexus/NexusRS;->createProgramFragmentStore()V

    .line 124
    invoke-direct {p0}, Lcom/miui/wallpaper/nexus/NexusRS;->createProgramFragment()V

    .line 125
    invoke-direct {p0}, Lcom/miui/wallpaper/nexus/NexusRS;->createState()V

    .line 126
    invoke-direct {p0}, Lcom/miui/wallpaper/nexus/NexusRS;->loadTextures()V

    .line 128
    new-instance v1, Landroid/renderscript/ScriptC$Builder;

    iget-object v3, p0, Lcom/miui/wallpaper/RenderScriptScene;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v3}, Landroid/renderscript/ScriptC$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 129
    .local v1, sb:Landroid/renderscript/ScriptC$Builder;
    iget-object v3, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mStateType:Landroid/renderscript/Type;

    const-string v4, "State"

    invoke-virtual {v1, v3, v4, v7}, Landroid/renderscript/ScriptC$Builder;->setType(Landroid/renderscript/Type;Ljava/lang/String;I)V

    .line 130
    iget-object v3, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommandType:Landroid/renderscript/Type;

    const-string v4, "Command"

    invoke-virtual {v1, v3, v4, v6}, Landroid/renderscript/ScriptC$Builder;->setType(Landroid/renderscript/Type;Ljava/lang/String;I)V

    .line 131
    iget-object v3, p0, Lcom/miui/wallpaper/RenderScriptScene;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f040004

    invoke-virtual {v1, v3, v4}, Landroid/renderscript/ScriptC$Builder;->setScript(Landroid/content/res/Resources;I)V

    .line 132
    const-string v3, "initPulses"

    invoke-virtual {v1, v3}, Landroid/renderscript/ScriptC$Builder;->addInvokable(Ljava/lang/String;)Landroid/renderscript/Script$Invokable;

    move-result-object v0

    .line 133
    .local v0, invokable:Landroid/renderscript/Script$Invokable;
    invoke-virtual {v1, v6}, Landroid/renderscript/ScriptC$Builder;->setRoot(Z)V

    .line 135
    invoke-virtual {v1}, Landroid/renderscript/ScriptC$Builder;->create()Landroid/renderscript/ScriptC;

    move-result-object v2

    .line 136
    .local v2, script:Landroid/renderscript/ScriptC;
    const/high16 v3, 0x3f80

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/renderscript/ScriptC;->setClearColor(FFFF)V

    .line 137
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptC;->setTimeZone(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mState:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3, v7}, Landroid/renderscript/ScriptC;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 140
    iget-object v3, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mCommandAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3, v6}, Landroid/renderscript/ScriptC;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 142
    invoke-virtual {v0}, Landroid/renderscript/Script$Invokable;->execute()V

    .line 144
    return-object v2
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 5
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 284
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iget v1, v2, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->width:I

    .line 285
    .local v1, dw:I
    const/16 v0, 0x3c0

    .line 286
    .local v0, bw:I
    iget-object v2, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iget v2, v2, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->rotate:I

    if-nez v2, :cond_0

    .line 288
    int-to-float v2, p2

    iget-object v3, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iget v3, v3, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->xOffset:F

    const/16 v4, 0x3c0

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int p2, v2

    .line 295
    :cond_0
    const-string v2, "android.wallpaper.tap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    const/4 v2, 0x1

    invoke-direct {p0, v2, p2, p3}, Lcom/miui/wallpaper/nexus/NexusRS;->sendCommand(III)V

    .line 300
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 297
    :cond_2
    const-string v2, "android.home.drop"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2, p3}, Lcom/miui/wallpaper/nexus/NexusRS;->sendCommand(III)V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/miui/wallpaper/RenderScriptScene;->resize(II)V

    .line 112
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iput p1, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->width:I

    .line 113
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iput p2, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->height:I

    .line 114
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    if-le p1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->rotate:I

    .line 115
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mState:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->data(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mPvOrthoAlloc:Landroid/renderscript/ProgramVertex$MatrixAllocation;

    iget v1, p0, Lcom/miui/wallpaper/RenderScriptScene;->mWidth:I

    iget v2, p0, Lcom/miui/wallpaper/RenderScriptScene;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramVertex$MatrixAllocation;->setupOrthoWindow(II)V

    .line 118
    return-void

    .line 114
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOffset(FFII)V
    .locals 2
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    iput p1, v0, Lcom/miui/wallpaper/nexus/NexusRS$WorldState;->xOffset:F

    .line 98
    iget-object v0, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mState:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/miui/wallpaper/nexus/NexusRS;->mWorldState:Lcom/miui/wallpaper/nexus/NexusRS$WorldState;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->data(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/miui/wallpaper/RenderScriptScene;->start()V

    .line 104
    return-void
.end method

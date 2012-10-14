.class Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;
.super Ljava/lang/Object;
.source "MusicPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryArgs"
.end annotation


# instance fields
.field public orderBy:Ljava/lang/String;

.field public projection:[Ljava/lang/String;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field final synthetic this$1:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->this$1:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

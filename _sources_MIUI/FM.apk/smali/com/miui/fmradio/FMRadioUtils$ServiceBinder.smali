.class Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "FMRadioUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 115
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 118
    invoke-static {p2}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/fmradio/IFMRadioPlayerService;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    .line 119
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 128
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/fmradio/FMRadioUtils;->sService:Lcom/miui/fmradio/IFMRadioPlayerService;

    .line 129
    return-void
.end method

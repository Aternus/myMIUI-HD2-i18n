.class public interface abstract Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;
.super Ljava/lang/Object;
.source "FMRadioPlayer.java"

# interfaces
.implements Lcom/miui/fmradio/FMRadioPlayer$FMRadioPlayerOPT;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCommandCompleteListener"
.end annotation


# static fields
.field public static final FM_STATUS_FAILED:I = 0x1

.field public static final FM_STATUS_SEEK_REACH_BAND_LIMITE:I = 0x2

.field public static final FM_STATUS_SEEK_STOPPED:I = 0x3

.field public static final FM_STATUS_SUCCESS:I


# virtual methods
.method public abstract onCommandComplete(IILjava/lang/Object;)V
.end method

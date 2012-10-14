.class Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowInfo"
.end annotation


# instance fields
.field final mData:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput p1, p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    .line 283
    iput p2, p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    .line 284
    return-void
.end method

.class Lcom/android/calendar/CalendarApplication$Screen;
.super Ljava/lang/Object;
.source "CalendarApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Screen"
.end annotation


# instance fields
.field public id:I

.field public next:Lcom/android/calendar/CalendarApplication$Screen;

.field public previous:Lcom/android/calendar/CalendarApplication$Screen;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/calendar/CalendarApplication$Screen;->id:I

    .line 42
    iput-object p0, p0, Lcom/android/calendar/CalendarApplication$Screen;->next:Lcom/android/calendar/CalendarApplication$Screen;

    .line 43
    iput-object p0, p0, Lcom/android/calendar/CalendarApplication$Screen;->previous:Lcom/android/calendar/CalendarApplication$Screen;

    .line 44
    return-void
.end method


# virtual methods
.method public insert(Lcom/android/calendar/CalendarApplication$Screen;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication$Screen;->next:Lcom/android/calendar/CalendarApplication$Screen;

    iput-object v0, p1, Lcom/android/calendar/CalendarApplication$Screen;->next:Lcom/android/calendar/CalendarApplication$Screen;

    .line 49
    iput-object p0, p1, Lcom/android/calendar/CalendarApplication$Screen;->previous:Lcom/android/calendar/CalendarApplication$Screen;

    .line 50
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication$Screen;->next:Lcom/android/calendar/CalendarApplication$Screen;

    iput-object p1, v0, Lcom/android/calendar/CalendarApplication$Screen;->previous:Lcom/android/calendar/CalendarApplication$Screen;

    .line 51
    iput-object p1, p0, Lcom/android/calendar/CalendarApplication$Screen;->next:Lcom/android/calendar/CalendarApplication$Screen;

    .line 52
    return-void
.end method

.method public unlink()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication$Screen;->next:Lcom/android/calendar/CalendarApplication$Screen;

    iget-object v1, p0, Lcom/android/calendar/CalendarApplication$Screen;->previous:Lcom/android/calendar/CalendarApplication$Screen;

    iput-object v1, v0, Lcom/android/calendar/CalendarApplication$Screen;->previous:Lcom/android/calendar/CalendarApplication$Screen;

    .line 57
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication$Screen;->previous:Lcom/android/calendar/CalendarApplication$Screen;

    iget-object v1, p0, Lcom/android/calendar/CalendarApplication$Screen;->next:Lcom/android/calendar/CalendarApplication$Screen;

    iput-object v1, v0, Lcom/android/calendar/CalendarApplication$Screen;->next:Lcom/android/calendar/CalendarApplication$Screen;

    .line 58
    return-void
.end method

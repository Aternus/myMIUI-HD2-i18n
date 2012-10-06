.class public Lcom/android/calendar/CalendarApplication;
.super Landroid/app/Application;
.source "CalendarApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarApplication$Screen;
    }
.end annotation


# static fields
.field public static final ACTIVITY_NAMES:[Ljava/lang/String; = null

.field public static final AGENDA_VIEW_ID:I = 0x3

.field public static final DAY_VIEW_ID:I = 0x2

.field public static final MONTH_VIEW_ID:I = 0x0

.field public static final WEEK_VIEW_ID:I = 0x1


# instance fields
.field public currentEvent:Lcom/android/calendar/Event;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/calendar/WeekActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/calendar/DayActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarApplication;->currentEvent:Lcom/android/calendar/Event;

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 81
    invoke-static {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->setDefaultValues(Landroid/content/Context;)V

    .line 82
    return-void
.end method

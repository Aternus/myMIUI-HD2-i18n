.class Lcom/android/calendar/EventInfoActivity$Attendee;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attendee"
.end annotation


# instance fields
.field mEmail:Ljava/lang/String;

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "email"

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    .line 502
    iput-object p2, p0, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    .line 503
    return-void
.end method

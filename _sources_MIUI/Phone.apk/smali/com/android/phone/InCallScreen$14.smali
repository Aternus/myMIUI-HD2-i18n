.class Lcom/android/phone/InCallScreen$14;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Lcom/android/phone/StorageMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->startCallRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 3314
    iput-object p1, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->stopCallRecord(I)V
    invoke-static {v0, p1}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;I)V

    .line 3318
    return-void
.end method

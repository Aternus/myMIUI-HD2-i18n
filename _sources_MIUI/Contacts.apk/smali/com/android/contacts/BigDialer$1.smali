.class Lcom/android/contacts/BigDialer$1;
.super Ljava/lang/Object;
.source "BigDialer.java"

# interfaces
.implements Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/BigDialer;->queryLastOutgoingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/BigDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/BigDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/contacts/BigDialer$1;->this$0:Lcom/android/contacts/BigDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lastOutgoingCall(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/contacts/BigDialer$1;->this$0:Lcom/android/contacts/BigDialer;

    #setter for: Lcom/android/contacts/BigDialer;->mLastNumberDialed:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/contacts/BigDialer;->access$002(Lcom/android/contacts/BigDialer;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    iget-object v0, p0, Lcom/android/contacts/BigDialer$1;->this$0:Lcom/android/contacts/BigDialer;

    #calls: Lcom/android/contacts/BigDialer;->updateDialAndDeleteButtonEnabledState()V
    invoke-static {v0}, Lcom/android/contacts/BigDialer;->access$100(Lcom/android/contacts/BigDialer;)V

    .line 727
    return-void
.end method

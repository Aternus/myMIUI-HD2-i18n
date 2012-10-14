.class Lcom/android/phone/CallCard$2;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTickForCallTimeElapsed(J)V
    .locals 1
    .parameter "timeElapsed"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mSecondaryElapsedTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    #calls: Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Landroid/widget/TextView;J)V
    invoke-static {v0, p1, p2}, Lcom/android/phone/CallCard;->access$100(Landroid/widget/TextView;J)V

    .line 166
    return-void
.end method

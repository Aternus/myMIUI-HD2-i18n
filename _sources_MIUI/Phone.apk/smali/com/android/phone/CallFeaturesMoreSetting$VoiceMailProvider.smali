.class Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "CallFeaturesMoreSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesMoreSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CallFeaturesMoreSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallFeaturesMoreSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;->this$0:Lcom/android/phone/CallFeaturesMoreSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 202
    iput-object p3, p0, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    .line 203
    return-void
.end method

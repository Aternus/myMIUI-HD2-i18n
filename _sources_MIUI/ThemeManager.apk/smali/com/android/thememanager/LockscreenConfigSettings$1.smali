.class Lcom/android/thememanager/LockscreenConfigSettings$1;
.super Ljava/lang/Object;
.source "LockscreenConfigSettings.java"

# interfaces
.implements Lcom/android/thememanager/LockscreenConfigSettings$XmlUtils$TraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/LockscreenConfigSettings;->createPreferenceScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;

.field final synthetic val$rootScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$1;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    iput-object p2, p0, Lcom/android/thememanager/LockscreenConfigSettings$1;->val$rootScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$1;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$1;->val$rootScreen:Landroid/preference/PreferenceScreen;

    #calls: Lcom/android/thememanager/LockscreenConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    invoke-static {v0, v1, p1}, Lcom/android/thememanager/LockscreenConfigSettings;->access$000(Lcom/android/thememanager/LockscreenConfigSettings;Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V

    .line 162
    return-void
.end method

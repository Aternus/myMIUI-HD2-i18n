.class Lcom/android/settings/AccessibilitySettings$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->handleEnableAccessibilityStateChange(Landroid/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    #calls: Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/AccessibilitySettings;->access$000(Lcom/android/settings/AccessibilitySettings;Z)V

    .line 228
    return-void
.end method

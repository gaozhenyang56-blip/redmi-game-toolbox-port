.class Lcom/miui/permcenter/DebugSettingsAcitivty$DebugSettingsFragment$a$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/DebugSettingsAcitivty$DebugSettingsFragment$a;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/DebugSettingsAcitivty$DebugSettingsFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/DebugSettingsAcitivty$DebugSettingsFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/DebugSettingsAcitivty$DebugSettingsFragment$a$a;->a:Lcom/miui/permcenter/DebugSettingsAcitivty$DebugSettingsFragment$a;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

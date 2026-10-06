.class Lcom/google/android/material/badge/BadgeUtils$4;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/badge/BadgeUtils;->detachBadgeContentDescription(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lc0/k;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lc0/k;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lc0/k;->r0(Ljava/lang/CharSequence;)V

    return-void
.end method

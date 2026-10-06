.class Lc0/o$b;
.super Lc0/o$a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lc0/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lc0/o$a;-><init>(Lc0/o;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lc0/o$a;->a:Lc0/o;

    invoke-static {p2}, Lc0/k;->U0(Landroid/view/accessibility/AccessibilityNodeInfo;)Lc0/k;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lc0/o;->a(ILc0/k;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

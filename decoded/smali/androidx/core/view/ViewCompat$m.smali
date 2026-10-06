.class Landroidx/core/view/ViewCompat$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# direct methods
.method static a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0}, Landroidx/core/view/g2;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0}, Landroidx/core/view/e2;->a(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/view/View;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/view/c2;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static/range {p0 .. p6}, Landroidx/core/view/h2;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    return-void
.end method

.method static e(Landroid/view/View;Le0/a;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/view/d2;->a(Landroid/view/View;Landroid/view/contentcapture/ContentCaptureSession;)V

    return-void
.end method

.method static f(Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/view/f2;->a(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

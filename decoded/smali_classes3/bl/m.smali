.class public Lbl/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lbl/o;Landroid/graphics/Point;)V
    .locals 0

    invoke-static {p1, p0, p2}, Ldl/a;->b(Lbl/o;Landroid/content/Context;Landroid/graphics/Point;)Lbl/o;

    iget p0, p1, Lbl/o;->g:I

    invoke-static {p0}, Lbl/m;->b(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->a(Lbl/o;Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public static b(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

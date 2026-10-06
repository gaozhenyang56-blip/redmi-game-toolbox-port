.class Lmiuix/bottomsheet/BottomSheetBehavior$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object v0

    invoke-static {p0}, Lbl/c;->g(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x258

    if-lt p0, v3, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_3

    iget p0, v0, Lbl/o;->g:I

    const/16 v3, 0x2003

    if-ne p0, v3, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lbl/m;->b(I)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    iget-object p0, v0, Lbl/o;->d:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->y:I

    const/16 v3, 0x2eb

    if-lt v0, v3, :cond_3

    iget p0, p0, Landroid/graphics/Point;->x:I

    const/16 v0, 0x29e

    if-le p0, v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

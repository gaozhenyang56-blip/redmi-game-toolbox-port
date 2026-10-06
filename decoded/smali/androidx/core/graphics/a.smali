.class public Landroidx/core/graphics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/a$a;
    }
.end annotation


# direct methods
.method public static a(ILandroidx/core/graphics/b;)Landroid/graphics/ColorFilter;
    .locals 3
    .param p1    # Landroidx/core/graphics/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    invoke-static {p1}, Landroidx/core/graphics/c$b;->a(Landroidx/core/graphics/b;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroidx/core/graphics/a$a;->a(ILjava/lang/Object;)Landroid/graphics/ColorFilter;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroidx/core/graphics/c;->a(Landroidx/core/graphics/b;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-object v1
.end method

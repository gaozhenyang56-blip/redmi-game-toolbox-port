.class public La8/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ZLandroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "gb_handsfree"

    invoke-static {p1, v2, v0, v1}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    :cond_1
    invoke-static {p0}, Lm6/a;->j0(Z)V

    return-void
.end method

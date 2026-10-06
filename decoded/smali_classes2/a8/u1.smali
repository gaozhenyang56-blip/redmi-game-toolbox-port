.class public La8/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "gb_function_user_auto_bright"

    if-eqz p1, :cond_0

    invoke-static {p0}, La8/u1;->a(Landroid/content/Context;)I

    move-result p1

    invoke-static {v1, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-static {p0, v0}, La8/u1;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, La8/u1;->a(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v1, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, La8/u1;->b(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

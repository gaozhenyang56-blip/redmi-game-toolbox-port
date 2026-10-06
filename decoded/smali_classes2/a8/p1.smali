.class public La8/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string v0, "gamebooster_data_migration"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string v0, "gamebooster_remove_desktop_icon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p2}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p0, p2}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/ContentResolver;Z)V
    .locals 1

    const-string v0, "gamebooster_data_migration"

    invoke-static {p0, v0, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static e(Landroid/content/ContentResolver;Z)V
    .locals 1

    const-string v0, "gamebooster_remove_desktop_icon"

    invoke-static {p0, v0, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.class public Lcom/miui/permcenter/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lcom/miui/permcenter/o;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_invisible_mode_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Lx4/z1;->m(I)I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    const/16 v3, 0x3e7

    if-ne v1, v3, :cond_2

    invoke-static {}, Lx4/z1;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "persist.sys.invisible_mode"

    invoke-static {v3, v1}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-static {p0, v2}, Lcom/miui/permcenter/service/InvisibleModeService$a;->b(Landroid/content/Context;Z)V

    :cond_2
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lcom/miui/permcenter/o;->m:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_invisible_mode_state"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static c(J)Z
    .locals 2

    const-wide/16 v0, 0x1000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x20000

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Landroid/content/Context;Z)V
    .locals 1

    sget-boolean v0, Lcom/miui/permcenter/o;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_invisible_mode_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string p1, "persist.sys.invisible_mode"

    invoke-static {p1, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

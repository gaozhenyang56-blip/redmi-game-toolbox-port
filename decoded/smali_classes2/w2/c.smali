.class public final Lw2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.miui.customized.region"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp_sb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lw2/c;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-boolean v0, Lw2/c;->a:Z

    const-string v1, "virus_scan_install"

    invoke-static {p0, v1, v0}, Lam/b;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "virus_scan_install"

    invoke-static {p0, v0, p1}, Lam/b;->e(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

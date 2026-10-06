.class public Lzi/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lzi/g3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ERROR: Context cannot be null."

    :goto_0
    invoke-static {p0}, Lpi/c;->D(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lzi/h3;->a:Lzi/g3;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lzi/g3;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "ERROR: XMSF not configure the instance of LogAgent."

    goto :goto_0
.end method

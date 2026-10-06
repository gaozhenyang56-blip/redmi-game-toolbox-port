.class public Lzi/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzi/w1;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzi/w1;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lzi/u7;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lzi/u7;

    invoke-direct {v0}, Lzi/u7;-><init>()V

    const-string v1, "category_push_stat"

    invoke-virtual {v0, v1}, Lzi/u7;->z(Ljava/lang/String;)Lzi/u7;

    const-string v1, "push_sdk_stat_channel"

    invoke-virtual {v0, v1}, Lzi/u7;->f(Ljava/lang/String;)Lzi/u7;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lzi/u7;->e(J)Lzi/u7;

    invoke-virtual {v0, p1}, Lzi/u7;->q(Ljava/lang/String;)Lzi/u7;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lzi/u7;->h(Z)Lzi/u7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzi/u7;->o(J)Lzi/u7;

    invoke-static {p0}, Lzi/h1;->d(Landroid/content/Context;)Lzi/h1;

    move-result-object p0

    invoke-virtual {p0}, Lzi/h1;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lzi/u7;->G(Ljava/lang/String;)Lzi/u7;

    const-string p0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Lzi/u7;->C(Ljava/lang/String;)Lzi/u7;

    const-string p0, ""

    invoke-virtual {v0, p0}, Lzi/u7;->E(Ljava/lang/String;)Lzi/u7;

    const-string p0, "push_stat"

    invoke-virtual {v0, p0}, Lzi/u7;->v(Ljava/lang/String;)Lzi/u7;

    return-object v0
.end method

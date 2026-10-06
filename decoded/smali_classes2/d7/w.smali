.class public Ld7/w;
.super Ld7/v;
.source "SourceFile"


# static fields
.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ld7/w;->c:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/v;-><init>(I)V

    const/4 p1, 0x3

    iput p1, p0, Ld7/v;->b:I

    invoke-static {}, Lc7/c;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    iput p1, p0, Ld7/v;->b:I

    :cond_0
    return-void
.end method

.method private static f()Z
    .locals 8

    sget-boolean v0, Ln6/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    const-string v0, "pre_gb_line_guide_show_millis"

    invoke-static {v0, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ld7/w;->c:J

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "pre_performance_line_guide_shown"

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    sget-boolean v0, Ln6/a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Ld7/w;->f()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-static {}, Lh7/g;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ld7/w;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ld7/w;->h()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static h()Z
    .locals 3

    sget-boolean v0, Ln6/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "pre_gb_performance_guide_show_times"

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "pre_gb_performance_guide_shown"

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static i()V
    .locals 3

    sget-boolean v0, Ln6/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pre_gb_line_guide_show_millis"

    invoke-static {v2, v0, v1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "pre_performance_line_guide_shown"

    invoke-static {v1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static j()V
    .locals 3

    sget-boolean v0, Ln6/a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "pre_gb_performance_guide_show_times"

    invoke-static {v2, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "pre_gb_performance_guide_shown"

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Context;ZI)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ld7/v;->b(Landroid/content/Context;ZI)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ld7/w;->h()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected c()V
    .locals 0

    invoke-static {}, Ld7/w;->i()V

    return-void
.end method

.method protected d()V
    .locals 0

    invoke-static {}, Ld7/w;->j()V

    return-void
.end method

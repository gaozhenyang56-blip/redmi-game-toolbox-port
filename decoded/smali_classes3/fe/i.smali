.class public Lfe/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J = 0x2bf20L

.field private static b:J = 0x927c0L

.field private static c:J = 0x124f80L

.field private static d:J = 0xdbba0L

.field private static e:J = 0x1d4c0L

.field private static f:J = 0x1b7740L

.field private static g:J = 0x124f80L

.field private static h:J = 0x927c0L

.field private static i:J = 0x57e40L

.field private static j:J = 0x124f80L

.field private static k:J = 0x493e0L

.field private static l:J = 0x5265c0L

.field private static m:J = 0x107ac0L

.field private static n:J = 0x5265c0L

.field private static o:J = 0xea600L

.field private static p:J = 0xdbba0L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lfe/g;)I
    .locals 2

    iget-object p0, p0, Lfe/g;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;Lfe/g;)J
    .locals 4

    iget v0, p1, Lfe/g;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :pswitch_1
    sget-wide v0, Lfe/i;->p:J

    goto :goto_1

    :pswitch_2
    sget-wide v0, Lfe/i;->b:J

    goto :goto_1

    :pswitch_3
    sget-wide v0, Lfe/i;->o:J

    goto :goto_1

    :pswitch_4
    sget-wide v0, Lfe/i;->n:J

    goto :goto_1

    :pswitch_5
    sget-wide v0, Lfe/i;->m:J

    goto :goto_1

    :pswitch_6
    sget-wide v0, Lfe/i;->l:J

    goto :goto_1

    :pswitch_7
    sget-wide v0, Lfe/i;->k:J

    goto :goto_1

    :pswitch_8
    sget-wide v0, Lfe/i;->j:J

    goto :goto_1

    :pswitch_9
    sget-wide v0, Lfe/i;->i:J

    goto :goto_1

    :pswitch_a
    sget-wide v0, Lfe/i;->f:J

    goto :goto_1

    :pswitch_b
    sget-wide v0, Lfe/i;->c:J

    goto :goto_1

    :pswitch_c
    sget-wide v0, Lfe/i;->h:J

    goto :goto_1

    :pswitch_d
    sget-wide v0, Lfe/i;->g:J

    goto :goto_1

    :pswitch_e
    sget-wide v0, Lfe/i;->e:J

    goto :goto_0

    :pswitch_f
    sget-wide v0, Lfe/i;->d:J

    goto :goto_1

    :pswitch_10
    sget-wide v0, Lfe/i;->a:J

    :goto_0
    invoke-static {p1}, Lfe/i;->a(Lfe/g;)I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    :goto_1
    invoke-static {p0}, Lme/w;->j(Landroid/content/Context;)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x64

    div-long/2addr v0, p0

    const-wide/32 p0, 0xea60

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    move-wide v0, p0

    :cond_0
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public final Landroidx/core/text/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/j$e;,
        Landroidx/core/text/j$c;,
        Landroidx/core/text/j$b;,
        Landroidx/core/text/j$a;,
        Landroidx/core/text/j$f;,
        Landroidx/core/text/j$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/text/i;

.field public static final b:Landroidx/core/text/i;

.field public static final c:Landroidx/core/text/i;

.field public static final d:Landroidx/core/text/i;

.field public static final e:Landroidx/core/text/i;

.field public static final f:Landroidx/core/text/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/core/text/j$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/text/j$e;-><init>(Landroidx/core/text/j$c;Z)V

    sput-object v0, Landroidx/core/text/j;->a:Landroidx/core/text/i;

    new-instance v0, Landroidx/core/text/j$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/core/text/j$e;-><init>(Landroidx/core/text/j$c;Z)V

    sput-object v0, Landroidx/core/text/j;->b:Landroidx/core/text/i;

    new-instance v0, Landroidx/core/text/j$e;

    sget-object v1, Landroidx/core/text/j$b;->a:Landroidx/core/text/j$b;

    invoke-direct {v0, v1, v2}, Landroidx/core/text/j$e;-><init>(Landroidx/core/text/j$c;Z)V

    sput-object v0, Landroidx/core/text/j;->c:Landroidx/core/text/i;

    new-instance v0, Landroidx/core/text/j$e;

    invoke-direct {v0, v1, v3}, Landroidx/core/text/j$e;-><init>(Landroidx/core/text/j$c;Z)V

    sput-object v0, Landroidx/core/text/j;->d:Landroidx/core/text/i;

    new-instance v0, Landroidx/core/text/j$e;

    sget-object v1, Landroidx/core/text/j$a;->b:Landroidx/core/text/j$a;

    invoke-direct {v0, v1, v2}, Landroidx/core/text/j$e;-><init>(Landroidx/core/text/j$c;Z)V

    sput-object v0, Landroidx/core/text/j;->e:Landroidx/core/text/i;

    sget-object v0, Landroidx/core/text/j$f;->b:Landroidx/core/text/j$f;

    sput-object v0, Landroidx/core/text/j;->f:Landroidx/core/text/i;

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class public Lqk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lqk/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lvi/d;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Lqk/c;

    invoke-direct {v0}, Lqk/c;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lqk/b;

    invoke-direct {v0}, Lqk/b;-><init>()V

    :goto_0
    sput-object v0, Lqk/a;->a:Lqk/d;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 1

    sget-object v0, Lqk/a;->a:Lqk/d;

    invoke-interface {v0, p0, p1}, Lqk/d;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result p0

    return p0
.end method

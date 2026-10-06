.class public Lrk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:Lrk/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lvi/e;->a:I

    sput v0, Lrk/c;->a:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Lrk/e;

    invoke-direct {v0}, Lrk/e;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lrk/d;

    invoke-direct {v0}, Lrk/d;-><init>()V

    :goto_0
    sput-object v0, Lrk/c;->b:Lrk/b;

    return-void
.end method

.method public static a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lrk/c;->b:Lrk/b;

    invoke-interface {v0, p0, p1}, Lrk/b;->b(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lrk/c;->b:Lrk/b;

    invoke-interface {v0, p0, p1, p2}, Lrk/b;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

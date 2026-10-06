.class public abstract Lgi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lgi/a;

.field private static b:Lgi/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgi/a$a;

    invoke-direct {v0}, Lgi/a$a;-><init>()V

    sput-object v0, Lgi/a;->a:Lgi/a;

    sput-object v0, Lgi/a;->b:Lgi/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lgi/a;
    .locals 1

    sget-object v0, Lgi/a;->b:Lgi/a;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lgi/a;->a()Lgi/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lgi/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lgi/a;->a()Lgi/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lgi/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract b(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract c(Ljava/lang/String;Ljava/lang/String;)I
.end method

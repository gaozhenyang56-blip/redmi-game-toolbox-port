.class public final Lc3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc3/a;

    invoke-direct {v0}, Lc3/a;-><init>()V

    sput-object v0, Lc3/a;->a:Lc3/a;

    sget-object v0, Loj/j;->a:Loj/j;

    sget-object v1, Lc3/a$a;->a:Lc3/a$a;

    invoke-static {v0, v1}, Loj/g;->b(Loj/j;Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lc3/a;->b:Loj/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lrh/c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lc3/a;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-options>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lrh/c;

    return-object v0
.end method

.class public Lbk/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lbk/a0;

.field private static final b:[Lhk/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbk/a0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lbk/a0;

    invoke-direct {v0}, Lbk/a0;-><init>()V

    :goto_0
    sput-object v0, Lbk/z;->a:Lbk/a0;

    const/4 v0, 0x0

    new-array v0, v0, [Lhk/b;

    sput-object v0, Lbk/z;->b:[Lhk/b;

    return-void
.end method

.method public static a(Lbk/j;)Lhk/d;
    .locals 1

    sget-object v0, Lbk/z;->a:Lbk/a0;

    invoke-virtual {v0, p0}, Lbk/a0;->a(Lbk/j;)Lhk/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lhk/b;
    .locals 1

    sget-object v0, Lbk/z;->a:Lbk/a0;

    invoke-virtual {v0, p0}, Lbk/a0;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Lhk/c;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    sget-object v0, Lbk/z;->a:Lbk/a0;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lbk/a0;->c(Ljava/lang/Class;Ljava/lang/String;)Lhk/c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lbk/o;)Lhk/e;
    .locals 1

    sget-object v0, Lbk/z;->a:Lbk/a0;

    invoke-virtual {v0, p0}, Lbk/a0;->d(Lbk/o;)Lhk/e;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lbk/s;)Lhk/f;
    .locals 1

    sget-object v0, Lbk/z;->a:Lbk/a0;

    invoke-virtual {v0, p0}, Lbk/a0;->e(Lbk/s;)Lhk/f;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lbk/i;)Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    sget-object v0, Lbk/z;->a:Lbk/a0;

    invoke-virtual {v0, p0}, Lbk/a0;->f(Lbk/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lbk/n;)Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    sget-object v0, Lbk/z;->a:Lbk/a0;

    invoke-virtual {v0, p0}, Lbk/a0;->g(Lbk/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

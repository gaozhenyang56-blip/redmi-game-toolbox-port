.class public Lbk/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbk/j;)Lhk/d;
    .locals 0

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lhk/b;
    .locals 1

    new-instance v0, Lbk/e;

    invoke-direct {v0, p1}, Lbk/e;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Lhk/c;
    .locals 1

    new-instance v0, Lbk/r;

    invoke-direct {v0, p1, p2}, Lbk/r;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Lbk/o;)Lhk/e;
    .locals 0

    return-object p1
.end method

.method public e(Lbk/s;)Lhk/f;
    .locals 0

    return-object p1
.end method

.method public f(Lbk/i;)Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlin.jvm.functions."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public g(Lbk/n;)Ljava/lang/String;
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    invoke-virtual {p0, p1}, Lbk/a0;->f(Lbk/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

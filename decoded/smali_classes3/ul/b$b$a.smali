.class Lul/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltl/b$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lul/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lul/b$b;


# direct methods
.method private constructor <init>(Lul/b$b;)V
    .locals 0

    iput-object p1, p0, Lul/b$b$a;->a:Lul/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lul/b$b;Lul/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lul/b$b$a;-><init>(Lul/b$b;)V

    return-void
.end method


# virtual methods
.method public a(Ltl/b;FF)V
    .locals 3

    iget-object v0, p0, Lul/b$b$a;->a:Lul/b$b;

    iput p3, v0, Lul/b$b;->e:F

    iget v1, v0, Lul/b$b;->b:I

    float-to-int v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Lul/b$b;->f:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    iget-object p1, p0, Lul/b$b$a;->a:Lul/b$b;

    invoke-static {p1}, Lul/b$b;->a(Lul/b$b;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    iget-object p1, p0, Lul/b$b$a;->a:Lul/b$b;

    invoke-static {p1}, Lul/b$b;->b(Lul/b$b;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const-string p1, "%s updating value(%f), velocity(%f), min(%f), max(%f)"

    invoke-static {p1, v0}, Lul/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

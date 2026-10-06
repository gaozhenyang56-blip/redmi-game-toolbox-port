.class public Lzi/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static h:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lzi/g6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;Lzi/g6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lzi/g6;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lzi/c6;->s:Z

    iput-boolean v0, p0, Lzi/d6;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/d6;->e:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lzi/d6;->d(Ljava/util/Map;ILjava/lang/String;Lzi/g6;)V

    return-void
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzi/d6;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lzi/oa;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sandbox.xmpush.xiaomi.com"

    return-object v0

    :cond_1
    invoke-static {}, Lzi/oa;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "10.38.162.35"

    return-object v0

    :cond_2
    const-string v0, "app.chat.xiaomi.net"

    return-object v0
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lzi/oa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lzi/d6;->h:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/util/Map;ILjava/lang/String;Lzi/g6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lzi/g6;",
            ")V"
        }
    .end annotation

    iput p2, p0, Lzi/d6;->c:I

    iput-object p3, p0, Lzi/d6;->a:Ljava/lang/String;

    iput-object p4, p0, Lzi/d6;->g:Lzi/g6;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzi/d6;->c:I

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lzi/d6;->d:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lzi/d6;->d:Z

    return v0
.end method

.method public g()[B
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d6;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzi/d6;->f:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/d6;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lzi/d6;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzi/d6;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lzi/d6;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzi/d6;->b:Ljava/lang/String;

    return-void
.end method

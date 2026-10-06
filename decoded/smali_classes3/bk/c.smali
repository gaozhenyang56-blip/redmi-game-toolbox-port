.class public abstract Lbk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhk/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbk/c$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation
.end field


# instance fields
.field private transient a:Lhk/a;

.field protected final b:Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation
.end field

.field private final f:Z
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lbk/c$a;->a()Lbk/c$a;

    move-result-object v0

    sput-object v0, Lbk/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lbk/c;->g:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lbk/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbk/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbk/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lbk/c;->c:Ljava/lang/Class;

    iput-object p3, p0, Lbk/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lbk/c;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lbk/c;->f:Z

    return-void
.end method


# virtual methods
.method public c()Lhk/a;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    iget-object v0, p0, Lbk/c;->a:Lhk/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbk/c;->d()Lhk/a;

    move-result-object v0

    iput-object v0, p0, Lbk/c;->a:Lhk/a;

    :cond_0
    return-object v0
.end method

.method protected abstract d()Lhk/a;
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    iget-object v0, p0, Lbk/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Lhk/c;
    .locals 2

    iget-object v0, p0, Lbk/c;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lbk/c;->f:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lbk/z;->c(Ljava/lang/Class;)Lhk/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected g()Lhk/a;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    invoke-virtual {p0}, Lbk/c;->c()Lhk/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lzj/b;

    invoke-direct {v0}, Lzj/b;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbk/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbk/c;->e:Ljava/lang/String;

    return-object v0
.end method

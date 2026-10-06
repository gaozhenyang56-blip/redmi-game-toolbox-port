.class public Lzi/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzi/p6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi/a6$a;
    }
.end annotation


# static fields
.field public static g:Z


# instance fields
.field private a:Ljava/text/SimpleDateFormat;

.field private b:Lzi/c6;

.field private c:Lzi/a6$a;

.field private d:Lzi/a6$a;

.field private e:Lzi/f6;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lzi/c6;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lzi/a6;->a:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lzi/a6;->c:Lzi/a6$a;

    iput-object v0, p0, Lzi/a6;->d:Lzi/a6$a;

    iput-object v0, p0, Lzi/a6;->e:Lzi/f6;

    const-string v0, "[Slim] "

    iput-object v0, p0, Lzi/a6;->f:Ljava/lang/String;

    iput-object p1, p0, Lzi/a6;->b:Lzi/c6;

    invoke-direct {p0}, Lzi/a6;->d()V

    return-void
.end method

.method static synthetic a(Lzi/a6;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lzi/a6;->a:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic b(Lzi/a6;)Lzi/a6$a;
    .locals 0

    iget-object p0, p0, Lzi/a6;->c:Lzi/a6$a;

    return-object p0
.end method

.method static synthetic c(Lzi/a6;)Lzi/c6;
    .locals 0

    iget-object p0, p0, Lzi/a6;->b:Lzi/c6;

    return-object p0
.end method

.method private d()V
    .locals 2

    new-instance v0, Lzi/a6$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lzi/a6$a;-><init>(Lzi/a6;Z)V

    iput-object v0, p0, Lzi/a6;->c:Lzi/a6$a;

    new-instance v0, Lzi/a6$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzi/a6$a;-><init>(Lzi/a6;Z)V

    iput-object v0, p0, Lzi/a6;->d:Lzi/a6$a;

    iget-object v0, p0, Lzi/a6;->b:Lzi/c6;

    iget-object v1, p0, Lzi/a6;->c:Lzi/a6$a;

    invoke-virtual {v0, v1, v1}, Lzi/c6;->n(Lzi/h6;Lzi/q6;)V

    iget-object v0, p0, Lzi/a6;->b:Lzi/c6;

    iget-object v1, p0, Lzi/a6;->d:Lzi/a6$a;

    invoke-virtual {v0, v1, v1}, Lzi/c6;->z(Lzi/h6;Lzi/q6;)V

    new-instance v0, Lzi/b6;

    invoke-direct {v0, p0}, Lzi/b6;-><init>(Lzi/a6;)V

    iput-object v0, p0, Lzi/a6;->e:Lzi/f6;

    return-void
.end method

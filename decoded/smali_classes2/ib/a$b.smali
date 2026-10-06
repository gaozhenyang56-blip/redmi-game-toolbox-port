.class public Lib/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lib/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public A:Z

.field public final a:I

.field public final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lib/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lib/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:I

.field public r:I

.field public s:J

.field public t:J

.field public u:I

.field public v:I

.field public w:J

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method constructor <init>(IIZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lib/a$b;->a:I

    const-string v0, "stat"

    const-string v1, "task"

    const-string v2, "/proc"

    const/4 v3, 0x0

    if-gez p2, :cond_0

    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lib/a$b;->c:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v2, "cmdline"

    invoke-direct {v0, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lib/a$b;->d:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lib/a$b;->e:Ljava/lang/String;

    if-eqz p3, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lib/a$b;->f:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lib/a$b;->g:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/io/File;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lib/a$b;->c:Ljava/lang/String;

    iput-object v3, p0, Lib/a$b;->d:Ljava/lang/String;

    iput-object v3, p0, Lib/a$b;->e:Ljava/lang/String;

    :cond_1
    iput-object v3, p0, Lib/a$b;->f:Ljava/util/ArrayList;

    iput-object v3, p0, Lib/a$b;->g:Ljava/util/ArrayList;

    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-le p2, p3, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/proc/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/status"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lib/c;->c(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lib/a$b;->c:Ljava/lang/String;

    invoke-static {p1}, Lib/c;->a(Ljava/lang/String;)I

    move-result p1

    :goto_1
    iput p1, p0, Lib/a$b;->b:I

    return-void
.end method

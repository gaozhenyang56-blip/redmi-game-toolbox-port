.class Len/g$j$a;
.super Lzm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Len/g$j;->a(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Len/i;

.field final synthetic c:Len/g$j;


# direct methods
.method varargs constructor <init>(Len/g$j;Ljava/lang/String;[Ljava/lang/Object;Len/i;)V
    .locals 0

    iput-object p1, p0, Len/g$j$a;->c:Len/g$j;

    iput-object p4, p0, Len/g$j$a;->b:Len/i;

    invoke-direct {p0, p2, p3}, Lzm/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Len/g$j$a;->c:Len/g$j;

    iget-object v0, v0, Len/g$j;->c:Len/g;

    iget-object v0, v0, Len/g;->b:Len/g$h;

    iget-object v1, p0, Len/g$j$a;->b:Len/i;

    invoke-virtual {v0, v1}, Len/g$h;->b(Len/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Len/g$j$a;->c:Len/g$j;

    iget-object v4, v4, Len/g$j;->c:Len/g;

    iget-object v4, v4, Len/g;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lfn/f;->p(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Len/g$j$a;->b:Len/i;

    sget-object v1, Len/b;->c:Len/b;

    invoke-virtual {v0, v1}, Len/i;->f(Len/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.class Len/g$j$c;
.super Lzm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Len/g$j;->l(Len/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Len/m;

.field final synthetic c:Len/g$j;


# direct methods
.method varargs constructor <init>(Len/g$j;Ljava/lang/String;[Ljava/lang/Object;Len/m;)V
    .locals 0

    iput-object p1, p0, Len/g$j$c;->c:Len/g$j;

    iput-object p4, p0, Len/g$j$c;->b:Len/m;

    invoke-direct {p0, p2, p3}, Lzm/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Len/g$j$c;->c:Len/g$j;

    iget-object v0, v0, Len/g$j;->c:Len/g;

    iget-object v0, v0, Len/g;->r:Len/j;

    iget-object v1, p0, Len/g$j$c;->b:Len/m;

    invoke-virtual {v0, v1}, Len/j;->c(Len/m;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Len/g$j$c;->c:Len/g$j;

    iget-object v0, v0, Len/g$j;->c:Len/g;

    invoke-static {v0}, Len/g;->c(Len/g;)V

    :goto_0
    return-void
.end method
